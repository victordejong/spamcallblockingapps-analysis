package com.google.zxing.p406b.p407a;

import com.explorestack.iab.vast.VastError;
import com.explorestack.protobuf.openrtb.LossReason;
import com.mopub.mobileads.resource.DrawableConstants;
import io.objectbox.model.PropertyFlags;
/* renamed from: com.google.zxing.b.a.i */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/i.class */
public final class C16159i {

    /* renamed from: a */
    private static final int[] f57088a = {5, 7, 10, 11, 12, 14, 18, 20, 24, 28, 36, 42, 48, 56, 62, 68};

    /* renamed from: b */
    private static final int[][] f57089b = {new int[]{228, 48, 15, 111, 62}, new int[]{23, 68, 144, 134, 240, 92, 254}, new int[]{28, 24, 185, 166, 223, 248, 116, 255, 110, 61}, new int[]{175, 138, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, 12, 194, 168, 39, 245, 60, 97, 120}, new int[]{41, 153, 158, 91, 61, 42, 142, 213, 97, 178, 100, 242}, new int[]{156, 97, 192, 252, 95, 9, 157, 119, 138, 45, 18, 186, 83, 185}, new int[]{83, 195, 100, 39, 188, 75, 66, 61, 241, 213, 109, 129, 94, 254, 225, 48, 90, 188}, new int[]{15, 195, 244, 9, 233, 71, 168, 2, 188, 160, 153, 145, 253, 79, 108, 82, 27, 174, 186, 172}, new int[]{52, 190, 88, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, 109, 39, 176, 21, 155, 197, 251, 223, 155, 21, 5, 172, 254, 124, 12, 181, 184, 96, 50, 193}, new int[]{LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, 231, 43, 97, 71, 96, 103, 174, 37, 151, 170, 53, 75, 34, 249, 121, 17, 138, 110, 213, 141, 136, 120, 151, 233, 168, 93, 255}, new int[]{245, 127, 242, 218, 130, 250, 162, 181, 102, 120, 84, 179, 220, 251, 80, 182, 229, 18, 2, 4, 68, 33, 101, 137, 95, 119, 115, 44, 175, 184, 59, 25, 225, 98, 81, 112}, new int[]{77, 193, 137, 31, 19, 38, 22, 153, 247, 105, 122, 2, 245, 133, 242, 8, 175, 95, 100, 9, 167, 105, 214, 111, 57, 121, 21, 1, 253, 57, 54, 101, 248, 202, 69, 50, DrawableConstants.CtaButton.WIDTH_DIPS, 177, 226, 5, 9, 5}, new int[]{245, 132, 172, 223, 96, 32, 117, 22, 238, 133, 238, 231, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, 188, 237, 87, 191, 106, 16, 147, 118, 23, 37, 90, 170, LossReason.LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE, 131, 88, 120, 100, 66, 138, 186, 240, 82, 44, 176, 87, 187, 147, 160, 175, 69, 213, 92, 253, 225, 19}, new int[]{175, 9, 223, 238, 12, 17, 220, LossReason.LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE, 100, 29, 175, 170, 230, 192, 215, 235, DrawableConstants.CtaButton.WIDTH_DIPS, 159, 36, 223, 38, 200, 132, 54, 228, 146, 218, 234, 117, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 29, 232, 144, 238, 22, DrawableConstants.CtaButton.WIDTH_DIPS, 201, 117, 62, LossReason.LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS_VALUE, 164, 13, 137, 245, 127, 67, 247, 28, 155, 43, LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 107, 233, 53, 143, 46}, new int[]{242, 93, 169, 50, 144, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 39, 118, 202, 188, 201, 189, 143, 108, 196, 37, 185, 112, 134, 230, 245, 63, 197, 190, 250, 106, 185, 221, 175, 64, 114, 71, 161, 44, 147, 6, 27, 218, 51, 63, 87, 10, 40, 130, 188, 17, 163, 31, 176, 170, 4, 107, 232, 7, 94, 166, 224, 124, 86, 47, 11, LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE}, new int[]{220, 228, 173, 89, 251, 149, 159, 56, 89, 33, 147, 244, 154, 36, 73, 127, 213, 136, 248, 180, 234, 197, 158, 177, 68, 122, 93, 213, 15, 160, 227, 236, 66, 139, 153, 185, 202, 167, 179, 25, 220, 232, 96, LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 231, 136, 223, 239, 181, 241, 59, 52, 172, 25, 49, 232, LossReason.LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG_VALUE, 189, 64, 54, 108, 153, 132, 63, 96, 103, 82, 186}};

    /* renamed from: c */
    private static final int[] f57090c = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];

    /* renamed from: d */
    private static final int[] f57091d = new int[255];

    /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
    static {
        int i = 1;
        for (int i2 = 0; i2 < 255; i2++) {
            f57091d[i2] = i;
            f57090c[i] = i2;
            int i3 = i << 1;
            i = i3;
            if (i3 >= 256) {
                i = i3 ^ VastError.ERROR_CODE_BAD_URI;
            }
        }
    }

    private C16159i() {
    }

    /* renamed from: a */
    private static String m7727a(CharSequence charSequence, int i) {
        return m7726a(charSequence, charSequence.length(), i);
    }

    /* renamed from: a */
    private static String m7726a(CharSequence charSequence, int i, int i2) {
        int i3 = 0;
        while (true) {
            int[] iArr = f57088a;
            if (i3 >= iArr.length) {
                i3 = -1;
                break;
            } else if (iArr[i3] == i2) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 >= 0) {
            int[] iArr2 = f57089b[i3];
            char[] cArr = new char[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                cArr[i4] = (char) 0;
            }
            for (int i5 = 0; i5 < i + 0; i5++) {
                int i6 = i2 - 1;
                int charAt = cArr[i6] ^ charSequence.charAt(i5);
                while (i6 > 0) {
                    if (charAt == 0 || iArr2[i6] == 0) {
                        cArr[i6] = cArr[i6 - 1];
                    } else {
                        char c = cArr[i6 - 1];
                        int[] iArr3 = f57091d;
                        int[] iArr4 = f57090c;
                        cArr[i6] = (char) (c ^ iArr3[(iArr4[charAt] + iArr4[iArr2[i6]]) % 255]);
                    }
                    i6--;
                }
                if (charAt == 0 || iArr2[0] == 0) {
                    cArr[0] = (char) 0;
                } else {
                    int[] iArr5 = f57091d;
                    int[] iArr6 = f57090c;
                    cArr[0] = (char) iArr5[(iArr6[charAt] + iArr6[iArr2[0]]) % 255];
                }
            }
            char[] cArr2 = new char[i2];
            for (int i7 = 0; i7 < i2; i7++) {
                cArr2[i7] = cArr[(i2 - i7) - 1];
            }
            return String.valueOf(cArr2);
        }
        throw new IllegalArgumentException("Illegal number of error correction codewords specified: ".concat(String.valueOf(i2)));
    }

    /* renamed from: a */
    public static String m7725a(String str, C16161k c16161k) {
        if (str.length() == c16161k.f57094b) {
            StringBuilder sb = new StringBuilder(c16161k.f57094b + c16161k.f57095c);
            sb.append(str);
            int mo7715a = c16161k.mo7715a();
            if (mo7715a == 1) {
                sb.append(m7727a(str, c16161k.f57095c));
            } else {
                sb.setLength(sb.capacity());
                int[] iArr = new int[mo7715a];
                int[] iArr2 = new int[mo7715a];
                int[] iArr3 = new int[mo7715a];
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= mo7715a) {
                        break;
                    }
                    int i3 = i2 + 1;
                    iArr[i2] = c16161k.mo7714a(i3);
                    iArr2[i2] = c16161k.f57098f;
                    iArr3[i2] = 0;
                    if (i2 > 0) {
                        iArr3[i2] = iArr3[i2 - 1] + iArr[i2];
                    }
                    i = i3;
                }
                for (int i4 = 0; i4 < mo7715a; i4++) {
                    StringBuilder sb2 = new StringBuilder(iArr[i4]);
                    int i5 = i4;
                    while (true) {
                        int i6 = i5;
                        if (i6 >= c16161k.f57094b) {
                            break;
                        }
                        sb2.append(str.charAt(i6));
                        i5 = i6 + mo7715a;
                    }
                    String m7727a = m7727a(sb2.toString(), iArr2[i4]);
                    int i7 = i4;
                    int i8 = 0;
                    while (i7 < iArr2[i4] * mo7715a) {
                        sb.setCharAt(c16161k.f57094b + i7, m7727a.charAt(i8));
                        i7 += mo7715a;
                        i8++;
                    }
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
    }
}
