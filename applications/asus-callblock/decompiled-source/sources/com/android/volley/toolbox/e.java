package com.android.volley.toolbox;

import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/e.class */
public final class e {
    private static long a(String str) {
        long j;
        try {
            j = DateUtils.parseDate(str).getTime();
        } catch (DateParseException e) {
            j = 0;
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.android.volley.b.a a(com.android.volley.j r7) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.e.a(com.android.volley.j):com.android.volley.b$a");
    }

    public static String a(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        String str3 = str;
        if (str2 != null) {
            String[] split = str2.split(";");
            int i = 1;
            while (true) {
                str3 = str;
                if (i >= split.length) {
                    break;
                }
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals("charset")) {
                    str3 = split2[1];
                    break;
                }
                i++;
            }
        }
        return str3;
    }
}
