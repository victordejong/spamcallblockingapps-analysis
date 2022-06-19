package com.google.zxing.datamatrix.encoder;

import com.androidplot.BuildConfig;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.pubmatic.sdk.video.POBVastError;
import kotlin.text.Typography;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/datamatrix/encoder/ErrorCorrection.class */
public final class ErrorCorrection {
    private static final int MODULO_VALUE = 301;
    private static final int[] FACTOR_SETS = {5, 7, 10, 11, 12, 14, 18, 20, 24, 28, 36, 42, 48, 56, 62, 68};
    private static final int[][] FACTORS = {new int[]{228, 48, 15, 111, 62}, new int[]{23, 68, 144, 134, 240, 92, 254}, new int[]{28, 24, 185, 166, 223, 248, 116, 255, 110, 61}, new int[]{175, 138, POBVastError.RECEIVED_BLOCKED_AD_CATEGORIES, 12, 194, 168, 39, 245, 60, 97, 120}, new int[]{41, 153, 158, 91, 61, 42, 142, 213, 97, 178, 100, 242}, new int[]{156, 97, 192, 252, 95, 9, 157, 119, 138, 45, 18, 186, 83, 185}, new int[]{83, 195, 100, 39, 188, 75, 66, 61, 241, 213, 109, 129, 94, 254, BuildConfig.VERSION_CODE, 48, 90, 188}, new int[]{15, 195, 244, 9, 233, 71, 168, 2, 188, Typography.nbsp, 153, 145, 253, 79, 108, 82, 27, Typography.registered, 186, 172}, new int[]{52, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 88, POBVastError.RECEIVED_BLOCKED_AD_CATEGORIES, 109, 39, Typography.degree, 21, 155, 197, 251, 223, 155, 21, 5, 172, 254, 124, 12, 181, 184, 96, 50, 193}, new int[]{211, 231, 43, 97, 71, 96, 103, Typography.registered, 37, 151, 170, 53, 75, 34, 249, 121, 17, 138, 110, 213, 141, 136, 120, 151, 233, 168, 93, 255}, new int[]{245, 127, 242, 218, 130, 250, Typography.cent, 181, 102, 120, 84, 179, 220, 251, 80, Typography.paragraph, 229, 18, 2, 4, 68, 33, 101, 137, 95, 119, 115, 44, 175, 184, 59, 25, BuildConfig.VERSION_CODE, 98, 81, 112}, new int[]{77, 193, 137, 31, 19, 38, 22, 153, 247, 105, 122, 2, 245, 133, 242, 8, 175, 95, 100, 9, Typography.section, 105, 214, 111, 57, 121, 21, 1, 253, 57, 54, 101, 248, POBVastError.INCORRECT_DURATION, 69, 50, 150, Typography.plusMinus, 226, 5, 9, 5}, new int[]{245, 132, 172, 223, 96, 32, 117, 22, 238, 133, 238, 231, POBVastError.RECEIVED_BLOCKED_AD_CATEGORIES, 188, 237, 87, 191, 106, 16, 147, 118, 23, 37, 90, 170, POBVastError.RECEIVED_BLOCKED_AD_CATEGORIES, 131, 88, 120, 100, 66, 138, 186, 240, 82, 44, Typography.degree, 87, Typography.rightGuillemete, 147, Typography.nbsp, 175, 69, 213, 92, 253, BuildConfig.VERSION_CODE, 19}, new int[]{175, 9, 223, 238, 12, 17, 220, 208, 100, 29, 175, 170, 230, 192, Typography.times, 235, 150, 159, 36, 223, 38, 200, 132, 54, 228, 146, 218, 234, 117, POBVastError.INCORRECT_SIZE, 29, 232, 144, 238, 22, 150, POBVastError.INCORRECT_LINEARITY, 117, 62, 207, 164, 13, 137, 245, 127, 67, 247, 28, 155, 43, POBVastError.INCORRECT_SIZE, 107, 233, 53, 143, 46}, new int[]{242, 93, Typography.copyright, 50, 144, 210, 39, 118, POBVastError.INCORRECT_DURATION, 188, POBVastError.INCORRECT_LINEARITY, Typography.half, 143, 108, 196, 37, 185, 112, 134, 230, 245, 63, 197, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 250, 106, 185, 221, 175, 64, 114, 71, 161, 44, 147, 6, 27, 218, 51, 63, 87, 10, 40, 130, 188, 17, Typography.pound, 31, Typography.degree, 170, 4, 107, 232, 7, 94, 166, 224, 124, 86, 47, 11, POBVastError.MISSING_AD_CATEGORY}, new int[]{220, 228, 173, 89, 251, 149, 159, 56, 89, 33, 147, 244, 154, 36, 73, 127, 213, 136, 248, 180, 234, 197, 158, Typography.plusMinus, 68, 122, 93, 213, 15, Typography.nbsp, 227, 236, 66, 139, 153, 185, POBVastError.INCORRECT_DURATION, Typography.section, 179, 25, 220, 232, 96, 210, 231, 136, 223, 239, 181, 241, 59, 52, 172, 25, 49, 232, 211, Typography.half, 64, 54, 108, 153, 132, 63, 96, 103, 82, 186}};
    private static final int[] LOG = new int[256];
    private static final int[] ALOG = new int[255];

    /* JADX WARN: Type inference failed for: r0v8, types: [int[], int[][]] */
    static {
        int i = 1;
        for (int i2 = 0; i2 < 255; i2++) {
            ALOG[i2] = i;
            LOG[i] = i2;
            int i3 = i << 1;
            i = i3;
            if (i3 >= 256) {
                i = i3 ^ 301;
            }
        }
    }

    private ErrorCorrection() {
    }

    private static String createECCBlock(CharSequence charSequence, int i) {
        return createECCBlock(charSequence, 0, charSequence.length(), i);
    }

    private static String createECCBlock(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = 0;
        while (true) {
            int[] iArr = FACTOR_SETS;
            if (i4 >= iArr.length) {
                i4 = -1;
                break;
            } else if (iArr[i4] == i3) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 >= 0) {
            int[] iArr2 = FACTORS[i4];
            char[] cArr = new char[i3];
            for (int i5 = 0; i5 < i3; i5++) {
                cArr[i5] = (char) 0;
            }
            for (int i6 = i; i6 < i + i2; i6++) {
                int i7 = i3 - 1;
                int charAt = cArr[i7] ^ charSequence.charAt(i6);
                while (i7 > 0) {
                    if (charAt == 0 || iArr2[i7] == 0) {
                        cArr[i7] = cArr[i7 - 1];
                    } else {
                        char c = cArr[i7 - 1];
                        int[] iArr3 = ALOG;
                        int[] iArr4 = LOG;
                        cArr[i7] = (char) (c ^ iArr3[(iArr4[charAt] + iArr4[iArr2[i7]]) % 255]);
                    }
                    i7--;
                }
                if (charAt == 0 || iArr2[0] == 0) {
                    cArr[0] = (char) 0;
                } else {
                    int[] iArr5 = ALOG;
                    int[] iArr6 = LOG;
                    cArr[0] = (char) iArr5[(iArr6[charAt] + iArr6[iArr2[0]]) % 255];
                }
            }
            char[] cArr2 = new char[i3];
            for (int i8 = 0; i8 < i3; i8++) {
                cArr2[i8] = cArr[(i3 - i8) - 1];
            }
            return String.valueOf(cArr2);
        }
        throw new IllegalArgumentException("Illegal number of error correction codewords specified: ".concat(String.valueOf(i3)));
    }

    public static String encodeECC200(String str, SymbolInfo symbolInfo) {
        if (str.length() == symbolInfo.getDataCapacity()) {
            StringBuilder sb = new StringBuilder(symbolInfo.getDataCapacity() + symbolInfo.getErrorCodewords());
            sb.append(str);
            int interleavedBlockCount = symbolInfo.getInterleavedBlockCount();
            if (interleavedBlockCount == 1) {
                sb.append(createECCBlock(str, symbolInfo.getErrorCodewords()));
            } else {
                sb.setLength(sb.capacity());
                int[] iArr = new int[interleavedBlockCount];
                int[] iArr2 = new int[interleavedBlockCount];
                int[] iArr3 = new int[interleavedBlockCount];
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= interleavedBlockCount) {
                        break;
                    }
                    int i3 = i2 + 1;
                    iArr[i2] = symbolInfo.getDataLengthForInterleavedBlock(i3);
                    iArr2[i2] = symbolInfo.getErrorLengthForInterleavedBlock(i3);
                    iArr3[i2] = 0;
                    if (i2 > 0) {
                        iArr3[i2] = iArr3[i2 - 1] + iArr[i2];
                    }
                    i = i3;
                }
                for (int i4 = 0; i4 < interleavedBlockCount; i4++) {
                    StringBuilder sb2 = new StringBuilder(iArr[i4]);
                    int i5 = i4;
                    while (true) {
                        int i6 = i5;
                        if (i6 >= symbolInfo.getDataCapacity()) {
                            break;
                        }
                        sb2.append(str.charAt(i6));
                        i5 = i6 + interleavedBlockCount;
                    }
                    String createECCBlock = createECCBlock(sb2.toString(), iArr2[i4]);
                    int i7 = i4;
                    int i8 = 0;
                    while (i7 < iArr2[i4] * interleavedBlockCount) {
                        sb.setCharAt(symbolInfo.getDataCapacity() + i7, createECCBlock.charAt(i8));
                        i7 += interleavedBlockCount;
                        i8++;
                    }
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
    }
}
