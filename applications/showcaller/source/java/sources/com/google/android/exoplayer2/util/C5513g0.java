package com.google.android.exoplayer2.util;

import android.net.Uri;
/* renamed from: com.google.android.exoplayer2.util.g0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/g0.class */
public final class C5513g0 {
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        if (r0 > r8) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
        if (r0 > r7) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bc, code lost:
        if (r0 > r7) goto L36;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] m18880a(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C5513g0.m18880a(java.lang.String):int[]");
    }

    /* renamed from: b */
    private static String m18879b(StringBuilder sb, int i, int i2) {
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
        int i7 = i6;
        while (i6 <= i2) {
            if (i6 == i2) {
                i3 = i6;
            } else if (sb.charAt(i6) == '/') {
                i3 = i6 + 1;
            } else {
                i6++;
            }
            int i8 = i7 + 1;
            if (i6 == i8 && sb.charAt(i7) == '.') {
                sb.delete(i7, i3);
                i2 -= i3 - i7;
            } else {
                if (i6 == i7 + 2 && sb.charAt(i7) == '.' && sb.charAt(i8) == '.') {
                    i4 = sb.lastIndexOf("/", i7 - 2) + 1;
                    int i9 = i4 > i5 ? i4 : i5;
                    sb.delete(i9, i3);
                    i2 -= i3 - i9;
                } else {
                    i4 = i6 + 1;
                }
                i7 = i4;
            }
            i6 = i7;
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m18878c(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String str4 = str2;
        if (str2 == null) {
            str4 = "";
        }
        int[] m18880a = m18880a(str4);
        if (m18880a[0] != -1) {
            sb.append(str4);
            m18879b(sb, m18880a[1], m18880a[2]);
            return sb.toString();
        }
        int[] m18880a2 = m18880a(str3);
        if (m18880a[3] == 0) {
            sb.append((CharSequence) str3, 0, m18880a2[3]);
            sb.append(str4);
            return sb.toString();
        } else if (m18880a[2] == 0) {
            sb.append((CharSequence) str3, 0, m18880a2[2]);
            sb.append(str4);
            return sb.toString();
        } else if (m18880a[1] != 0) {
            int i = m18880a2[0] + 1;
            sb.append((CharSequence) str3, 0, i);
            sb.append(str4);
            return m18879b(sb, m18880a[1] + i, i + m18880a[2]);
        } else if (str4.charAt(m18880a[1]) == '/') {
            sb.append((CharSequence) str3, 0, m18880a2[1]);
            sb.append(str4);
            return m18879b(sb, m18880a2[1], m18880a2[1] + m18880a[2]);
        } else if (m18880a2[0] + 2 < m18880a2[1] && m18880a2[1] == m18880a2[2]) {
            sb.append((CharSequence) str3, 0, m18880a2[1]);
            sb.append('/');
            sb.append(str4);
            return m18879b(sb, m18880a2[1], m18880a2[1] + m18880a[2] + 1);
        } else {
            int lastIndexOf = str3.lastIndexOf(47, m18880a2[2] - 1);
            int i2 = lastIndexOf == -1 ? m18880a2[1] : lastIndexOf + 1;
            sb.append((CharSequence) str3, 0, i2);
            sb.append(str4);
            return m18879b(sb, m18880a2[1], i2 + m18880a[2]);
        }
    }

    /* renamed from: d */
    public static Uri m18877d(String str, String str2) {
        return Uri.parse(m18878c(str, str2));
    }
}
