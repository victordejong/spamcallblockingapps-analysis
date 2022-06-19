package com.google.zxing.pdf417.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.pdf417.PDF417Common;
import com.google.zxing.pdf417.decoder.p006ec.ErrorCorrection;
import java.util.ArrayList;
import java.util.Formatter;
/* loaded from: classes-dex2jar.jar:com/google/zxing/pdf417/decoder/PDF417ScanningDecoder.class */
public final class PDF417ScanningDecoder {
    private static final int CODEWORD_SKEW_SIZE = 2;
    private static final int MAX_EC_CODEWORDS = 512;
    private static final int MAX_ERRORS = 3;
    private static final ErrorCorrection errorCorrection = new ErrorCorrection();

    private PDF417ScanningDecoder() {
    }

    private static BoundingBox adjustBoundingBox(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn) {
        int[] rowHeights;
        int i;
        int i2;
        if (detectionResultRowIndicatorColumn == null || (rowHeights = detectionResultRowIndicatorColumn.getRowHeights()) == null) {
            return null;
        }
        int max = getMax(rowHeights);
        int length = rowHeights.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= length) {
                break;
            }
            int i5 = rowHeights[i3];
            i4 += max - i5;
            i = i4;
            if (i5 > 0) {
                break;
            }
            i3++;
        }
        Codeword[] codewords = detectionResultRowIndicatorColumn.getCodewords();
        int i6 = i;
        for (int i7 = 0; i6 > 0 && codewords[i7] == null; i7++) {
            i6--;
        }
        int length2 = rowHeights.length - 1;
        int i8 = 0;
        while (true) {
            i2 = i8;
            if (length2 < 0) {
                break;
            }
            i8 += max - rowHeights[length2];
            i2 = i8;
            if (rowHeights[length2] > 0) {
                break;
            }
            length2--;
        }
        int i9 = i2;
        for (int length3 = codewords.length - 1; i9 > 0 && codewords[length3] == null; length3--) {
            i9--;
        }
        return detectionResultRowIndicatorColumn.getBoundingBox().addMissingRows(i6, i9, detectionResultRowIndicatorColumn.isLeft());
    }

    private static void adjustCodewordCount(DetectionResult detectionResult, BarcodeValue[][] barcodeValueArr) {
        BarcodeValue barcodeValue = barcodeValueArr[0][1];
        int[] value = barcodeValue.getValue();
        int barcodeColumnCount = (detectionResult.getBarcodeColumnCount() * detectionResult.getBarcodeRowCount()) - getNumberOfECCodeWords(detectionResult.getBarcodeECLevel());
        if (value.length != 0) {
            if (value[0] == barcodeColumnCount) {
                return;
            }
            barcodeValue.setValue(barcodeColumnCount);
        } else if (barcodeColumnCount <= 0 || barcodeColumnCount > 928) {
            throw NotFoundException.getNotFoundInstance();
        } else {
            barcodeValue.setValue(barcodeColumnCount);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0052, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int adjustCodewordStartColumn(com.google.zxing.common.BitMatrix r5, int r6, int r7, boolean r8, int r9, int r10) {
        /*
            r0 = r8
            if (r0 == 0) goto La
            r0 = -1
            r11 = r0
            goto Ld
        La:
            r0 = 1
            r11 = r0
        Ld:
            r0 = 0
            r12 = r0
            r0 = r9
            r13 = r0
        L14:
            r0 = r12
            r1 = 2
            if (r0 >= r1) goto L61
        L1a:
            r0 = r8
            if (r0 == 0) goto L27
            r0 = r13
            r1 = r6
            if (r0 < r1) goto L52
            goto L2d
        L27:
            r0 = r13
            r1 = r7
            if (r0 >= r1) goto L52
        L2d:
            r0 = r8
            r1 = r5
            r2 = r13
            r3 = r10
            boolean r1 = r1.get(r2, r3)
            if (r0 != r1) goto L52
            r0 = r9
            r1 = r13
            int r0 = r0 - r1
            int r0 = java.lang.Math.abs(r0)
            r1 = 2
            if (r0 <= r1) goto L48
            r0 = r9
            return r0
        L48:
            r0 = r13
            r1 = r11
            int r0 = r0 + r1
            r13 = r0
            goto L1a
        L52:
            r0 = r11
            int r0 = -r0
            r11 = r0
            r0 = r8
            r1 = 1
            r0 = r0 ^ r1
            r8 = r0
            int r12 = r12 + 1
            goto L14
        L61:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.adjustCodewordStartColumn(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int");
    }

    private static boolean checkCodewordSkew(int i, int i2, int i3) {
        return i2 - 2 <= i && i <= i3 + 2;
    }

    private static int correctErrors(int[] iArr, int[] iArr2, int i) {
        if ((iArr2 == null || iArr2.length <= (i / 2) + 3) && i >= 0 && i <= 512) {
            return errorCorrection.decode(iArr, i, iArr2);
        }
        throw ChecksumException.getChecksumInstance();
    }

    private static BarcodeValue[][] createBarcodeMatrix(DetectionResult detectionResult) {
        DetectionResultColumn[] detectionResultColumns;
        Codeword[] codewords;
        int rowNumber;
        BarcodeValue[][] barcodeValueArr = new BarcodeValue[detectionResult.getBarcodeRowCount()][detectionResult.getBarcodeColumnCount() + 2];
        for (int i = 0; i < barcodeValueArr.length; i++) {
            for (int i2 = 0; i2 < barcodeValueArr[i].length; i2++) {
                barcodeValueArr[i][i2] = new BarcodeValue();
            }
        }
        int i3 = 0;
        for (DetectionResultColumn detectionResultColumn : detectionResult.getDetectionResultColumns()) {
            if (detectionResultColumn != null) {
                for (Codeword codeword : detectionResultColumn.getCodewords()) {
                    if (codeword != null && (rowNumber = codeword.getRowNumber()) >= 0 && rowNumber < barcodeValueArr.length) {
                        barcodeValueArr[rowNumber][i3].setValue(codeword.getValue());
                    }
                }
            }
            i3++;
        }
        return barcodeValueArr;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [int[], int[][]] */
    private static DecoderResult createDecoderResult(DetectionResult detectionResult) {
        BarcodeValue[][] createBarcodeMatrix = createBarcodeMatrix(detectionResult);
        adjustCodewordCount(detectionResult, createBarcodeMatrix);
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[detectionResult.getBarcodeRowCount() * detectionResult.getBarcodeColumnCount()];
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < detectionResult.getBarcodeRowCount(); i++) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < detectionResult.getBarcodeColumnCount()) {
                    BarcodeValue[] barcodeValueArr = createBarcodeMatrix[i];
                    int i4 = i3 + 1;
                    int[] value = barcodeValueArr[i4].getValue();
                    int barcodeColumnCount = (detectionResult.getBarcodeColumnCount() * i) + i3;
                    if (value.length == 0) {
                        arrayList.add(Integer.valueOf(barcodeColumnCount));
                    } else if (value.length == 1) {
                        iArr[barcodeColumnCount] = value[0];
                    } else {
                        arrayList3.add(Integer.valueOf(barcodeColumnCount));
                        arrayList2.add(value);
                    }
                    i2 = i4;
                }
            }
        }
        int size = arrayList2.size();
        ?? r0 = new int[size];
        for (int i5 = 0; i5 < size; i5++) {
            r0[i5] = (int[]) arrayList2.get(i5);
        }
        return createDecoderResultFromAmbiguousValues(detectionResult.getBarcodeECLevel(), iArr, PDF417Common.toIntArray(arrayList), PDF417Common.toIntArray(arrayList3), r0);
    }

    private static DecoderResult createDecoderResultFromAmbiguousValues(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) {
        int length = iArr3.length;
        int[] iArr5 = new int[length];
        for (int i2 = 100; i2 > 0; i2--) {
            for (int i3 = 0; i3 < length; i3++) {
                iArr[iArr3[i3]] = iArr4[i3][iArr5[i3]];
            }
            try {
                return decodeCodewords(iArr, i, iArr2);
            } catch (ChecksumException e) {
                if (length == 0) {
                    throw ChecksumException.getChecksumInstance();
                }
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    } else if (iArr5[i4] < iArr4[i4].length - 1) {
                        iArr5[i4] = iArr5[i4] + 1;
                        break;
                    } else {
                        iArr5[i4] = 0;
                        if (i4 == length - 1) {
                            throw ChecksumException.getChecksumInstance();
                        }
                        i4++;
                    }
                }
            }
        }
        throw ChecksumException.getChecksumInstance();
    }

    public static DecoderResult decode(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) {
        DetectionResultColumn detectionResultColumn;
        DetectionResultColumn detectionResultColumn2;
        DetectionResultColumn detectionResultColumn3;
        BoundingBox boundingBox = new BoundingBox(bitMatrix, resultPoint, resultPoint2, resultPoint3, resultPoint4);
        DetectionResultColumn detectionResultColumn4 = null;
        DetectionResultColumn detectionResultColumn5 = null;
        DetectionResult detectionResult = null;
        int i3 = 0;
        while (true) {
            detectionResultColumn = detectionResultColumn4;
            detectionResultColumn2 = detectionResultColumn5;
            if (i3 >= 2) {
                break;
            }
            if (resultPoint != null) {
                detectionResultColumn4 = getRowIndicatorColumn(bitMatrix, boundingBox, resultPoint, true, i, i2);
            }
            if (resultPoint3 != null) {
                detectionResultColumn5 = getRowIndicatorColumn(bitMatrix, boundingBox, resultPoint3, false, i, i2);
            }
            detectionResult = merge(detectionResultColumn4, detectionResultColumn5);
            if (detectionResult == null) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (i3 != 0 || detectionResult.getBoundingBox() == null || (detectionResult.getBoundingBox().getMinY() >= boundingBox.getMinY() && detectionResult.getBoundingBox().getMaxY() <= boundingBox.getMaxY())) {
                break;
            }
            boundingBox = detectionResult.getBoundingBox();
            i3++;
        }
        detectionResult.setBoundingBox(boundingBox);
        detectionResultColumn = detectionResultColumn4;
        detectionResultColumn2 = detectionResultColumn5;
        int barcodeColumnCount = detectionResult.getBarcodeColumnCount() + 1;
        detectionResult.setDetectionResultColumn(0, detectionResultColumn);
        detectionResult.setDetectionResultColumn(barcodeColumnCount, detectionResultColumn2);
        boolean z = detectionResultColumn != null;
        int i4 = i2;
        int i5 = 1;
        int i6 = i;
        while (i5 <= barcodeColumnCount) {
            int i7 = z ? i5 : barcodeColumnCount - i5;
            int i8 = i6;
            int i9 = i4;
            if (detectionResult.getDetectionResultColumn(i7) == null) {
                if (i7 == 0 || i7 == barcodeColumnCount) {
                    detectionResultColumn3 = new DetectionResultRowIndicatorColumn(boundingBox, i7 == 0);
                } else {
                    detectionResultColumn3 = new DetectionResultColumn(boundingBox);
                }
                detectionResult.setDetectionResultColumn(i7, detectionResultColumn3);
                int minY = boundingBox.getMinY();
                int i10 = -1;
                while (true) {
                    i8 = i6;
                    i9 = i4;
                    if (minY <= boundingBox.getMaxY()) {
                        int startColumn = getStartColumn(detectionResult, i7, minY, z);
                        if (startColumn < 0 || startColumn > boundingBox.getMaxX()) {
                            if (i10 != -1) {
                                startColumn = i10;
                            } else {
                                minY++;
                            }
                        }
                        Codeword detectCodeword = detectCodeword(bitMatrix, boundingBox.getMinX(), boundingBox.getMaxX(), z, startColumn, minY, i6, i4);
                        if (detectCodeword != null) {
                            detectionResultColumn3.setCodeword(minY, detectCodeword);
                            i6 = Math.min(i6, detectCodeword.getWidth());
                            i4 = Math.max(i4, detectCodeword.getWidth());
                            i10 = startColumn;
                        }
                        minY++;
                    }
                }
            }
            i5++;
            i6 = i8;
            i4 = i9;
        }
        return createDecoderResult(detectionResult);
    }

    private static DecoderResult decodeCodewords(int[] iArr, int i, int[] iArr2) {
        if (iArr.length != 0) {
            int i2 = 1 << (i + 1);
            int correctErrors = correctErrors(iArr, iArr2, i2);
            verifyCodewordCount(iArr, i2);
            DecoderResult decode = DecodedBitStreamParser.decode(iArr, String.valueOf(i));
            decode.setErrorsCorrected(Integer.valueOf(correctErrors));
            decode.setErasures(Integer.valueOf(iArr2.length));
            return decode;
        }
        throw FormatException.getFormatInstance();
    }

    private static Codeword detectCodeword(BitMatrix bitMatrix, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        int decodedValue;
        int codeword;
        int adjustCodewordStartColumn = adjustCodewordStartColumn(bitMatrix, i, i2, z, i3, i4);
        int[] moduleBitCount = getModuleBitCount(bitMatrix, i, i2, z, adjustCodewordStartColumn, i4);
        if (moduleBitCount == null) {
            return null;
        }
        int sum = MathUtils.sum(moduleBitCount);
        if (z) {
            i7 = adjustCodewordStartColumn + sum;
        } else {
            for (int i8 = 0; i8 < moduleBitCount.length / 2; i8++) {
                int i9 = moduleBitCount[i8];
                moduleBitCount[i8] = moduleBitCount[(moduleBitCount.length - 1) - i8];
                moduleBitCount[(moduleBitCount.length - 1) - i8] = i9;
            }
            i7 = adjustCodewordStartColumn;
            adjustCodewordStartColumn -= sum;
        }
        if (!checkCodewordSkew(sum, i5, i6) || (codeword = PDF417Common.getCodeword((decodedValue = PDF417CodewordDecoder.getDecodedValue(moduleBitCount)))) == -1) {
            return null;
        }
        return new Codeword(adjustCodewordStartColumn, i7, getCodewordBucketNumber(decodedValue), codeword);
    }

    private static BarcodeMetadata getBarcodeMetadata(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn2) {
        BarcodeMetadata barcodeMetadata;
        BarcodeMetadata barcodeMetadata2;
        if (detectionResultRowIndicatorColumn == null || (barcodeMetadata = detectionResultRowIndicatorColumn.getBarcodeMetadata()) == null) {
            if (detectionResultRowIndicatorColumn2 != null) {
                return detectionResultRowIndicatorColumn2.getBarcodeMetadata();
            }
            return null;
        } else if (detectionResultRowIndicatorColumn2 != null && (barcodeMetadata2 = detectionResultRowIndicatorColumn2.getBarcodeMetadata()) != null && barcodeMetadata.getColumnCount() != barcodeMetadata2.getColumnCount() && barcodeMetadata.getErrorCorrectionLevel() != barcodeMetadata2.getErrorCorrectionLevel() && barcodeMetadata.getRowCount() != barcodeMetadata2.getRowCount()) {
            return null;
        } else {
            return barcodeMetadata;
        }
    }

    private static int[] getBitCountForCodeword(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i3;
            int i5 = i & 1;
            int i6 = i2;
            int i7 = i4;
            if (i5 != i2) {
                i7 = i4 - 1;
                if (i7 < 0) {
                    return iArr;
                }
                i6 = i5;
            }
            iArr[i7] = iArr[i7] + 1;
            i >>= 1;
            i2 = i6;
            i3 = i7;
        }
    }

    private static int getCodewordBucketNumber(int i) {
        return getCodewordBucketNumber(getBitCountForCodeword(i));
    }

    private static int getCodewordBucketNumber(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    private static int getMax(int[] iArr) {
        int i = -1;
        for (int i2 : iArr) {
            i = Math.max(i, i2);
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062 A[EDGE_INSN: B:31:0x0062->B:19:0x0062 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] getModuleBitCount(com.google.zxing.common.BitMatrix r5, int r6, int r7, boolean r8, int r9, int r10) {
        /*
            r0 = 8
            int[] r0 = new int[r0]
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L10
            r0 = 1
            r12 = r0
            goto L13
        L10:
            r0 = -1
            r12 = r0
        L13:
            r0 = 0
            r13 = r0
            r0 = r8
            r14 = r0
        L19:
            r0 = r8
            if (r0 == 0) goto L26
            r0 = r9
            r1 = r7
            if (r0 >= r1) goto L62
            goto L2c
        L26:
            r0 = r9
            r1 = r6
            if (r0 < r1) goto L62
        L2c:
            r0 = r13
            r1 = 8
            if (r0 >= r1) goto L62
            r0 = r5
            r1 = r9
            r2 = r10
            boolean r0 = r0.get(r1, r2)
            r1 = r14
            if (r0 != r1) goto L56
            r0 = r11
            r1 = r13
            r2 = r11
            r3 = r13
            r2 = r2[r3]
            r3 = 1
            int r2 = r2 + r3
            r0[r1] = r2
            r0 = r9
            r1 = r12
            int r0 = r0 + r1
            r9 = r0
            goto L19
        L56:
            int r13 = r13 + 1
            r0 = r14
            r1 = 1
            r0 = r0 ^ r1
            r14 = r0
            goto L19
        L62:
            r0 = r13
            r1 = 8
            if (r0 == r1) goto L81
            r0 = r8
            if (r0 == 0) goto L6f
            r0 = r7
            r6 = r0
        L6f:
            r0 = r9
            r1 = r6
            if (r0 != r1) goto L7f
            r0 = r13
            r1 = 7
            if (r0 != r1) goto L7f
            goto L81
        L7f:
            r0 = 0
            return r0
        L81:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.getModuleBitCount(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int[]");
    }

    private static int getNumberOfECCodeWords(int i) {
        return 2 << i;
    }

    private static DetectionResultRowIndicatorColumn getRowIndicatorColumn(BitMatrix bitMatrix, BoundingBox boundingBox, ResultPoint resultPoint, boolean z, int i, int i2) {
        DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn = new DetectionResultRowIndicatorColumn(boundingBox, z);
        int i3 = 0;
        while (i3 < 2) {
            int i4 = i3 == 0 ? 1 : -1;
            int x = (int) resultPoint.getX();
            int y = (int) resultPoint.getY();
            while (true) {
                int i5 = y;
                if (i5 <= boundingBox.getMaxY() && i5 >= boundingBox.getMinY()) {
                    Codeword detectCodeword = detectCodeword(bitMatrix, 0, bitMatrix.getWidth(), z, x, i5, i, i2);
                    if (detectCodeword != null) {
                        detectionResultRowIndicatorColumn.setCodeword(i5, detectCodeword);
                        x = z ? detectCodeword.getStartX() : detectCodeword.getEndX();
                    }
                    y = i5 + i4;
                }
            }
            i3++;
        }
        return detectionResultRowIndicatorColumn;
    }

    private static int getStartColumn(DetectionResult detectionResult, int i, int i2, boolean z) {
        Codeword[] codewords;
        int i3 = z ? 1 : -1;
        Codeword codeword = null;
        int i4 = i - i3;
        if (isValidBarcodeColumn(detectionResult, i4)) {
            codeword = detectionResult.getDetectionResultColumn(i4).getCodeword(i2);
        }
        if (codeword != null) {
            return z ? codeword.getEndX() : codeword.getStartX();
        }
        Codeword codewordNearby = detectionResult.getDetectionResultColumn(i).getCodewordNearby(i2);
        if (codewordNearby != null) {
            return z ? codewordNearby.getStartX() : codewordNearby.getEndX();
        }
        if (isValidBarcodeColumn(detectionResult, i4)) {
            codewordNearby = detectionResult.getDetectionResultColumn(i4).getCodewordNearby(i2);
        }
        if (codewordNearby != null) {
            return z ? codewordNearby.getEndX() : codewordNearby.getStartX();
        }
        int i5 = i;
        int i6 = 0;
        while (true) {
            int i7 = i5 - i3;
            if (!isValidBarcodeColumn(detectionResult, i7)) {
                BoundingBox boundingBox = detectionResult.getBoundingBox();
                return z ? boundingBox.getMinX() : boundingBox.getMaxX();
            }
            for (Codeword codeword2 : detectionResult.getDetectionResultColumn(i7).getCodewords()) {
                if (codeword2 != null) {
                    return (z ? codeword2.getEndX() : codeword2.getStartX()) + (i3 * i6 * (codeword2.getEndX() - codeword2.getStartX()));
                }
            }
            i6++;
            i5 = i7;
        }
    }

    private static boolean isValidBarcodeColumn(DetectionResult detectionResult, int i) {
        return i >= 0 && i <= detectionResult.getBarcodeColumnCount() + 1;
    }

    private static DetectionResult merge(DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn, DetectionResultRowIndicatorColumn detectionResultRowIndicatorColumn2) {
        BarcodeMetadata barcodeMetadata;
        if ((detectionResultRowIndicatorColumn == null && detectionResultRowIndicatorColumn2 == null) || (barcodeMetadata = getBarcodeMetadata(detectionResultRowIndicatorColumn, detectionResultRowIndicatorColumn2)) == null) {
            return null;
        }
        return new DetectionResult(barcodeMetadata, BoundingBox.merge(adjustBoundingBox(detectionResultRowIndicatorColumn), adjustBoundingBox(detectionResultRowIndicatorColumn2)));
    }

    public static String toString(BarcodeValue[][] barcodeValueArr) {
        Formatter formatter = new Formatter();
        for (int i = 0; i < barcodeValueArr.length; i++) {
            try {
                formatter.format("Row %2d: ", Integer.valueOf(i));
                for (int i2 = 0; i2 < barcodeValueArr[i].length; i2++) {
                    BarcodeValue barcodeValue = barcodeValueArr[i][i2];
                    if (barcodeValue.getValue().length == 0) {
                        formatter.format("        ", null);
                    } else {
                        formatter.format("%4d(%2d)", Integer.valueOf(barcodeValue.getValue()[0]), barcodeValue.getConfidence(barcodeValue.getValue()[0]));
                    }
                }
                formatter.format("%n", new Object[0]);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        formatter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }

    private static void verifyCodewordCount(int[] iArr, int i) {
        if (iArr.length >= 4) {
            int i2 = iArr[0];
            if (i2 > iArr.length) {
                throw FormatException.getFormatInstance();
            }
            if (i2 != 0) {
                return;
            }
            if (i >= iArr.length) {
                throw FormatException.getFormatInstance();
            }
            iArr[0] = iArr.length - i;
            return;
        }
        throw FormatException.getFormatInstance();
    }
}
