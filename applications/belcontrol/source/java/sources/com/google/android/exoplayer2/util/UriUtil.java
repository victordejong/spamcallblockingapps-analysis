package com.google.android.exoplayer2.util;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/UriUtil.class */
public final class UriUtil {
    private static final int FRAGMENT = 3;
    private static final int INDEX_COUNT = 4;
    private static final int PATH = 1;
    private static final int QUERY = 2;
    private static final int SCHEME_COLON = 0;

    private UriUtil() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        if (r0 > r7) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
        if (r0 > r8) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bc, code lost:
        if (r0 > r8) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[] getUriIndices(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.UriUtil.getUriIndices(java.lang.String):int[]");
    }

    private static String removeDotSegments(StringBuilder sb, int i, int i2) {
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

    public static Uri removeQueryParameter(Uri uri, String str) {
        Uri.Builder buildUpon = uri.buildUpon();
        buildUpon.clearQuery();
        for (String str2 : uri.getQueryParameterNames()) {
            if (!str2.equals(str)) {
                for (String str3 : uri.getQueryParameters(str2)) {
                    buildUpon.appendQueryParameter(str2, str3);
                }
            }
        }
        return buildUpon.build();
    }

    public static String resolve(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String str4 = str2;
        if (str2 == null) {
            str4 = "";
        }
        int[] uriIndices = getUriIndices(str4);
        if (uriIndices[0] != -1) {
            sb.append(str4);
            removeDotSegments(sb, uriIndices[1], uriIndices[2]);
            return sb.toString();
        }
        int[] uriIndices2 = getUriIndices(str3);
        if (uriIndices[3] == 0) {
            sb.append((CharSequence) str3, 0, uriIndices2[3]);
            sb.append(str4);
            return sb.toString();
        } else if (uriIndices[2] == 0) {
            sb.append((CharSequence) str3, 0, uriIndices2[2]);
            sb.append(str4);
            return sb.toString();
        } else if (uriIndices[1] != 0) {
            int i = uriIndices2[0] + 1;
            sb.append((CharSequence) str3, 0, i);
            sb.append(str4);
            return removeDotSegments(sb, uriIndices[1] + i, i + uriIndices[2]);
        } else if (str4.charAt(uriIndices[1]) == '/') {
            sb.append((CharSequence) str3, 0, uriIndices2[1]);
            sb.append(str4);
            return removeDotSegments(sb, uriIndices2[1], uriIndices2[1] + uriIndices[2]);
        } else if (uriIndices2[0] + 2 < uriIndices2[1] && uriIndices2[1] == uriIndices2[2]) {
            sb.append((CharSequence) str3, 0, uriIndices2[1]);
            sb.append('/');
            sb.append(str4);
            return removeDotSegments(sb, uriIndices2[1], uriIndices2[1] + uriIndices[2] + 1);
        } else {
            int lastIndexOf = str3.lastIndexOf(47, uriIndices2[2] - 1);
            int i2 = lastIndexOf == -1 ? uriIndices2[1] : lastIndexOf + 1;
            sb.append((CharSequence) str3, 0, i2);
            sb.append(str4);
            return removeDotSegments(sb, uriIndices2[1], i2 + uriIndices[2]);
        }
    }

    public static Uri resolveToUri(String str, String str2) {
        return Uri.parse(resolve(str, str2));
    }
}
