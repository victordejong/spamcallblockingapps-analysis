package com.facebook.p094a.p100e;
/* renamed from: com.facebook.a.e.c */
/* loaded from: classes-dex2jar.jar:com/facebook/a/e/c.class */
final class C1897c {
    /* renamed from: a */
    public static void m15959a(float[] fArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (fArr[i2] < 0.0f) {
                fArr[i2] = 0.0f;
            }
        }
    }

    /* renamed from: a */
    public static float[] m15958a(float[] fArr, int i, int i2) {
        float[] fArr2 = new float[i * i2];
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                fArr2[(i4 * i) + i3] = fArr[(i3 * i2) + i4];
            }
        }
        return fArr2;
    }

    /* renamed from: a */
    public static float[] m15957a(float[] fArr, int i, int i2, int i3) {
        float[] fArr2 = new float[i * i2 * i3];
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                for (int i6 = 0; i6 < i3; i6++) {
                    fArr2[(i6 * i * i2) + (i5 * i) + i4] = fArr[(i4 * i2 * i3) + (i5 * i3) + i6];
                }
            }
        }
        return fArr2;
    }

    /* renamed from: a */
    public static float[] m15956a(float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[fArr.length + fArr2.length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        return fArr3;
    }

    /* renamed from: a */
    public static float[] m15955a(float[] fArr, float[] fArr2, int i, int i2, int i3) {
        for (int i4 = 0; i4 < i * i2; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = (i4 * i3) + i5;
                fArr[i6] = fArr[i6] + fArr2[i5];
            }
        }
        return fArr;
    }

    /* renamed from: a */
    public static float[] m15954a(float[] fArr, float[] fArr2, int i, int i2, int i3, int i4, int i5) {
        float[] fArr3 = new float[((i2 - i4) + 1) * i * i5];
        for (int i6 = 0; i6 < i; i6++) {
            for (int i7 = 0; i7 < i5; i7++) {
                for (int i8 = 0; i8 < (i2 - i4) + 1; i8++) {
                    float f = 0.0f;
                    for (int i9 = 0; i9 < i4; i9++) {
                        for (int i10 = 0; i10 < i3; i10++) {
                            f += fArr[(i2 * i3 * i6) + ((i9 + i8) * i3) + i10] * fArr2[(((i9 * i3) + i10) * i5) + i7];
                        }
                    }
                    fArr3[(((i2 - i4) + 1) * i5 * i6) + (i8 * i5) + i7] = f;
                }
            }
        }
        return fArr3;
    }

    /* renamed from: a */
    public static float[] m15953a(float[] fArr, float[] fArr2, float[] fArr3, int i, int i2, int i3) {
        float[] m15949b = m15949b(fArr, fArr2, i, i2, i3);
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = (i4 * i3) + i5;
                m15949b[i6] = m15949b[i6] + fArr3[i5];
            }
        }
        return m15949b;
    }

    /* renamed from: a */
    public static float[] m15952a(int[] iArr, float[] fArr, int i, int i2, int i3) {
        float[] fArr2 = new float[i * i2 * i3];
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                int i6 = iArr[(i4 * i2) + i5];
                for (int i7 = 0; i7 < i3; i7++) {
                    fArr2[(i3 * i2 * i4) + (i3 * i5) + i7] = fArr[(i6 * i3) + i7];
                }
            }
        }
        return fArr2;
    }

    /* renamed from: b */
    public static void m15951b(float[] fArr, int i) {
        float f;
        float f2 = Float.MIN_VALUE;
        int i2 = 0;
        while (i2 < i) {
            float f3 = f2;
            if (fArr[i2] > f2) {
                f3 = fArr[i2];
            }
            i2++;
            f2 = f3;
        }
        for (int i3 = 0; i3 < i; i3++) {
            fArr[i3] = (float) Math.exp(fArr[i3] - f2);
        }
        int i4 = 0;
        float f4 = 0.0f;
        while (true) {
            f = f4;
            if (i4 >= i) {
                break;
            }
            i4++;
            f4 = fArr[i4] + f;
        }
        for (int i5 = 0; i5 < i; i5++) {
            fArr[i5] = fArr[i5] / f;
        }
    }

    /* renamed from: b */
    public static float[] m15950b(float[] fArr, int i, int i2, int i3) {
        int i4 = (i - i3) + 1;
        float[] fArr2 = new float[i4 * i2];
        for (int i5 = 0; i5 < i2; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                for (int i7 = i6; i7 < i6 + i3; i7++) {
                    fArr2[(i6 * i2) + i5] = Math.max(fArr2[(i6 * i2) + i5], fArr[(i7 * i2) + i5]);
                }
            }
        }
        return fArr2;
    }

    /* renamed from: b */
    static float[] m15949b(float[] fArr, float[] fArr2, int i, int i2, int i3) {
        float[] fArr3 = new float[i * i3];
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                fArr3[(i4 * i3) + i5] = 0.0f;
                for (int i6 = 0; i6 < i2; i6++) {
                    int i7 = (i4 * i3) + i5;
                    fArr3[i7] = fArr3[i7] + (fArr[(i4 * i2) + i6] * fArr2[(i6 * i3) + i5]);
                }
            }
        }
        return fArr3;
    }
}
