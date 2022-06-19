package com.google.zxing.pdf417.decoder;

import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.pdf417.PDF417Common;
/* loaded from: classes-dex2jar.jar:com/google/zxing/pdf417/decoder/PDF417CodewordDecoder.class */
public final class PDF417CodewordDecoder {
    private static final float[][] RATIOS_TABLE = new float[PDF417Common.SYMBOL_TABLE.length][8];

    static {
        int i;
        int i2 = 0;
        while (true) {
            int[] iArr = PDF417Common.SYMBOL_TABLE;
            if (i2 < iArr.length) {
                int i3 = iArr[i2];
                int i4 = i3 & 1;
                int i5 = 0;
                while (i5 < 8) {
                    float f = 0.0f;
                    while (true) {
                        i = i3 & 1;
                        if (i == i4) {
                            f += 1.0f;
                            i3 >>= 1;
                        }
                    }
                    RATIOS_TABLE[i2][(8 - i5) - 1] = f / 17.0f;
                    i5++;
                    i4 = i;
                }
                i2++;
            } else {
                return;
            }
        }
    }

    private PDF417CodewordDecoder() {
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    private static int getBitValue(int[] iArr) {
        char c = 0;
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[i]; i2++) {
                int i3 = 1;
                if (i % 2 != 0) {
                    i3 = 0;
                }
                c = (c << 1) | i3;
            }
        }
        return c;
    }

    private static int getClosestDecodedValue(int[] iArr) {
        float f;
        int sum = MathUtils.sum(iArr);
        float[] fArr = new float[8];
        if (sum > 1) {
            for (int i = 0; i < 8; i++) {
                fArr[i] = iArr[i] / sum;
            }
        }
        float f2 = Float.MAX_VALUE;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            float[][] fArr2 = RATIOS_TABLE;
            if (i3 < fArr2.length) {
                float f3 = 0.0f;
                float[] fArr3 = fArr2[i3];
                int i4 = 0;
                while (true) {
                    f = f3;
                    if (i4 >= 8) {
                        break;
                    }
                    float f4 = fArr3[i4] - fArr[i4];
                    f3 += f4 * f4;
                    f = f3;
                    if (f3 >= f2) {
                        break;
                    }
                    i4++;
                }
                float f5 = f2;
                if (f < f2) {
                    i2 = PDF417Common.SYMBOL_TABLE[i3];
                    f5 = f;
                }
                i3++;
                f2 = f5;
            } else {
                return i2;
            }
        }
    }

    private static int getDecodedCodewordValue(int[] iArr) {
        int bitValue = getBitValue(iArr);
        if (PDF417Common.getCodeword(bitValue) == -1) {
            return -1;
        }
        return bitValue;
    }

    public static int getDecodedValue(int[] iArr) {
        int decodedCodewordValue = getDecodedCodewordValue(sampleBitCounts(iArr));
        return decodedCodewordValue != -1 ? decodedCodewordValue : getClosestDecodedValue(iArr);
    }

    private static int[] sampleBitCounts(int[] iArr) {
        float sum = MathUtils.sum(iArr);
        int[] iArr2 = new int[8];
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i < 17) {
                int i5 = i2;
                int i6 = i4;
                if (iArr[i4] + i2 <= (sum / 34.0f) + ((i * sum) / 17.0f)) {
                    i5 = i2 + iArr[i4];
                    i6 = i4 + 1;
                }
                iArr2[i6] = iArr2[i6] + 1;
                i++;
                i2 = i5;
                i3 = i6;
            } else {
                return iArr2;
            }
        }
    }
}
