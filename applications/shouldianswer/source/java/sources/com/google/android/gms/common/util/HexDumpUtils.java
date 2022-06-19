package com.google.android.gms.common.util;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/HexDumpUtils.class */
public final class HexDumpUtils {
    public static String dump(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        int i4;
        if (bArr == null || bArr.length == 0 || i < 0 || i2 <= 0 || i + i2 > bArr.length) {
            return null;
        }
        int i5 = 57;
        if (z) {
            i5 = 75;
        }
        StringBuilder sb = new StringBuilder(i5 * (((i2 + 16) - 1) / 16));
        int i6 = i2;
        int i7 = 0;
        int i8 = 0;
        while (i6 > 0) {
            if (i7 == 0) {
                if (i2 < 65536) {
                    sb.append(String.format("%04X:", Integer.valueOf(i)));
                } else {
                    sb.append(String.format("%08X:", Integer.valueOf(i)));
                }
                i3 = i;
            } else {
                i3 = i8;
                if (i7 == 8) {
                    sb.append(" -");
                    i3 = i8;
                }
            }
            sb.append(String.format(" %02X", Integer.valueOf(bArr[i] & 255)));
            int i9 = i6 - 1;
            int i10 = i7 + 1;
            if (z && (i10 == 16 || i9 == 0)) {
                int i11 = 16 - i10;
                if (i11 > 0) {
                    for (int i12 = 0; i12 < i11; i12++) {
                        sb.append("   ");
                    }
                }
                if (i11 >= 8) {
                    sb.append("  ");
                }
                sb.append("  ");
                for (int i13 = 0; i13 < i10; i13++) {
                    char c = (char) bArr[i3 + i13];
                    if (c < ' ' || c > '~') {
                        c = '.';
                    }
                    sb.append(c);
                }
            }
            if (i10 != 16) {
                i4 = i10;
                if (i9 != 0) {
                    i++;
                    i7 = i4;
                    i8 = i3;
                    i6 = i9;
                }
            }
            sb.append('\n');
            i4 = 0;
            i++;
            i7 = i4;
            i8 = i3;
            i6 = i9;
        }
        return sb.toString();
    }
}
