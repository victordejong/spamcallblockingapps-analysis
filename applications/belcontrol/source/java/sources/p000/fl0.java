package p000;
/* renamed from: fl0 */
/* loaded from: classes-dex2jar.jar:fl0.class */
public final class fl0 {
    /* renamed from: a */
    public static float[] m1712a(float[] fArr, float[] fArr2, int i, int i2, int i3) {
        for (int i4 = 0; i4 < i * i2; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = (i4 * i3) + i5;
                fArr[i6] = fArr[i6] + fArr2[i5];
            }
        }
        return fArr;
    }

    /* renamed from: b */
    public static float[] m1711b(float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[fArr.length + fArr2.length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        return fArr3;
    }

    /* renamed from: c */
    public static float[] m1710c(float[] fArr, float[] fArr2, int i, int i2, int i3, int i4, int i5) {
        int i6 = (i2 - i4) + 1;
        float[] fArr3 = new float[i * i6 * i5];
        for (int i7 = 0; i7 < i; i7++) {
            for (int i8 = 0; i8 < i5; i8++) {
                for (int i9 = 0; i9 < i6; i9++) {
                    float f = 0.0f;
                    for (int i10 = 0; i10 < i4; i10++) {
                        for (int i11 = 0; i11 < i3; i11++) {
                            f += fArr[(i2 * i3 * i7) + ((i10 + i9) * i3) + i11] * fArr2[(((i10 * i3) + i11) * i5) + i8];
                        }
                    }
                    fArr3[(i5 * i6 * i7) + (i9 * i5) + i8] = f;
                }
            }
        }
        return fArr3;
    }

    /* renamed from: d */
    public static float[] m1709d(float[] fArr, float[] fArr2, float[] fArr3, int i, int i2, int i3) {
        float[] m1706g = m1706g(fArr, fArr2, i, i2, i3);
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = (i4 * i3) + i5;
                m1706g[i6] = m1706g[i6] + fArr3[i5];
            }
        }
        return m1706g;
    }

    /* renamed from: e */
    public static float[] m1708e(int[] iArr, float[] fArr, int i, int i2, int i3) {
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

    /* renamed from: f */
    public static float[] m1707f(float[] fArr, int i, int i2, int i3) {
        int i4 = (i - i3) + 1;
        float[] fArr2 = new float[i4 * i2];
        for (int i5 = 0; i5 < i2; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                for (int i7 = i6; i7 < i6 + i3; i7++) {
                    int i8 = (i6 * i2) + i5;
                    fArr2[i8] = Math.max(fArr2[i8], fArr[(i7 * i2) + i5]);
                }
            }
        }
        return fArr2;
    }

    /* renamed from: g */
    public static float[] m1706g(float[] fArr, float[] fArr2, int i, int i2, int i3) {
        float[] fArr3 = new float[i * i3];
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = (i4 * i3) + i5;
                fArr3[i6] = 0.0f;
                for (int i7 = 0; i7 < i2; i7++) {
                    fArr3[i6] = fArr3[i6] + (fArr[(i4 * i2) + i7] * fArr2[(i7 * i3) + i5]);
                }
            }
        }
        return fArr3;
    }

    /* renamed from: h */
    public static void m1705h(float[] fArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (fArr[i2] < 0.0f) {
                fArr[i2] = 0.0f;
            }
        }
    }

    /* renamed from: i */
    public static void m1704i(float[] fArr, int i) {
        int i2;
        float f = Float.MIN_VALUE;
        int i3 = 0;
        while (i3 < i) {
            float f2 = f;
            if (fArr[i3] > f) {
                f2 = fArr[i3];
            }
            i3++;
            f = f2;
        }
        for (int i4 = 0; i4 < i; i4++) {
            fArr[i4] = (float) Math.exp(fArr[i4] - f);
        }
        float f3 = 0.0f;
        int i5 = 0;
        while (true) {
            if (i5 < i) {
                f3 += fArr[i5];
                i5++;
            }
        }
        for (i2 = 0; i2 < i; i2++) {
            fArr[i2] = fArr[i2] / f3;
        }
    }

    /* renamed from: j */
    public static float[] m1703j(float[] fArr, int i, int i2) {
        float[] fArr2 = new float[i * i2];
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                fArr2[(i4 * i) + i3] = fArr[(i3 * i2) + i4];
            }
        }
        return fArr2;
    }

    /* renamed from: k */
    public static float[] m1702k(float[] fArr, int i, int i2, int i3) {
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
}
