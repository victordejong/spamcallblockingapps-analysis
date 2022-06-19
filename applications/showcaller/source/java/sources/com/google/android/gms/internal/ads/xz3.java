package com.google.android.gms.internal.ads;

import com.yanzhenjie.nohttp.Headers;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xz3.class */
public final class xz3 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70 */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92 */
    /* renamed from: a */
    public static oy3 m9012a(zy3 zy3Var) {
        char c;
        char c2;
        boolean z;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = zy3Var.f33457c;
        if (map == null) {
            return null;
        }
        String str = map.get(Headers.HEAD_KEY_DATE);
        char m9011b = str != null ? m9011b(str) : (char) 0;
        String str2 = map.get(Headers.HEAD_KEY_CACHE_CONTROL);
        boolean z2 = false;
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            z2 = false;
            c2 = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i >= split.length) {
                    z = true;
                    break;
                }
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        c6 = Long.parseLong(trim.substring(8));
                        c7 = c;
                    } catch (Exception e) {
                        c6 = c2;
                        c7 = c;
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    c7 = Long.parseLong(trim.substring(23));
                    c6 = c2;
                } else {
                    if (!trim.equals("must-revalidate")) {
                        c6 = c2;
                        c7 = c;
                        if (!trim.equals("proxy-revalidate")) {
                        }
                    }
                    z2 = true;
                    c7 = c;
                    c6 = c2;
                }
                i++;
                c2 = c6;
                r0 = c7;
            }
        } else {
            z = false;
            c2 = 0;
            c = 0;
        }
        String str3 = map.get(Headers.HEAD_KEY_EXPIRES);
        char m9011b2 = str3 != null ? m9011b(str3) : (char) 0;
        String str4 = map.get(Headers.HEAD_KEY_LAST_MODIFIED);
        char m9011b3 = str4 != null ? m9011b(str4) : (char) 0;
        String str5 = map.get(Headers.HEAD_KEY_E_TAG);
        if (z) {
            ?? r02 = currentTimeMillis + (c2 * 1000);
            if (z2) {
                c5 = r02;
            } else {
                Long.signum(c);
                c5 = (c * 1000) + r02;
            }
            char c8 = c5;
            c3 = r02;
            c4 = c8;
        } else {
            c4 = 0;
            if (m9011b <= 0 || m9011b2 < m9011b) {
                c3 = 0;
            } else {
                c3 = currentTimeMillis + (m9011b2 - m9011b);
                c4 = c3;
            }
        }
        oy3 oy3Var = new oy3();
        oy3Var.f27789a = zy3Var.f33456b;
        oy3Var.f27790b = str5;
        oy3Var.f27794f = c3;
        oy3Var.f27793e = c4;
        oy3Var.f27791c = m9011b;
        oy3Var.f27792d = m9011b3;
        oy3Var.f27795g = map;
        oy3Var.f27796h = zy3Var.f33458d;
        return oy3Var;
    }

    /* renamed from: b */
    public static long m9011b(String str) {
        try {
            return m9009d("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e) {
            if ("0".equals(str) || "-1".equals(str)) {
                mz3.m13040a("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            mz3.m13037d(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    /* renamed from: c */
    public static String m9010c(long j) {
        return m9009d("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j));
    }

    /* renamed from: d */
    private static SimpleDateFormat m9009d(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
