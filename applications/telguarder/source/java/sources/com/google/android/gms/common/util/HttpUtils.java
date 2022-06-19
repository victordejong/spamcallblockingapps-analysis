package com.google.android.gms.common.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/HttpUtils.class */
public class HttpUtils {
    private static final Pattern zza = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
    private static final Pattern zzb = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
    private static final Pattern zzc = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    private HttpUtils() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0084, code lost:
        throw new java.lang.IllegalArgumentException("bad parameter");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> parse(java.net.URI r4, java.lang.String r5) {
        /*
            java.util.Map r0 = java.util.Collections.emptyMap()
            r6 = r0
            r0 = r4
            java.lang.String r0 = r0.getRawQuery()
            r7 = r0
            r0 = r6
            r4 = r0
            r0 = r7
            if (r0 == 0) goto L85
            r0 = r6
            r4 = r0
            r0 = r7
            int r0 = r0.length()
            if (r0 <= 0) goto L85
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r6 = r0
            java.util.Scanner r0 = new java.util.Scanner
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "&"
            java.util.Scanner r0 = r0.useDelimiter(r1)
        L30:
            r0 = r6
            r4 = r0
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L85
            r0 = r7
            java.lang.String r0 = r0.next()
            java.lang.String r1 = "="
            java.lang.String[] r0 = r0.split(r1)
            r4 = r0
            r0 = r4
            int r0 = r0.length
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L7b
            r0 = r8
            r1 = 2
            if (r0 > r1) goto L7b
            r0 = r4
            r1 = 0
            r0 = r0[r1]
            r1 = r5
            java.lang.String r0 = zza(r0, r1)
            r9 = r0
            r0 = r8
            r1 = 2
            if (r0 != r1) goto L6c
            r0 = r4
            r1 = 1
            r0 = r0[r1]
            r1 = r5
            java.lang.String r0 = zza(r0, r1)
            r4 = r0
            goto L6e
        L6c:
            r0 = 0
            r4 = r0
        L6e:
            r0 = r6
            r1 = r9
            r2 = r4
            java.lang.Object r0 = r0.put(r1, r2)
            goto L30
        L7b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "bad parameter"
            r1.<init>(r2)
            throw r0
        L85:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.HttpUtils.parse(java.net.URI, java.lang.String):java.util.Map");
    }

    private static String zza(String str, String str2) {
        String str3 = str2;
        if (str2 == null) {
            str3 = "ISO-8859-1";
        }
        try {
            return URLDecoder.decode(str, str3);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
