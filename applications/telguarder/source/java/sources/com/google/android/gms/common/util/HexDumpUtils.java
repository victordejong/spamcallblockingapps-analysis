package com.google.android.gms.common.util;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/HexDumpUtils.class */
public final class HexDumpUtils {
    public static String dump(byte[] bArr, int i, int i2, boolean z) {
        int length;
        int i3;
        char c;
        if (bArr == null || (length = bArr.length) == 0 || i < 0 || i2 <= 0 || i + i2 > length) {
            return null;
        }
        StringBuilder sb = new StringBuilder((z ? 75 : 57) * ((i2 + 15) / 16));
        int i4 = i2;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i4 <= 0) {
                return sb.toString();
            }
            if (i5 == 0) {
                if (i2 < 65536) {
                    sb.append(String.format("%04X:", Integer.valueOf(i)));
                } else {
                    sb.append(String.format("%08X:", Integer.valueOf(i)));
                }
                i3 = i;
            } else {
                i3 = i7;
                if (i5 == 8) {
                    sb.append(" -");
                    i3 = i7;
                }
            }
            sb.append(String.format(" %02X", Integer.valueOf(bArr[i] & 255)));
            i4--;
            int i8 = i5 + 1;
            if (z && (i8 == 16 || i4 == 0)) {
                int i9 = 16 - i8;
                if (i9 > 0) {
                    for (int i10 = 0; i10 < i9; i10++) {
                        sb.append("   ");
                    }
                }
                if (i9 >= 8) {
                    sb.append("  ");
                }
                sb.append("  ");
                for (int i11 = 0; i11 < i8; i11++) {
                    char c2 = (char) bArr[i3 + i11];
                    if (c2 >= ' ') {
                        c = c2;
                        if (c2 <= '~') {
                            sb.append(c);
                        }
                    }
                    c = '.';
                    sb.append(c);
                }
            }
            if (i8 != 16) {
                i5 = i8;
                if (i4 != 0) {
                    i++;
                    i6 = i3;
                }
            }
            sb.append('\n');
            i5 = 0;
            i++;
            i6 = i3;
        }
    }
}
