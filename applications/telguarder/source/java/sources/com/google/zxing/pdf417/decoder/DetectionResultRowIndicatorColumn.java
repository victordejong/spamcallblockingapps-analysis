package com.google.zxing.pdf417.decoder;

import com.google.zxing.ResultPoint;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn.class */
final class DetectionResultRowIndicatorColumn extends DetectionResultColumn {
    private final boolean isLeft;

    public DetectionResultRowIndicatorColumn(BoundingBox boundingBox, boolean z) {
        super(boundingBox);
        this.isLeft = z;
    }

    private void adjustIncompleteIndicatorColumnRowNumbers(BarcodeMetadata barcodeMetadata) {
        int rowNumber;
        BoundingBox boundingBox = getBoundingBox();
        ResultPoint topLeft = this.isLeft ? boundingBox.getTopLeft() : boundingBox.getTopRight();
        ResultPoint bottomLeft = this.isLeft ? boundingBox.getBottomLeft() : boundingBox.getBottomRight();
        int imageRowToCodewordIndex = imageRowToCodewordIndex((int) topLeft.getY());
        int imageRowToCodewordIndex2 = imageRowToCodewordIndex((int) bottomLeft.getY());
        Codeword[] codewords = getCodewords();
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        while (true) {
            int i4 = i3;
            if (imageRowToCodewordIndex < imageRowToCodewordIndex2) {
                int i5 = i;
                int i6 = i2;
                int i7 = i4;
                if (codewords[imageRowToCodewordIndex] != null) {
                    Codeword codeword = codewords[imageRowToCodewordIndex];
                    codeword.setRowNumberAsRowIndicatorColumn();
                    int rowNumber2 = codeword.getRowNumber() - i;
                    if (rowNumber2 == 0) {
                        i6 = i2 + 1;
                        i5 = i;
                        i7 = i4;
                    } else {
                        if (rowNumber2 == 1) {
                            i4 = Math.max(i4, i2);
                            rowNumber = codeword.getRowNumber();
                        } else if (codeword.getRowNumber() >= barcodeMetadata.getRowCount()) {
                            codewords[imageRowToCodewordIndex] = null;
                            i5 = i;
                            i6 = i2;
                            i7 = i4;
                        } else {
                            rowNumber = codeword.getRowNumber();
                        }
                        i5 = rowNumber;
                        i6 = 1;
                        i7 = i4;
                    }
                }
                imageRowToCodewordIndex++;
                i = i5;
                i2 = i6;
                i3 = i7;
            } else {
                return;
            }
        }
    }

    private void removeIncorrectCodewords(Codeword[] codewordArr, BarcodeMetadata barcodeMetadata) {
        for (int i = 0; i < codewordArr.length; i++) {
            Codeword codeword = codewordArr[i];
            if (codewordArr[i] != null) {
                int value = codeword.getValue() % 30;
                int rowNumber = codeword.getRowNumber();
                if (rowNumber > barcodeMetadata.getRowCount()) {
                    codewordArr[i] = null;
                } else {
                    int i2 = rowNumber;
                    if (!this.isLeft) {
                        i2 = rowNumber + 2;
                    }
                    int i3 = i2 % 3;
                    if (i3 != 0) {
                        if (i3 != 1) {
                            if (i3 == 2 && value + 1 != barcodeMetadata.getColumnCount()) {
                                codewordArr[i] = null;
                            }
                        } else if (value / 3 != barcodeMetadata.getErrorCorrectionLevel() || value % 3 != barcodeMetadata.getRowCountLowerPart()) {
                            codewordArr[i] = null;
                        }
                    } else if ((value * 3) + 1 != barcodeMetadata.getRowCountUpperPart()) {
                        codewordArr[i] = null;
                    }
                }
            }
        }
    }

    private void setRowNumbers() {
        Codeword[] codewords;
        for (Codeword codeword : getCodewords()) {
            if (codeword != null) {
                codeword.setRowNumberAsRowIndicatorColumn();
            }
        }
    }

    public void adjustCompleteIndicatorColumnRowNumbers(BarcodeMetadata barcodeMetadata) {
        int rowNumber;
        Codeword[] codewords = getCodewords();
        setRowNumbers();
        removeIncorrectCodewords(codewords, barcodeMetadata);
        BoundingBox boundingBox = getBoundingBox();
        ResultPoint topLeft = this.isLeft ? boundingBox.getTopLeft() : boundingBox.getTopRight();
        ResultPoint bottomLeft = this.isLeft ? boundingBox.getBottomLeft() : boundingBox.getBottomRight();
        int imageRowToCodewordIndex = imageRowToCodewordIndex((int) topLeft.getY());
        int imageRowToCodewordIndex2 = imageRowToCodewordIndex((int) bottomLeft.getY());
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        while (true) {
            int i4 = i3;
            if (imageRowToCodewordIndex < imageRowToCodewordIndex2) {
                int i5 = i;
                int i6 = i2;
                int i7 = i4;
                if (codewords[imageRowToCodewordIndex] != null) {
                    Codeword codeword = codewords[imageRowToCodewordIndex];
                    int rowNumber2 = codeword.getRowNumber() - i;
                    if (rowNumber2 == 0) {
                        i6 = i2 + 1;
                        i5 = i;
                        i7 = i4;
                    } else {
                        if (rowNumber2 == 1) {
                            i4 = Math.max(i4, i2);
                            rowNumber = codeword.getRowNumber();
                        } else if (rowNumber2 < 0 || codeword.getRowNumber() >= barcodeMetadata.getRowCount() || rowNumber2 > imageRowToCodewordIndex) {
                            codewords[imageRowToCodewordIndex] = null;
                            i7 = i4;
                            i6 = i2;
                            i5 = i;
                        } else {
                            int i8 = rowNumber2;
                            if (i4 > 2) {
                                i8 = rowNumber2 * (i4 - 2);
                            }
                            boolean z = i8 >= imageRowToCodewordIndex;
                            for (int i9 = 1; i9 <= i8 && !z; i9++) {
                                z = codewords[imageRowToCodewordIndex - i9] != null;
                            }
                            if (z) {
                                codewords[imageRowToCodewordIndex] = null;
                                i5 = i;
                                i6 = i2;
                                i7 = i4;
                            } else {
                                rowNumber = codeword.getRowNumber();
                            }
                        }
                        i5 = rowNumber;
                        i6 = 1;
                        i7 = i4;
                    }
                }
                imageRowToCodewordIndex++;
                i = i5;
                i2 = i6;
                i3 = i7;
            } else {
                return;
            }
        }
    }

    public BarcodeMetadata getBarcodeMetadata() {
        Codeword[] codewords = getCodewords();
        BarcodeValue barcodeValue = new BarcodeValue();
        BarcodeValue barcodeValue2 = new BarcodeValue();
        BarcodeValue barcodeValue3 = new BarcodeValue();
        BarcodeValue barcodeValue4 = new BarcodeValue();
        for (Codeword codeword : codewords) {
            if (codeword != null) {
                codeword.setRowNumberAsRowIndicatorColumn();
                int value = codeword.getValue() % 30;
                int rowNumber = codeword.getRowNumber();
                int i = rowNumber;
                if (!this.isLeft) {
                    i = rowNumber + 2;
                }
                int i2 = i % 3;
                if (i2 == 0) {
                    barcodeValue2.setValue((value * 3) + 1);
                } else if (i2 == 1) {
                    barcodeValue4.setValue(value / 3);
                    barcodeValue3.setValue(value % 3);
                } else if (i2 == 2) {
                    barcodeValue.setValue(value + 1);
                }
            }
        }
        if (barcodeValue.getValue().length == 0 || barcodeValue2.getValue().length == 0 || barcodeValue3.getValue().length == 0 || barcodeValue4.getValue().length == 0 || barcodeValue.getValue()[0] <= 0 || barcodeValue2.getValue()[0] + barcodeValue3.getValue()[0] < 3 || barcodeValue2.getValue()[0] + barcodeValue3.getValue()[0] > 90) {
            return null;
        }
        BarcodeMetadata barcodeMetadata = new BarcodeMetadata(barcodeValue.getValue()[0], barcodeValue2.getValue()[0], barcodeValue3.getValue()[0], barcodeValue4.getValue()[0]);
        removeIncorrectCodewords(codewords, barcodeMetadata);
        return barcodeMetadata;
    }

    public int[] getRowHeights() {
        Codeword[] codewords;
        int rowNumber;
        BarcodeMetadata barcodeMetadata = getBarcodeMetadata();
        if (barcodeMetadata == null) {
            return null;
        }
        adjustIncompleteIndicatorColumnRowNumbers(barcodeMetadata);
        int rowCount = barcodeMetadata.getRowCount();
        int[] iArr = new int[rowCount];
        for (Codeword codeword : getCodewords()) {
            if (codeword != null && (rowNumber = codeword.getRowNumber()) < rowCount) {
                iArr[rowNumber] = iArr[rowNumber] + 1;
            }
        }
        return iArr;
    }

    public boolean isLeft() {
        return this.isLeft;
    }

    @Override // com.google.zxing.pdf417.decoder.DetectionResultColumn
    public String toString() {
        return "IsLeft: " + this.isLeft + '\n' + super.toString();
    }
}
