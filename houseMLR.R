#Importing training dataset
training_dataset = read.csv('train.csv')
test_dataset = read.csv('test.csv')

#Encoding Categorical data for training set
training_dataset$MSZoning = factor(training_dataset$MSZoning,
                                   levels = c('RL', 'RM', 'C (all)	', 'FV', 'nan'),
                                   labels = c(1, 2, 3, 4, 5))
type.convert(training_dataset$LotFrontage, as.is = TRUE)
training_dataset$Street = factor(training_dataset$Street,
                                   levels = c('Pave', 'Grvl'),
                                   labels = c(1, 2))
training_dataset$Alley = factor(training_dataset$Alley,
                                   levels = c('Grvl', 'Pave'),
                                   labels = c(1, 2))
training_dataset$LotShape = factor(training_dataset$LotShape,
                                   levels = c('Reg', 'IR1', 'IR2', 'IR3'),
                                   labels = c(1, 2, 3, 4))
training_dataset$LandContour = factor(training_dataset$LandContour,
                                   levels = c('Lvl', 'Bnk', 'Low', 'HLS'),
                                   labels = c(1, 2, 3, 4))
training_dataset$Utilities = factor(training_dataset$Utilities,
                                   levels = c('AllPub', 'NoSeWa'),
                                   labels = c(1, 2))
training_dataset$LotConfig = factor(training_dataset$LotConfig,
                                    levels = c('Inside', 'FR2', 'Corner', 'CulDSac', 'FR3'),
                                    labels = c(1, 2, 3, 4, 5))
training_dataset$LandSlope = factor(training_dataset$LandSlope,
                                    levels = c('Gtl', 'Mod', 'Sev'),
                                    labels = c(1, 2, 3))
training_dataset$Neighborhood = factor(training_dataset$Neighborhood,
                                    levels = c('NAmes', 'CollgCr', 'Veenker', 'Crawfor', 'NoRidge', 'Mitchel', 'Somerst', 'NWAmes', 'OldTown', 
                                               'BrkSide', 'Sawyer', 'NridgHt', 'SawyerW', 'IDOTRR', 'MeadowV', 'Edwards', 'Timber', 'Gilbert', 
                                               'StoneBr', 'NWAmes', 'NPkVill', 'ClearCr', 'Blmngtn', 'BrDale', 'SWISU'),
                                    labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25))
training_dataset$Condition1 = factor(training_dataset$Condition1,
                                    levels = c('Norm', 'Feedr', 'PosN', 'Artery', 'RRAe', 'PosA', 'RRAn', 'RRNn', 'RRNe'),
                                    labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9))
training_dataset$Condition2 = factor(training_dataset$Condition2,
                                     levels = c('Norm', 'RRNn', 'Feedr', 'Artery', 'PosA', 'PosN', 'RRAn', 'RRAe'),
                                     labels = c(1, 2, 3, 4, 5, 6, 7, 8))
training_dataset$BldgType = factor(training_dataset$BldgType,
                                     levels = c('1Fam', 'TwnhsE', '2fmCon', 'Duplex', 'Twnhs'),
                                     labels = c(1, 2, 3, 4, 5))
training_dataset$HouseStyle = factor(training_dataset$HouseStyle,
                                   levels = c('1Story', '2Story', '1.5Fin', '1.5Unf', 'SFoyer', 'SLvl', '2.5Unf', '2.5Fin'),
                                   labels = c(1, 2, 3, 4, 5, 6, 7, 8))
training_dataset$RoofStyle = factor(training_dataset$RoofStyle,
                                     levels = c('Gable', 'Hip', 'Gambrel', 'Mansard', 'Flat', 'Shed'),
                                     labels = c(1, 2, 3, 4, 5, 6))
training_dataset$RoofMatl = factor(training_dataset$RoofMatl,
                                    levels = c('CompShg', 'WdShngl', 'Metal', 'WdShake', 'Membran', 'Tar&Grv', 'Roll', 'ClyTile'),
                                    labels = c(1, 2, 3, 4, 5, 6, 7, 8))
training_dataset$Exterior1st = factor(training_dataset$Exterior1st,
                                   levels = c('VinylSd', 'MetalSd', 'Wd Sdng', 'HdBoard', 'BrkFace', 'WdShing', 'CemntBd', 'Plywood', 'AsbShng', 
                                              'Stucco', 'BrkComm', 'AsphShn', 'Stone', 'ImStucc', 'CBlock'),
                                   labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 ))
training_dataset$Exterior2nd = factor(training_dataset$Exterior2nd,
                                      levels = c('VinylSd', 'MetalSd', 'Wd Shng', 'HdBoard', 'Plywood', 'Wd Sdng', 'CemntBd', 'BrkFace', 'AsbShng', 
                                                 'Stucco', 'Brk Cmn', 'AsphShn', 'Stone', 'ImStucc', 'CBlock', 'Other'),
                                      labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16))
training_dataset$MasVnrType = factor(training_dataset$MasVnrType,
                                      levels = c('BrkFace', 'None', 'Stone', 'BrkCmm', 'NA'),
                                      labels = c(1, 2, 3, 4, 5))
type.convert(training_dataset$MasVnrArea, as.is = TRUE)
training_dataset$ExterQual = factor(training_dataset$ExterQual,
                                     levels = c('Gd', 'TA', 'Ex', 'Fa'),
                                     labels = c(1, 2, 3, 4))
training_dataset$ExterCond = factor(training_dataset$ExterCond,
                                    levels = c('Gd', 'TA', 'Ex', 'Fa', 'Po'),
                                    labels = c(1, 2, 3, 4, 5))
training_dataset$Foundation = factor(training_dataset$Foundation,
                                    levels = c('PConc', 'CBlock', 'BrkTil', 'Wood', 'Slab', 'Stone'),
                                    labels = c(1, 2, 3, 4, 5, 6))
training_dataset$BsmtQual = factor(training_dataset$BsmtQual,
                                     levels = c('Gd', 'TA', 'Ex', 'NA', 'Fa'),
                                     labels = c(1, 2, 3, 4, 5))
training_dataset$BsmtCond = factor(training_dataset$BsmtCond,
                                   levels = c('Gd', 'TA', 'Ex', 'Po', 'Fa'),
                                   labels = c(1, 2, 3, 4, 5))
training_dataset$BsmtExposure = factor(training_dataset$BsmtExposure,
                                   levels = c('Gd', 'No', 'Mn', 'Av', 'NA'),
                                   labels = c(1, 2, 3, 4, 5))
training_dataset$BsmtFinType1 = factor(training_dataset$BsmtFinType1,
                                       levels = c('GLQ', 'ALQ', 'Unf', 'Rec', 'BLQ', 'NA', 'LwQ'),
                                       labels = c(1, 2, 3, 4, 5, 6, 7))
training_dataset$BsmtFinType2 = factor(training_dataset$BsmtFinType2,
                                       levels = c('GLQ', 'ALQ', 'Unf', 'Rec', 'BLQ', 'NA', 'LwQ'),
                                       labels = c(1, 2, 3, 4, 5, 6, 7))
training_dataset$Heating = factor(training_dataset$Heating,
                                       levels = c('GasA', 'GasW', 'Grav', 'Wall', 'OthW', 'Floor'),
                                       labels = c(1, 2, 3, 4, 5, 6))
training_dataset$HeatingQC = factor(training_dataset$HeatingQC,
                                  levels = c('Ex', 'Gd', 'TA', 'Fa', 'Po'),
                                  labels = c(1, 2, 3, 4, 5))
training_dataset$CentralAir = factor(training_dataset$CentralAir,
                                    levels = c('N', 'Y'),
                                    labels = c(1, 2))
training_dataset$Electrical = factor(training_dataset$Electrical,
                                  levels = c('SBrkr', 'FuseF', 'FuseA', 'FuseP', 'Mix', 'NA'),
                                  labels = c(1, 2, 3, 4, 5, 6))
training_dataset$KitchenQual = factor(training_dataset$KitchenQual,
                                    levels = c('Gd', 'TA', 'Ex', 'Fa'),
                                    labels = c(1, 2, 3, 4))
training_dataset$Functional = factor(training_dataset$Functional,
                                       levels = c('Typ', 'Min1', 'Maj1', 'Min2', 'Mod', 'Maj2', 'Sev'),
                                       labels = c(1, 2, 3, 4, 5, 6, 7))
training_dataset$FireplaceQu = factor(training_dataset$FireplaceQu,
                                     levels = c('NA', 'TA', 'Gd', 'Fa', 'Ex', 'Po'),
                                     labels = c(1, 2, 3, 4, 5, 6))
training_dataset$GarageType = factor(training_dataset$GarageType,
                                     levels = c('Attchd', 'Detchd', 'BuiltIn', 'CarPort', 'NA', 'Basment', '2Types'),
                                     labels = c(1, 2, 3, 4, 5, 6, 7))
type.convert(training_dataset$GarageYrBlt, as.is = TRUE)
training_dataset$GarageFinish = factor(training_dataset$GarageFinish,
                                      levels = c('RFn', 'Unf', 'Fin', 'NA'),
                                      labels = c(1, 2, 3, 4))
training_dataset$GarageQual = factor(training_dataset$GarageQual,
                                      levels = c('TA', 'Fa', 'Gd', 'NA', 'Ex', 'Po'),
                                      labels = c(1, 2, 3, 4, 5, 6))
training_dataset$GarageCond = factor(training_dataset$GarageCond,
                                     levels = c('TA', 'Fa', 'Gd', 'NA', 'Ex', 'Po'),
                                     labels = c(1, 2, 3, 4, 5, 6))
training_dataset$PavedDrive = factor(training_dataset$PavedDrive,
                                      levels = c('P', 'N', 'Y'),
                                      labels = c(1, 2, 3))
training_dataset$PoolQC = factor(training_dataset$PoolQC,
                                       levels = c('NA', 'Ex', 'Fa', 'Gd'),
                                       labels = c(1, 2, 3, 4))
training_dataset$Fence = factor(training_dataset$Fence,
                                    levels = c('NA', 'MnPrv', 'GdWo', 'GdPrv', 'MnWw'),
                                    labels = c(1, 2, 3, 4, 5))
training_dataset$MiscFeature = factor(training_dataset$MiscFeature,
                                levels = c('NA', 'Shed', 'Gar2', 'Othr', 'TenC'),
                                labels = c(1, 2, 3, 4, 5))
training_dataset$SaleType = factor(training_dataset$SaleType,
                                     levels = c('WD', 'New', 'COD', 'ConLD', 'ConLI', 'CWD', 'ConLw', 'Con', 'Oth'),
                                     labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9))
training_dataset$SaleCondition = factor(training_dataset$SaleCondition,
                                     levels = c('Normal', 'Abnormal', 'Partial', 'AdjLand', 'Alloca', 'Family'),
                                     labels = c(1, 2, 3, 4, 5, 6))

#Encoding categorical data for test set
test_dataset$MSZoning = factor(test_dataset$MSZoning,
                               levels = c('RL', 'RM', 'C (all)	', 'FV', 'nan'),
                               labels = c(1, 2, 3, 4, 5))
type.convert(test_dataset$LotFrontage, as.is = TRUE)
test_dataset$Street = factor(test_dataset$Street,
                             levels = c('Pave', 'Grvl'),
                             labels = c(1, 2))
test_dataset$Alley = factor(test_dataset$Alley,
                            levels = c('Grvl', 'Pave'),
                            labels = c(1, 2))
test_dataset$LotShape = factor(test_dataset$LotShape,
                               levels = c('Reg', 'IR1', 'IR2', 'IR3'),
                               labels = c(1, 2, 3, 4))
test_dataset$LandContour = factor(test_dataset$LandContour,
                                  levels = c('Lvl', 'Bnk', 'Low', 'HLS'),
                                  labels = c(1, 2, 3, 4))
test_dataset$Utilities = factor(test_dataset$Utilities,
                                levels = c('AllPub', 'NoSeWa'),
                                labels = c(1, 2))
test_dataset$LotConfig = factor(test_dataset$LotConfig,
                                levels = c('Inside', 'FR2', 'Corner', 'CulDSac', 'FR3'),
                                labels = c(1, 2, 3, 4, 5))
test_dataset$LandSlope = factor(test_dataset$LandSlope,
                                levels = c('Gtl', 'Mod', 'Sev'),
                                labels = c(1, 2, 3))
test_dataset$Neighborhood = factor(test_dataset$Neighborhood,
                                   levels = c('NAmes', 'CollgCr', 'Veenker', 'Crawfor', 'NoRidge', 'Mitchel', 'Somerst', 'NWAmes', 'OldTown', 
                                              'BrkSide', 'Sawyer', 'NridgHt', 'SawyerW', 'IDOTRR', 'MeadowV', 'Edwards', 'Timber', 'Gilbert', 
                                              'StoneBr', 'NWAmes', 'NPkVill', 'ClearCr', 'Blmngtn', 'BrDale', 'SWISU'),
                                   labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25))
test_dataset$Condition1 = factor(test_dataset$Condition1,
                                 levels = c('Norm', 'Feedr', 'PosN', 'Artery', 'RRAe', 'PosA', 'RRAn', 'RRNn', 'RRNe'),
                                 labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9))
test_dataset$Condition2 = factor(test_dataset$Condition2,
                                 levels = c('Norm', 'RRNn', 'Feedr', 'Artery', 'PosA', 'PosN', 'RRAn', 'RRAe'),
                                 labels = c(1, 2, 3, 4, 5, 6, 7, 8))
test_dataset$BldgType = factor(test_dataset$BldgType,
                               levels = c('1Fam', 'TwnhsE', '2fmCon', 'Duplex', 'Twnhs'),
                               labels = c(1, 2, 3, 4, 5))
test_dataset$HouseStyle = factor(test_dataset$HouseStyle,
                                 levels = c('1Story', '2Story', '1.5Fin', '1.5Unf', 'SFoyer', 'SLvl', '2.5Unf', '2.5Fin'),
                                 labels = c(1, 2, 3, 4, 5, 6, 7, 8))
test_dataset$RoofStyle = factor(test_dataset$RoofStyle,
                                levels = c('Gable', 'Hip', 'Gambrel', 'Mansard', 'Flat', 'Shed'),
                                labels = c(1, 2, 3, 4, 5, 6))
test_dataset$RoofMatl = factor(test_dataset$RoofMatl,
                               levels = c('CompShg', 'WdShngl', 'Metal', 'WdShake', 'Membran', 'Tar&Grv', 'Roll', 'ClyTile'),
                               labels = c(1, 2, 3, 4, 5, 6, 7, 8))
test_dataset$Exterior1st = factor(test_dataset$Exterior1st,
                                  levels = c('VinylSd', 'MetalSd', 'Wd Sdng', 'HdBoard', 'BrkFace', 'WdShing', 'CemntBd', 'Plywood', 'AsbShng', 
                                             'Stucco', 'BrkComm', 'AsphShn', 'Stone', 'ImStucc', 'CBlock'),
                                  labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 ))
test_dataset$Exterior2nd = factor(test_dataset$Exterior2nd,
                                  levels = c('VinylSd', 'MetalSd', 'Wd Shng', 'HdBoard', 'Plywood', 'Wd Sdng', 'CemntBd', 'BrkFace', 'AsbShng', 
                                             'Stucco', 'Brk Cmn', 'AsphShn', 'Stone', 'ImStucc', 'CBlock', 'Other'),
                                  labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16))
test_dataset$MasVnrType = factor(test_dataset$MasVnrType,
                                 levels = c('BrkFace', 'None', 'Stone', 'BrkCmm', 'NA'),
                                 labels = c(1, 2, 3, 4, 5))
type.convert(test_dataset$MasVnrArea, as.is = TRUE)
test_dataset$ExterQual = factor(test_dataset$ExterQual,
                                levels = c('Gd', 'TA', 'Ex', 'Fa'),
                                labels = c(1, 2, 3, 4))
test_dataset$ExterCond = factor(test_dataset$ExterCond,
                                levels = c('Gd', 'TA', 'Ex', 'Fa', 'Po'),
                                labels = c(1, 2, 3, 4, 5))
test_dataset$Foundation = factor(test_dataset$Foundation,
                                 levels = c('PConc', 'CBlock', 'BrkTil', 'Wood', 'Slab', 'Stone'),
                                 labels = c(1, 2, 3, 4, 5, 6))
test_dataset$BsmtQual = factor(test_dataset$BsmtQual,
                               levels = c('Gd', 'TA', 'Ex', 'NA', 'Fa'),
                               labels = c(1, 2, 3, 4, 5))
test_dataset$BsmtCond = factor(test_dataset$BsmtCond,
                               levels = c('Gd', 'TA', 'Ex', 'Po', 'Fa'),
                               labels = c(1, 2, 3, 4, 5))
test_dataset$BsmtExposure = factor(test_dataset$BsmtExposure,
                                   levels = c('Gd', 'No', 'Mn', 'Av', 'NA'),
                                   labels = c(1, 2, 3, 4, 5))
test_dataset$BsmtFinType1 = factor(test_dataset$BsmtFinType1,
                                   levels = c('GLQ', 'ALQ', 'Unf', 'Rec', 'BLQ', 'NA', 'LwQ'),
                                   labels = c(1, 2, 3, 4, 5, 6, 7))
test_dataset$BsmtFinType2 = factor(test_dataset$BsmtFinType2,
                                   levels = c('GLQ', 'ALQ', 'Unf', 'Rec', 'BLQ', 'NA', 'LwQ'),
                                   labels = c(1, 2, 3, 4, 5, 6, 7))
test_dataset$Heating = factor(test_dataset$Heating,
                              levels = c('GasA', 'GasW', 'Grav', 'Wall', 'OthW', 'Floor'),
                              labels = c(1, 2, 3, 4, 5, 6))
test_dataset$HeatingQC = factor(test_dataset$HeatingQC,
                                levels = c('Ex', 'Gd', 'TA', 'Fa', 'Po'),
                                labels = c(1, 2, 3, 4, 5))
test_dataset$CentralAir = factor(test_dataset$CentralAir,
                                 levels = c('N', 'Y'),
                                 labels = c(1, 2))
test_dataset$Electrical = factor(test_dataset$Electrical,
                                 levels = c('SBrkr', 'FuseF', 'FuseA', 'FuseP', 'Mix', 'NA'),
                                 labels = c(1, 2, 3, 4, 5, 6))
test_dataset$KitchenQual = factor(test_dataset$KitchenQual,
                                  levels = c('Gd', 'TA', 'Ex', 'Fa'),
                                  labels = c(1, 2, 3, 4))
test_dataset$Functional = factor(test_dataset$Functional,
                                 levels = c('Typ', 'Min1', 'Maj1', 'Min2', 'Mod', 'Maj2', 'Sev'),
                                 labels = c(1, 2, 3, 4, 5, 6, 7))
test_dataset$FireplaceQu = factor(test_dataset$FireplaceQu,
                                  levels = c('NA', 'TA', 'Gd', 'Fa', 'Ex', 'Po'),
                                  labels = c(1, 2, 3, 4, 5, 6))
test_dataset$GarageType = factor(test_dataset$GarageType,
                                 levels = c('Attchd', 'Detchd', 'BuiltIn', 'CarPort', 'NA', 'Basment', '2Types'),
                                 labels = c(1, 2, 3, 4, 5, 6, 7))
type.convert(test_dataset$GarageYrBlt, as.is = TRUE)
test_dataset$GarageFinish = factor(test_dataset$GarageFinish,
                                   levels = c('RFn', 'Unf', 'Fin', 'NA'),
                                   labels = c(1, 2, 3, 4))
test_dataset$GarageQual = factor(test_dataset$GarageQual,
                                 levels = c('TA', 'Fa', 'Gd', 'NA', 'Ex', 'Po'),
                                 labels = c(1, 2, 3, 4, 5, 6))
test_dataset$GarageCond = factor(test_dataset$GarageCond,
                                 levels = c('TA', 'Fa', 'Gd', 'NA', 'Ex', 'Po'),
                                 labels = c(1, 2, 3, 4, 5, 6))
test_dataset$PavedDrive = factor(test_dataset$PavedDrive,
                                 levels = c('P', 'N', 'Y'),
                                 labels = c(1, 2, 3))
test_dataset$PoolQC = factor(test_dataset$PoolQC,
                             levels = c('NA', 'Ex', 'Fa', 'Gd'),
                             labels = c(1, 2, 3, 4))
test_dataset$Fence = factor(test_dataset$Fence,
                            levels = c('NA', 'MnPrv', 'GdWo', 'GdPrv', 'MnWw'),
                            labels = c(1, 2, 3, 4, 5))
test_dataset$MiscFeature = factor(test_dataset$MiscFeature,
                                  levels = c('NA', 'Shed', 'Gar2', 'Othr', 'TenC'),
                                  labels = c(1, 2, 3, 4, 5))
test_dataset$SaleType = factor(test_dataset$SaleType,
                               levels = c('WD', 'New', 'COD', 'ConLD', 'ConLI', 'CWD', 'ConLw', 'Con', 'Oth'),
                               labels = c(1, 2, 3, 4, 5, 6, 7, 8, 9))
test_dataset$SaleCondition = factor(test_dataset$SaleCondition,
                                    levels = c('Normal', 'Abnormal', 'Partial', 'AdjLand', 'Alloca', 'Family'),
                                    labels = c(1, 2, 3, 4, 5, 6))

#Missing Data for training set
training_dataset$MSSubClass = ifelse(is.na(training_dataset$MSSubClass),
                     ave(training_datasetv$MSSubClass, FUN = function(x) mean(x, na.rm = TRUE)),
                     training_dataset$MSSubClass)
training_dataset$MSZoning = ifelse(is.na(training_dataset$MSZoning), 0, training_dataset$MSZoning)
training_dataset$LotFrontage = ifelse(is.na(training_dataset$LotFrontage),
                                     ave(training_dataset$LotFrontage, FUN = function(x) mean(x, na.rm = TRUE)),
                                     training_dataset$LotFrontage)
training_dataset$LotArea = ifelse(is.na(training_dataset$LotArea),
                                      ave(training_dataset$LotArea, FUN = function(x) mean(x, na.rm = TRUE)),
                                      training_dataset$LotArea)
training_dataset$Street = ifelse(is.na(training_dataset$Street), 0, training_dataset$Street)
training_dataset$Alley = ifelse(is.na(training_dataset$Alley), 0, training_dataset$Alley)
training_dataset$LotShape = ifelse(is.na(training_dataset$LotShape), 0, training_dataset$LotShape)
training_dataset$LandContour = ifelse(is.na(training_dataset$LandContour), 0, training_dataset$LandContour)
training_dataset$Utilities = ifelse(is.na(training_dataset$Utilities), 0, training_dataset$Utilities)
training_dataset$LotConfig = ifelse(is.na(training_dataset$LotConfig), 0, training_dataset$LotConfig)
training_dataset$LandSlope = ifelse(is.na(training_dataset$LandSlope), 0, training_dataset$LandSlope)
training_dataset$Neighborhood = ifelse(is.na(training_dataset$Neighborhood), 0, training_dataset$Neighborhood)
training_dataset$Condition1 = ifelse(is.na(training_dataset$Condition1), 0, training_dataset$Condition1)
training_dataset$Condition2 = ifelse(is.na(training_dataset$Condition2), 0, training_dataset$Condition2)
training_dataset$BldgType = ifelse(is.na(training_dataset$BldgType), 0, training_dataset$BldgType)
training_dataset$HouseStyle = ifelse(is.na(training_dataset$HouseStyle), 0, training_dataset$HouseStyle)
training_dataset$OverallQual = ifelse(is.na(training_dataset$OverallQual),
                                  ave(training_dataset$OverallQual, FUN = function(x) mean(x, na.rm = TRUE)),
                                  training_dataset$OverallQual)
training_dataset$OverallCond = ifelse(is.na(training_dataset$OverallCond),
                                      ave(training_dataset$OverallCond, FUN = function(x) mean(x, na.rm = TRUE)),
                                      training_dataset$OverallCond)
training_dataset$YearBuilt = ifelse(is.na(training_dataset$YearBuilt), 0, training_dataset$YearBuilt)
training_dataset$YearRemodAdd = ifelse(is.na(training_dataset$YearRemodAdd), 0, training_dataset$YearRemodAdd)
training_dataset$RoofStyle = ifelse(is.na(training_dataset$RoofStyle), 0, training_dataset$RoofStyle)
training_dataset$RoofMatl = ifelse(is.na(training_dataset$RoofMatl), 0, training_dataset$RoofMatl)
training_dataset$Exterior1st = ifelse(is.na(training_dataset$Exterior1st), 0, training_dataset$Exterior1st)
training_dataset$Exterior2nd = ifelse(is.na(training_dataset$Exterior2nd), 0, training_dataset$Exterior2nd)
training_dataset$MasVnrType = ifelse(is.na(training_dataset$MasVnrType), 0, training_dataset$MasVnrType)
training_dataset$MasVnrArea = ifelse(is.na(training_dataset$MasVnrArea), 0, training_dataset$MasVnrArea)
training_dataset$ExterQual = ifelse(is.na(training_dataset$ExterQual), 0, training_dataset$ExterQual)
training_dataset$ExterCond = ifelse(is.na(training_dataset$ExterCond), 0, training_dataset$ExterCond)
training_dataset$Foundation = ifelse(is.na(training_dataset$Foundation), 0, training_dataset$Foundation)
training_dataset$BsmtQual = ifelse(is.na(training_dataset$BsmtQual), 0, training_dataset$BsmtQual)
training_dataset$BsmtCond = ifelse(is.na(training_dataset$BsmtCond), 0, training_dataset$BsmtCond)
training_dataset$BsmtExposure = ifelse(is.na(training_dataset$BsmtExposure), 0, training_dataset$BsmtExposure)
training_dataset$BsmtFinType1 = ifelse(is.na(training_dataset$BsmtFinType1), 0, training_dataset$BsmtFinType1)
training_dataset$BsmtFinSF1 = ifelse(is.na(training_dataset$BsmtFinSF1), 0, training_dataset$BsmtFinSF1)
training_dataset$BsmtFinType2 = ifelse(is.na(training_dataset$BsmtFinType2), 0, training_dataset$BsmtFinType2)
training_dataset$BsmtFinSF2 = ifelse(is.na(training_dataset$BsmtFinSF2), 0, training_dataset$BsmtFinSF2)
training_dataset$BsmtUnfSF = ifelse(is.na(training_dataset$BsmtUnfSF), 0, training_dataset$BsmtUnfSF)
training_dataset$TotalBsmtSF = ifelse(is.na(training_dataset$TotalBsmtSF),
                                      ave(training_dataset$TotalBsmtSF, FUN = function(x) mean(x, na.rm = TRUE)),
                                      training_dataset$TotalBsmtSF)
training_dataset$Heating = ifelse(is.na(training_dataset$Heating), 0, training_dataset$Heating)
training_dataset$HeatingQC = ifelse(is.na(training_dataset$HeatingQC), 0, training_dataset$HeatingQC)
training_dataset$CentralAir = ifelse(is.na(training_dataset$CentralAir), 0, training_dataset$CentralAir)
training_dataset$Electrical = ifelse(is.na(training_dataset$Electrical), 0, training_dataset$Electrical)
training_dataset$X1stFlrSF = ifelse(is.na(training_dataset$X1stFlrSF),
                                      ave(training_dataset$X1stFlrSF, FUN = function(x) mean(x, na.rm = TRUE)),
                                      training_dataset$X1stFlrSF)
training_dataset$X2ndFlrSF = ifelse(is.na(training_dataset$X2ndFlrSF), 0, training_dataset$X2ndFlrSF)
training_dataset$LowQualFinSF = ifelse(is.na(training_dataset$LowQualFinSF), 0, training_dataset$LowQualFinSF)
training_dataset$GrLivArea = ifelse(is.na(training_dataset$GrLivArea),
                                    ave(training_dataset$GrLivArea, FUN = function(x) mean(x, na.rm = TRUE)),
                                    training_dataset$GrLivArea)
training_dataset$BsmtFullBath = ifelse(is.na(training_dataset$BsmtFullBath), 
                                       ave(training_dataset$BsmtFullBath, FUN = function(x) mean(x, na.rm = TRUE)), 
                                       training_dataset$BsmtFullBath)
training_dataset$BsmtHalfBath = ifelse(is.na(training_dataset$BsmtHalfBath), 
                                       ave(training_dataset$BsmtHalfBath, FUN = function(x) mean(x, na.rm = TRUE)), 
                                       training_dataset$BsmtHalfBath)
training_dataset$FullBath = ifelse(is.na(training_dataset$FullBath), 
                                       ave(training_dataset$FullBath, FUN = function(x) mean(x, na.rm = TRUE)), 
                                       training_dataset$FullBath)
training_dataset$HalfBath = ifelse(is.na(training_dataset$HalfBath), 
                                   ave(training_dataset$HalfBath, FUN = function(x) mean(x, na.rm = TRUE)), 
                                   training_dataset$HalfBath)
training_dataset$BedroomAbvGr = ifelse(is.na(training_dataset$BedroomAbvGr), 
                                   ave(training_dataset$BedroomAbvGr, FUN = function(x) mean(x, na.rm = TRUE)), 
                                   training_dataset$BedroomAbvGr)
training_dataset$KitchenAbvGr = ifelse(is.na(training_dataset$KitchenAbvGr), 
                                   ave(training_dataset$KitchenAbvGr, FUN = function(x) mean(x, na.rm = TRUE)), 
                                   training_dataset$KitchenAbvGr)
training_dataset$KitchenQual = ifelse(is.na(training_dataset$KitchenQual), 0, training_dataset$KitchenQual)
training_dataset$TotRmsAbvGrd = ifelse(is.na(training_dataset$TotRmsAbvGrd), 
                                       ave(training_dataset$TotRmsAbvGrd, FUN = function(x) mean(x, na.rm = TRUE)), 
                                       training_dataset$TotRmsAbvGrd)
training_dataset$Functional = ifelse(is.na(training_dataset$Functional), 0, training_dataset$Functional)
training_dataset$Fireplaces = ifelse(is.na(training_dataset$Fireplaces), 
                                       ave(training_dataset$Fireplaces, FUN = function(x) mean(x, na.rm = TRUE)), 
                                       training_dataset$Fireplaces)
training_dataset$FireplaceQu = ifelse(is.na(training_dataset$FireplaceQu), 0, training_dataset$FireplaceQu)
training_dataset$GarageType = ifelse(is.na(training_dataset$GarageType), 0, training_dataset$GarageType)
training_dataset$GarageYrBlt = ifelse(is.na(training_dataset$GarageYrBlt), 0, training_dataset$GarageYrBlt)
training_dataset$GarageFinish = ifelse(is.na(training_dataset$GarageFinish), 0, training_dataset$GarageFinish)
training_dataset$GarageCars = ifelse(is.na(training_dataset$GarageCars), 
                                     ave(training_dataset$GarageCars, FUN = function(x) mean(x, na.rm = TRUE)), 
                                     training_dataset$GarageCars)
training_dataset$GarageArea = ifelse(is.na(training_dataset$GarageArea), 
                                     ave(training_dataset$GarageArea, FUN = function(x) mean(x, na.rm = TRUE)), 
                                     training_dataset$GarageArea)
training_dataset$GarageQual = ifelse(is.na(training_dataset$GarageQual), 0, training_dataset$GarageQual)
training_dataset$GarageCond = ifelse(is.na(training_dataset$GarageCond), 0, training_dataset$GarageCond)
training_dataset$PavedDrive = ifelse(is.na(training_dataset$PavedDrive), 0, training_dataset$PavedDrive)
training_dataset$WoodDeckSF = ifelse(is.na(training_dataset$WoodDeckSF), 0, training_dataset$WoodDeckSF)
training_dataset$OpenPorchSF = ifelse(is.na(training_dataset$OpenPorchSF), 0, training_dataset$OpenPorchSF)
training_dataset$EnclosedPorch = ifelse(is.na(training_dataset$EnclosedPorch), 0, training_dataset$EnclosedPorch)
training_dataset$X3SsnPorch = ifelse(is.na(training_dataset$X3SsnPorch), 0, training_dataset$X3SsnPorch)
training_dataset$ScreenPorch = ifelse(is.na(training_dataset$ScreenPorch), 0, training_dataset$ScreenPorch)
training_dataset$PoolArea = ifelse(is.na(training_dataset$PoolArea), 0, training_dataset$PoolArea)
training_dataset$PoolQC = ifelse(is.na(training_dataset$PoolQC), 0, training_dataset$PoolQC)
training_dataset$Fence = ifelse(is.na(training_dataset$Fence), 0, training_dataset$Fence)
training_dataset$MiscFeature = ifelse(is.na(training_dataset$MiscFeature), 0, training_dataset$MiscFeature)
training_dataset$MiscVal = ifelse(is.na(training_dataset$MiscVal), 0, training_dataset$MiscVal)
training_dataset$MoSold = ifelse(is.na(training_dataset$MoSold), 0, training_dataset$MoSold)
training_dataset$YrSold = ifelse(is.na(training_dataset$YrSold), 0, training_dataset$YrSold)
training_dataset$SaleType = ifelse(is.na(training_dataset$SaleType), 0, training_dataset$SaleType)
training_dataset$SaleCondition = ifelse(is.na(training_dataset$SaleCondition), 0, training_dataset$SaleCondition)

#Missing Data for test set
test_dataset$MSSubClass = ifelse(is.na(test_dataset$MSSubClass),
                                 ave(test_datasetv$MSSubClass, FUN = function(x) mean(x, na.rm = TRUE)),
                                 test_dataset$MSSubClass)
test_dataset$MSZoning = ifelse(is.na(test_dataset$MSZoning), 0, test_dataset$MSZoning)
test_dataset$LotFrontage = ifelse(is.na(test_dataset$LotFrontage),
                                  ave(test_dataset$LotFrontage, FUN = function(x) mean(x, na.rm = TRUE)),
                                  test_dataset$LotFrontage)
test_dataset$LotArea = ifelse(is.na(test_dataset$LotArea),
                              ave(test_dataset$LotArea, FUN = function(x) mean(x, na.rm = TRUE)),
                              test_dataset$LotArea)
test_dataset$Street = ifelse(is.na(test_dataset$Street), 0, test_dataset$Street)
test_dataset$Alley = ifelse(is.na(test_dataset$Alley), 0, test_dataset$Alley)
test_dataset$LotShape = ifelse(is.na(test_dataset$LotShape), 0, test_dataset$LotShape)
test_dataset$LandContour = ifelse(is.na(test_dataset$LandContour), 0, test_dataset$LandContour)
test_dataset$Utilities = ifelse(is.na(test_dataset$Utilities), 0, test_dataset$Utilities)
test_dataset$LotConfig = ifelse(is.na(test_dataset$LotConfig), 0, test_dataset$LotConfig)
test_dataset$LandSlope = ifelse(is.na(test_dataset$LandSlope), 0, test_dataset$LandSlope)
test_dataset$Neighborhood = ifelse(is.na(test_dataset$Neighborhood), 0, test_dataset$Neighborhood)
test_dataset$Condition1 = ifelse(is.na(test_dataset$Condition1), 0, test_dataset$Condition1)
test_dataset$Condition2 = ifelse(is.na(test_dataset$Condition2), 0, test_dataset$Condition2)
test_dataset$BldgType = ifelse(is.na(test_dataset$BldgType), 0, test_dataset$BldgType)
test_dataset$HouseStyle = ifelse(is.na(test_dataset$HouseStyle), 0, test_dataset$HouseStyle)
test_dataset$OverallQual = ifelse(is.na(test_dataset$OverallQual),
                                  ave(test_dataset$OverallQual, FUN = function(x) mean(x, na.rm = TRUE)),
                                  test_dataset$OverallQual)
test_dataset$OverallCond = ifelse(is.na(test_dataset$OverallCond),
                                  ave(test_dataset$OverallCond, FUN = function(x) mean(x, na.rm = TRUE)),
                                  test_dataset$OverallCond)
test_dataset$YearBuilt = ifelse(is.na(test_dataset$YearBuilt), 0, test_dataset$YearBuilt)
test_dataset$YearRemodAdd = ifelse(is.na(test_dataset$YearRemodAdd), 0, test_dataset$YearRemodAdd)
test_dataset$RoofStyle = ifelse(is.na(test_dataset$RoofStyle), 0, test_dataset$RoofStyle)
test_dataset$RoofMatl = ifelse(is.na(test_dataset$RoofMatl), 0, test_dataset$RoofMatl)
test_dataset$Exterior1st = ifelse(is.na(test_dataset$Exterior1st), 0, test_dataset$Exterior1st)
test_dataset$Exterior2nd = ifelse(is.na(test_dataset$Exterior2nd), 0, test_dataset$Exterior2nd)
test_dataset$MasVnrType = ifelse(is.na(test_dataset$MasVnrType), 0, test_dataset$MasVnrType)
test_dataset$MasVnrArea = ifelse(is.na(test_dataset$MasVnrArea), 0, test_dataset$MasVnrArea)
test_dataset$ExterQual = ifelse(is.na(test_dataset$ExterQual), 0, test_dataset$ExterQual)
test_dataset$ExterCond = ifelse(is.na(test_dataset$ExterCond), 0, test_dataset$ExterCond)
test_dataset$Foundation = ifelse(is.na(test_dataset$Foundation), 0, test_dataset$Foundation)
test_dataset$BsmtQual = ifelse(is.na(test_dataset$BsmtQual), 0, test_dataset$BsmtQual)
test_dataset$BsmtCond = ifelse(is.na(test_dataset$BsmtCond), 0, test_dataset$BsmtCond)
test_dataset$BsmtExposure = ifelse(is.na(test_dataset$BsmtExposure), 0, test_dataset$BsmtExposure)
test_dataset$BsmtFinType1 = ifelse(is.na(test_dataset$BsmtFinType1), 0, test_dataset$BsmtFinType1)
test_dataset$BsmtFinSF1 = ifelse(is.na(test_dataset$BsmtFinSF1), 0, test_dataset$BsmtFinSF1)
test_dataset$BsmtFinType2 = ifelse(is.na(test_dataset$BsmtFinType2), 0, test_dataset$BsmtFinType2)
test_dataset$BsmtFinSF2 = ifelse(is.na(test_dataset$BsmtFinSF2), 0, test_dataset$BsmtFinSF2)
test_dataset$BsmtUnfSF = ifelse(is.na(test_dataset$BsmtUnfSF), 0, test_dataset$BsmtUnfSF)
test_dataset$TotalBsmtSF = ifelse(is.na(test_dataset$TotalBsmtSF),
                                  ave(test_dataset$TotalBsmtSF, FUN = function(x) mean(x, na.rm = TRUE)),
                                  test_dataset$TotalBsmtSF)
test_dataset$Heating = ifelse(is.na(test_dataset$Heating), 0, test_dataset$Heating)
test_dataset$HeatingQC = ifelse(is.na(test_dataset$HeatingQC), 0, test_dataset$HeatingQC)
test_dataset$CentralAir = ifelse(is.na(test_dataset$CentralAir), 0, test_dataset$CentralAir)
test_dataset$Electrical = ifelse(is.na(test_dataset$Electrical), 0, test_dataset$Electrical)
test_dataset$X1stFlrSF = ifelse(is.na(test_dataset$X1stFlrSF),
                                ave(test_dataset$X1stFlrSF, FUN = function(x) mean(x, na.rm = TRUE)),
                                test_dataset$X1stFlrSF)
test_dataset$X2ndFlrSF = ifelse(is.na(test_dataset$X2ndFlrSF), 0, test_dataset$X2ndFlrSF)
test_dataset$LowQualFinSF = ifelse(is.na(test_dataset$LowQualFinSF), 0, test_dataset$LowQualFinSF)
test_dataset$GrLivArea = ifelse(is.na(test_dataset$GrLivArea),
                                ave(test_dataset$GrLivArea, FUN = function(x) mean(x, na.rm = TRUE)),
                                test_dataset$GrLivArea)
test_dataset$BsmtFullBath = ifelse(is.na(test_dataset$BsmtFullBath), 
                                   ave(test_dataset$BsmtFullBath, FUN = function(x) mean(x, na.rm = TRUE)), 
                                   test_dataset$BsmtFullBath)
test_dataset$BsmtHalfBath = ifelse(is.na(test_dataset$BsmtHalfBath), 
                                   ave(test_dataset$BsmtHalfBath, FUN = function(x) mean(x, na.rm = TRUE)), 
                                   test_dataset$BsmtHalfBath)
test_dataset$FullBath = ifelse(is.na(test_dataset$FullBath), 
                               ave(test_dataset$FullBath, FUN = function(x) mean(x, na.rm = TRUE)), 
                               test_dataset$FullBath)
test_dataset$HalfBath = ifelse(is.na(test_dataset$HalfBath), 
                               ave(test_dataset$HalfBath, FUN = function(x) mean(x, na.rm = TRUE)), 
                               test_dataset$HalfBath)
test_dataset$BedroomAbvGr = ifelse(is.na(test_dataset$BedroomAbvGr), 
                                   ave(test_dataset$BedroomAbvGr, FUN = function(x) mean(x, na.rm = TRUE)), 
                                   test_dataset$BedroomAbvGr)
test_dataset$KitchenAbvGr = ifelse(is.na(test_dataset$KitchenAbvGr), 
                                   ave(test_dataset$KitchenAbvGr, FUN = function(x) mean(x, na.rm = TRUE)), 
                                   test_dataset$KitchenAbvGr)
test_dataset$KitchenQual = ifelse(is.na(test_dataset$KitchenQual), 0, test_dataset$KitchenQual)
test_dataset$TotRmsAbvGrd = ifelse(is.na(test_dataset$TotRmsAbvGrd), 
                                   ave(test_dataset$TotRmsAbvGrd, FUN = function(x) mean(x, na.rm = TRUE)), 
                                   test_dataset$TotRmsAbvGrd)
test_dataset$Functional = ifelse(is.na(test_dataset$Functional), 0, test_dataset$Functional)
test_dataset$Fireplaces = ifelse(is.na(test_dataset$Fireplaces), 
                                 ave(test_dataset$Fireplaces, FUN = function(x) mean(x, na.rm = TRUE)), 
                                 test_dataset$Fireplaces)
test_dataset$FireplaceQu = ifelse(is.na(test_dataset$FireplaceQu), 0, test_dataset$FireplaceQu)
test_dataset$GarageType = ifelse(is.na(test_dataset$GarageType), 0, test_dataset$GarageType)
test_dataset$GarageYrBlt = ifelse(is.na(test_dataset$GarageYrBlt), 0, test_dataset$GarageYrBlt)
test_dataset$GarageFinish = ifelse(is.na(test_dataset$GarageFinish), 0, test_dataset$GarageFinish)
test_dataset$GarageCars = ifelse(is.na(test_dataset$GarageCars), 
                                 ave(test_dataset$GarageCars, FUN = function(x) mean(x, na.rm = TRUE)), 
                                 test_dataset$GarageCars)
test_dataset$GarageArea = ifelse(is.na(test_dataset$GarageArea), 
                                 ave(test_dataset$GarageArea, FUN = function(x) mean(x, na.rm = TRUE)), 
                                 test_dataset$GarageArea)
test_dataset$GarageQual = ifelse(is.na(test_dataset$GarageQual), 0, test_dataset$GarageQual)
test_dataset$GarageCond = ifelse(is.na(test_dataset$GarageCond), 0, test_dataset$GarageCond)
test_dataset$PavedDrive = ifelse(is.na(test_dataset$PavedDrive), 0, test_dataset$PavedDrive)
test_dataset$WoodDeckSF = ifelse(is.na(test_dataset$WoodDeckSF), 0, test_dataset$WoodDeckSF)
test_dataset$OpenPorchSF = ifelse(is.na(test_dataset$OpenPorchSF), 0, test_dataset$OpenPorchSF)
test_dataset$EnclosedPorch = ifelse(is.na(test_dataset$EnclosedPorch), 0, test_dataset$EnclosedPorch)
test_dataset$X3SsnPorch = ifelse(is.na(test_dataset$X3SsnPorch), 0, test_dataset$X3SsnPorch)
test_dataset$ScreenPorch = ifelse(is.na(test_dataset$ScreenPorch), 0, test_dataset$ScreenPorch)
test_dataset$PoolArea = ifelse(is.na(test_dataset$PoolArea), 0, test_dataset$PoolArea)
test_dataset$PoolQC = ifelse(is.na(test_dataset$PoolQC), 0, test_dataset$PoolQC)
test_dataset$Fence = ifelse(is.na(test_dataset$Fence), 0, test_dataset$Fence)
test_dataset$MiscFeature = ifelse(is.na(test_dataset$MiscFeature), 0, test_dataset$MiscFeature)
test_dataset$MiscVal = ifelse(is.na(test_dataset$MiscVal), 0, test_dataset$MiscVal)
test_dataset$MoSold = ifelse(is.na(test_dataset$MoSold), 0, test_dataset$MoSold)
test_dataset$YrSold = ifelse(is.na(test_dataset$YrSold), 0, test_dataset$YrSold)
test_dataset$SaleType = ifelse(is.na(test_dataset$SaleType), 0, test_dataset$SaleType)
test_dataset$SaleCondition = ifelse(is.na(test_dataset$SaleCondition), 0, test_dataset$SaleCondition)

#Making a regressor
regressor = lm(formula = SalePrice~.,
               data = training_dataset)

#Making Predictions
y_pred = predict(regressor, training_dataset)

#MLR
regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotFrontage+LotArea+Street+Alley+LotShape+LandContour+Utilities+LotConfig
               +LandSlope+Neighborhood+Condition1+Condition2+BldgType+HouseStyle+OverallQual+OverallCond+YearBuilt+YearRemodAdd+RoofStyle
               +RoofMatl+Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+Heating+HeatingQC+CentralAir+Electrical+X1stFlrSF
               +X2ndFlrSF+LowQualFinSF+GrLivArea+BsmtFullBath+BsmtHalfBath+FullBath+HalfBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+FireplaceQu+GarageType+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+OpenPorchSF+EnclosedPorch+X3SsnPorch+ScreenPorch+PoolArea+PoolQC+Fence+MiscFeature+MiscVal
               +MoSold+YrSold+SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotFrontage+LotArea+Street+Alley+LotShape+LandContour+Utilities+LotConfig
               +LandSlope+Neighborhood+Condition1+Condition2+BldgType+HouseStyle+OverallQual+OverallCond+YearBuilt+YearRemodAdd+RoofStyle
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+Heating+HeatingQC+CentralAir+Electrical+X1stFlrSF
               +X2ndFlrSF+GrLivArea+BsmtFullBath+BsmtHalfBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+FireplaceQu+GarageType+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+OpenPorchSF+EnclosedPorch+X3SsnPorch+ScreenPorch+PoolArea+PoolQC+Fence+MiscFeature+MiscVal
               +MoSold+YrSold+SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotFrontage+LotArea+Street+Alley+LotShape+LandContour+Utilities+LotConfig
               +LandSlope+Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd+RoofStyle
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+Heating+HeatingQC+CentralAir+Electrical+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+BsmtHalfBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+FireplaceQu+GarageType+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+OpenPorchSF+EnclosedPorch+X3SsnPorch+ScreenPorch+PoolArea+PoolQC+Fence+MiscFeature+MiscVal
               +MoSold+YrSold+SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotFrontage+LotArea+Street+Alley+LotShape+LandContour+Utilities+LotConfig
               +LandSlope+Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd+RoofStyle
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+Heating+HeatingQC+CentralAir+Electrical+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+BsmtHalfBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+FireplaceQu+GarageType+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+X3SsnPorch+ScreenPorch+PoolArea+PoolQC+Fence+MiscFeature+MiscVal
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotFrontage+LotArea+Street+Alley+LotShape+LandContour+Utilities+LotConfig
               +LandSlope+Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd+RoofStyle
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+Heating+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+BsmtHalfBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+FireplaceQu+GarageType+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+X3SsnPorch+ScreenPorch+PoolArea+PoolQC+Fence+MiscFeature+MiscVal
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotFrontage+LotArea+Street+Alley+LotShape+LandContour+Utilities+LotConfig
               +LandSlope+Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd+RoofStyle
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+Heating+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+BsmtHalfBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+FireplaceQu+GarageType+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence+MiscFeature+MiscVal
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotFrontage+LotArea+Street+Alley+LotShape+LandContour+Utilities+LotConfig
               +LandSlope+Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+Heating+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+BsmtHalfBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageType+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence+MiscFeature+MiscVal
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotFrontage+LotArea+Street+Alley+LotShape+LandContour+Utilities+LotConfig
               +Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+Heating+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+BsmtHalfBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageType+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence+MiscFeature+MiscVal
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotFrontage+LotArea+Street+Alley+LotShape+LandContour+Utilities+LotConfig
               +Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+Heating+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageType+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence+MiscFeature
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotArea+Street+LotShape+LandContour+Utilities+LotConfig
               +Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +PavedDrive+WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotArea+Street+LotShape+LandContour+Utilities+LotConfig
               +Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+MSZoning+LotArea+Street+LandContour+Utilities+LotConfig
               +Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+Utilities+LotConfig
               +Neighborhood+Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BsmtFullBath+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+Utilities+LotConfig
               +Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+FullBath+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+Utilities+LotConfig
               +Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+Exterior2nd+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+Utilities+LotConfig
               +Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +Exterior1st+MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+Utilities+LotConfig
               +Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC+Fence
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+Utilities+LotConfig
               +Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+Fireplaces+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+Utilities+LotConfig
               +Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond+BsmtExposure
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+Utilities+LotConfig
               +Condition1+Condition2+BldgType+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+TotalBsmtSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+LotConfig
               +Condition1+Condition2+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageFinish+GarageCars+GarageArea+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+LotConfig
               +Condition1+Condition2+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageFinish+GarageCars+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour+LotConfig
               +Condition1+Condition2+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageCars+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour
               +Condition1+Condition2+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+Foundation+BsmtQual+BsmtCond
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageCars+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour
               +Condition1+Condition2+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+BsmtQual+BsmtCond
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageCars+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour
               +Condition1+Condition2+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+BsmtQual
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+HeatingQC+CentralAir+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageCars+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour
               +Condition1+Condition2+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+ExterCond+BsmtQual
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+HeatingQC+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageCars+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour
               +Condition1+Condition2+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+ExterQual+BsmtQual
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+HeatingQC+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageCars+GarageQual+GarageCond
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

regressor = lm(formula = SalePrice~MSSubClass+LotArea+Street+LandContour
               +Condition1+Condition2+OverallQual+OverallCond+YearBuilt+YearRemodAdd
               +MasVnrType+MasVnrArea+BsmtQual
               +BsmtFinType1+BsmtFinSF1+BsmtFinType2+BsmtFinSF2+BsmtUnfSF+HeatingQC+X1stFlrSF
               +X2ndFlrSF+BedroomAbvGr+KitchenAbvGr+KitchenQual
               +TotRmsAbvGrd+Functional+GarageYrBlt+GarageCars+GarageQual
               +WoodDeckSF+ScreenPorch+PoolArea+PoolQC
               +SaleType+SaleCondition,
               data = training_dataset)
summary(regressor)

