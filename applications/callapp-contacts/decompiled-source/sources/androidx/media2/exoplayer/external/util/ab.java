package androidx.media2.exoplayer.external.util;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/ab.class */
public final class ab {
    private ab() {
    }

    public static Uri a(String str, String str2) {
        return Uri.parse(b(str, str2));
    }

    private static String a(StringBuilder sb, int i, int i2) {
        int i3;
        int i4;
        if (i >= i2) {
            return sb.toString();
        }
        int i5 = i;
        if (sb.charAt(i) == '/') {
            i5 = i + 1;
        }
        int i6 = i5;
        int i7 = i2;
        int i8 = i6;
        while (i6 <= i7) {
            if (i6 == i7) {
                i3 = i6;
            } else if (sb.charAt(i6) == '/') {
                i3 = i6 + 1;
            } else {
                i6++;
            }
            int i9 = i8 + 1;
            if (i6 == i9 && sb.charAt(i8) == '.') {
                sb.delete(i8, i3);
                i4 = i3 - i8;
            } else if (i6 == i8 + 2 && sb.charAt(i8) == '.' && sb.charAt(i9) == '.') {
                i8 = sb.lastIndexOf("/", i8 - 2) + 1;
                int i10 = i8 > i5 ? i8 : i5;
                sb.delete(i10, i3);
                i4 = i3 - i10;
            } else {
                i8 = i6 + 1;
                i6 = i8;
            }
            i7 -= i4;
            i6 = i8;
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        if (r0 > r8) goto L_0x003e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
        if (r0 > r7) goto L_0x0058;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bc, code lost:
        if (r0 > r7) goto L_0x00bf;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] a(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.ab.a(java.lang.String):int[]");
    }

    private static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String str4 = str2;
        if (str2 == null) {
            str4 = "";
        }
        int[] a2 = a(str4);
        if (a2[0] != -1) {
            sb.append(str4);
            a(sb, a2[1], a2[2]);
            return sb.toString();
        }
        int[] a3 = a(str3);
        if (a2[3] == 0) {
            sb.append((CharSequence) str3, 0, a3[3]);
            sb.append(str4);
            return sb.toString();
        } else if (a2[2] == 0) {
            sb.append((CharSequence) str3, 0, a3[2]);
            sb.append(str4);
            return sb.toString();
        } else if (a2[1] != 0) {
            int i = a3[0] + 1;
            sb.append((CharSequence) str3, 0, i);
            sb.append(str4);
            return a(sb, a2[1] + i, i + a2[2]);
        } else if (str4.charAt(a2[1]) == '/') {
            sb.append((CharSequence) str3, 0, a3[1]);
            sb.append(str4);
            return a(sb, a3[1], a3[1] + a2[2]);
        } else if (a3[0] + 2 >= a3[1] || a3[1] != a3[2]) {
            int lastIndexOf = str3.lastIndexOf(47, a3[2] - 1);
            int i2 = lastIndexOf == -1 ? a3[1] : lastIndexOf + 1;
            sb.append((CharSequence) str3, 0, i2);
            sb.append(str4);
            return a(sb, a3[1], i2 + a2[2]);
        } else {
            sb.append((CharSequence) str3, 0, a3[1]);
            sb.append('/');
            sb.append(str4);
            return a(sb, a3[1], a3[1] + a2[2] + 1);
        }
    }
}
