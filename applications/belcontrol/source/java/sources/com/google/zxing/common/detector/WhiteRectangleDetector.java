package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
/* loaded from: classes-dex2jar.jar:com/google/zxing/common/detector/WhiteRectangleDetector.class */
public final class WhiteRectangleDetector {
    private static final int CORR = 1;
    private static final int INIT_SIZE = 10;
    private final int downInit;
    private final int height;
    private final BitMatrix image;
    private final int leftInit;
    private final int rightInit;
    private final int upInit;
    private final int width;

    public WhiteRectangleDetector(BitMatrix bitMatrix) {
        this(bitMatrix, 10, bitMatrix.getWidth() / 2, bitMatrix.getHeight() / 2);
    }

    public WhiteRectangleDetector(BitMatrix bitMatrix, int i, int i2, int i3) {
        this.image = bitMatrix;
        int height = bitMatrix.getHeight();
        this.height = height;
        int width = bitMatrix.getWidth();
        this.width = width;
        int i4 = i / 2;
        int i5 = i2 - i4;
        this.leftInit = i5;
        int i6 = i2 + i4;
        this.rightInit = i6;
        int i7 = i3 - i4;
        this.upInit = i7;
        int i8 = i3 + i4;
        this.downInit = i8;
        if (i7 < 0 || i5 < 0 || i8 >= height || i6 >= width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private ResultPoint[] centerEdges(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        float x = resultPoint.getX();
        float y = resultPoint.getY();
        float x2 = resultPoint2.getX();
        float y2 = resultPoint2.getY();
        float x3 = resultPoint3.getX();
        float y3 = resultPoint3.getY();
        float x4 = resultPoint4.getX();
        float y4 = resultPoint4.getY();
        return x < ((float) this.width) / 2.0f ? new ResultPoint[]{new ResultPoint(x4 - 1.0f, y4 + 1.0f), new ResultPoint(x2 + 1.0f, y2 + 1.0f), new ResultPoint(x3 - 1.0f, y3 - 1.0f), new ResultPoint(x + 1.0f, y - 1.0f)} : new ResultPoint[]{new ResultPoint(x4 + 1.0f, y4 + 1.0f), new ResultPoint(x2 + 1.0f, y2 - 1.0f), new ResultPoint(x3 - 1.0f, y3 + 1.0f), new ResultPoint(x - 1.0f, y - 1.0f)};
    }

    private boolean containsBlackPoint(int i, int i2, int i3, boolean z) {
        if (z) {
            while (i <= i2) {
                if (this.image.get(i, i3)) {
                    return true;
                }
                i++;
            }
            return false;
        }
        for (int i4 = i; i4 <= i2; i4++) {
            if (this.image.get(i3, i4)) {
                return true;
            }
        }
        return false;
    }

    private ResultPoint getBlackPointOnSegment(float f, float f2, float f3, float f4) {
        int round = MathUtils.round(MathUtils.distance(f, f2, f3, f4));
        float f5 = round;
        float f6 = (f3 - f) / f5;
        float f7 = (f4 - f2) / f5;
        for (int i = 0; i < round; i++) {
            float f8 = i;
            int round2 = MathUtils.round((f8 * f6) + f);
            int round3 = MathUtils.round((f8 * f7) + f2);
            if (this.image.get(round2, round3)) {
                return new ResultPoint(round2, round3);
            }
        }
        return null;
    }

    public ResultPoint[] detect() {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        int i5 = this.leftInit;
        int i6 = this.rightInit;
        int i7 = this.upInit;
        int i8 = this.downInit;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        while (true) {
            i = i5;
            i2 = i6;
            i3 = i7;
            i4 = i8;
            z = false;
            if (!z2) {
                break;
            }
            boolean z8 = true;
            boolean z9 = false;
            boolean z10 = z3;
            i2 = i6;
            while (true) {
                if ((z8 || !z10) && i2 < this.width) {
                    boolean containsBlackPoint = containsBlackPoint(i7, i8, i2, false);
                    if (containsBlackPoint) {
                        i2++;
                        z10 = true;
                        z9 = true;
                        z8 = containsBlackPoint;
                    } else {
                        z8 = containsBlackPoint;
                        if (!z10) {
                            i2++;
                            z8 = containsBlackPoint;
                        }
                    }
                }
            }
            if (i2 >= this.width) {
                i4 = i8;
                break;
            }
            boolean z11 = true;
            boolean z12 = z9;
            boolean z13 = z4;
            i4 = i8;
            while (true) {
                if ((z11 || !z13) && i4 < this.height) {
                    boolean containsBlackPoint2 = containsBlackPoint(i5, i2, i4, true);
                    if (containsBlackPoint2) {
                        i4++;
                        z13 = true;
                        z12 = true;
                        z11 = containsBlackPoint2;
                    } else {
                        z11 = containsBlackPoint2;
                        if (!z13) {
                            i4++;
                            z11 = containsBlackPoint2;
                        }
                    }
                }
            }
            if (i4 >= this.height) {
                break;
            }
            boolean z14 = true;
            boolean z15 = z12;
            boolean z16 = z5;
            int i9 = i5;
            while (true) {
                if ((z14 || !z16) && i9 >= 0) {
                    boolean containsBlackPoint3 = containsBlackPoint(i7, i4, i9, false);
                    if (containsBlackPoint3) {
                        i9--;
                        z16 = true;
                        z15 = true;
                        z14 = containsBlackPoint3;
                    } else {
                        z14 = containsBlackPoint3;
                        if (!z16) {
                            i9--;
                            z14 = containsBlackPoint3;
                        }
                    }
                }
            }
            if (i9 < 0) {
                i5 = i9;
                break;
            }
            boolean z17 = true;
            boolean z18 = z7;
            boolean z19 = z15;
            int i10 = i7;
            while (true) {
                if ((z17 || !z18) && i10 >= 0) {
                    boolean containsBlackPoint4 = containsBlackPoint(i9, i2, i10, true);
                    if (containsBlackPoint4) {
                        i10--;
                        z19 = true;
                        z18 = true;
                        z17 = containsBlackPoint4;
                    } else {
                        z17 = containsBlackPoint4;
                        if (!z18) {
                            i10--;
                            z17 = containsBlackPoint4;
                        }
                    }
                }
            }
            if (i10 < 0) {
                i5 = i9;
                i7 = i10;
                break;
            }
            i5 = i9;
            i6 = i2;
            i7 = i10;
            i8 = i4;
            z2 = z19;
            z3 = z10;
            z4 = z13;
            z5 = z16;
            z7 = z18;
            if (z19) {
                z6 = true;
                i5 = i9;
                i6 = i2;
                i7 = i10;
                i8 = i4;
                z2 = z19;
                z3 = z10;
                z4 = z13;
                z5 = z16;
                z7 = z18;
            }
        }
        z = true;
        i = i5;
        i3 = i7;
        if (z || !z6) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i11 = i2 - i;
        ResultPoint resultPoint = null;
        ResultPoint resultPoint2 = null;
        for (int i12 = 1; resultPoint2 == null && i12 < i11; i12++) {
            resultPoint2 = getBlackPointOnSegment(i, i4 - i12, i + i12, i4);
        }
        if (resultPoint2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint resultPoint3 = null;
        for (int i13 = 1; resultPoint3 == null && i13 < i11; i13++) {
            resultPoint3 = getBlackPointOnSegment(i, i3 + i13, i + i13, i3);
        }
        if (resultPoint3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint resultPoint4 = null;
        for (int i14 = 1; resultPoint4 == null && i14 < i11; i14++) {
            resultPoint4 = getBlackPointOnSegment(i2, i3 + i14, i2 - i14, i3);
        }
        if (resultPoint4 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        for (int i15 = 1; resultPoint == null && i15 < i11; i15++) {
            resultPoint = getBlackPointOnSegment(i2, i4 - i15, i2 - i15, i4);
        }
        if (resultPoint == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        return centerEdges(resultPoint, resultPoint2, resultPoint4, resultPoint3);
    }
}
