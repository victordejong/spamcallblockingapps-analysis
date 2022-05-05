package androidx.media2.exoplayer.external.util;

import android.net.Uri;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/UriUtil.class */
public final class UriUtil {
    public static final int FRAGMENT = 3;
    public static final int INDEX_COUNT = 4;
    public static final int PATH = 1;
    public static final int QUERY = 2;
    public static final int SCHEME_COLON = 0;

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
    public static int[] getUriIndices(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.UriUtil.getUriIndices(java.lang.String):int[]");
    }

    public static String removeDotSegments(StringBuilder sb, int i, int i2) {
        int i3;
        if (i >= i2) {
            return sb.toString();
        }
        int i4 = i;
        if (sb.charAt(i) == '/') {
            i4 = i + 1;
        }
        int i5 = i4;
        int i6 = i2;
        while (true) {
            for (int i7 = i5; i7 <= i6; i7++) {
                if (i7 == i6) {
                    i3 = i7;
                } else if (sb.charAt(i7) == '/') {
                    i3 = i7 + 1;
                }
                int i8 = i5 + 1;
                if (i7 == i8 && sb.charAt(i5) == '.') {
                    sb.delete(i5, i3);
                    i6 -= i3 - i5;
                } else if (i7 == i5 + 2 && sb.charAt(i5) == '.' && sb.charAt(i8) == '.') {
                    i5 = sb.lastIndexOf("/", i5 - 2) + 1;
                    int i9 = i5 > i4 ? i5 : i4;
                    sb.delete(i9, i3);
                    i6 -= i3 - i9;
                } else {
                    i5 = i7 + 1;
                }
            }
            return sb.toString();
        }
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
        } else if (uriIndices2[0] + 2 >= uriIndices2[1] || uriIndices2[1] != uriIndices2[2]) {
            int lastIndexOf = str3.lastIndexOf(47, uriIndices2[2] - 1);
            int i2 = lastIndexOf == -1 ? uriIndices2[1] : lastIndexOf + 1;
            sb.append((CharSequence) str3, 0, i2);
            sb.append(str4);
            return removeDotSegments(sb, uriIndices2[1], i2 + uriIndices[2]);
        } else {
            sb.append((CharSequence) str3, 0, uriIndices2[1]);
            sb.append('/');
            sb.append(str4);
            return removeDotSegments(sb, uriIndices2[1], uriIndices2[1] + uriIndices[2] + 1);
        }
    }

    public static Uri resolveToUri(String str, String str2) {
        return Uri.parse(resolve(str, str2));
    }
}
