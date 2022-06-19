package com.google.android.gms.internal.ads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aaj.class */
public final class aaj {
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
    public static eap m18953a(emg emgVar) {
        char c;
        char c2;
        boolean z;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = emgVar.f49173c;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        char m18951b = str != null ? m18951b(str) : (char) 0;
        String str2 = map.get("Cache-Control");
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
        String str3 = map.get("Expires");
        char m18951b2 = str3 != null ? m18951b(str3) : (char) 0;
        String str4 = map.get("Last-Modified");
        char m18951b3 = str4 != null ? m18951b(str4) : (char) 0;
        String str5 = map.get("ETag");
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
            if (m18951b <= 0 || m18951b2 < m18951b) {
                c3 = 0;
            } else {
                c3 = currentTimeMillis + (m18951b2 - m18951b);
                c4 = c3;
            }
        }
        eap eapVar = new eap();
        eapVar.f48516a = emgVar.f49172b;
        eapVar.f48517b = str5;
        eapVar.f48521f = c3;
        eapVar.f48520e = c4;
        eapVar.f48518c = m18951b;
        eapVar.f48519d = m18951b3;
        eapVar.f48522g = map;
        eapVar.f48523h = emgVar.f49174d;
        return eapVar;
    }

    /* renamed from: a */
    public static SimpleDateFormat m18952a(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    /* renamed from: b */
    private static long m18951b(String str) {
        try {
            return m18952a("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e) {
            if ("0".equals(str) || "-1".equals(str)) {
                C12759mz.m14482a("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            C12759mz.m14481a(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }
}
