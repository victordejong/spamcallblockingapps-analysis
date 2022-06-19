package com.google.android.gms.internal.ads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* renamed from: com.google.android.gms.internal.ads.qn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qn.class */
public final class C3441qn {
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: a */
    private static long m7302a(String str) {
        char c;
        try {
            c = m7305a().parse(str).getTime();
        } catch (ParseException e) {
            C3128ez.m7852a(e, "Unable to parse dateStr: %s, falling back to 0", str);
            c = 0;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* renamed from: a */
    public static bzv m7303a(drt drtVar) {
        boolean z;
        char c;
        char c2;
        bzv bzvVar;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = drtVar.f15523c;
        char c3 = 0;
        char c4 = 0;
        char c5 = 0;
        boolean z2 = false;
        String str = map.get("Date");
        if (str != null) {
            c3 = m7302a(str);
        }
        String str2 = map.get("Cache-Control");
        if (str2 != null) {
            z = false;
            for (String str3 : str2.split(",", 0)) {
                String trim = str3.trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    bzvVar = null;
                    break;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        c4 = Long.parseLong(trim.substring(8));
                    } catch (Exception e) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    try {
                        c5 = Long.parseLong(trim.substring(23));
                    } catch (Exception e2) {
                    }
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    z = true;
                }
            }
            z2 = true;
        } else {
            z = false;
        }
        String str4 = map.get("Expires");
        char m7302a = str4 != null ? m7302a(str4) : (char) 0;
        String str5 = map.get("Last-Modified");
        char m7302a2 = str5 != null ? m7302a(str5) : (char) 0;
        String str6 = map.get("ETag");
        if (z2) {
            c2 = currentTimeMillis + (1000 * c4);
            c = z ? c2 : (1000 * c5) + c2;
        } else if (c3 <= 0 || m7302a < c3) {
            c = 0;
            c2 = 0;
        } else {
            c2 = currentTimeMillis + (m7302a - c3);
            c = c2;
        }
        bzv bzvVar2 = new bzv();
        bzvVar2.f12578a = drtVar.f15522b;
        bzvVar2.f12579b = str6;
        bzvVar2.f12583f = c2;
        bzvVar2.f12582e = c;
        bzvVar2.f12580c = c3;
        bzvVar2.f12581d = m7302a2;
        bzvVar2.f12584g = map;
        bzvVar2.f12585h = drtVar.f15524d;
        bzvVar = bzvVar2;
        return bzvVar;
    }

    /* renamed from: a */
    public static String m7304a(long j) {
        return m7305a().format(new Date(j));
    }

    /* renamed from: a */
    private static SimpleDateFormat m7305a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
