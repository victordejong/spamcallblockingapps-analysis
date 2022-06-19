package com.google.android.gms.internal.ads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbc.class */
public final class zzbc {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v108, types: [long] */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r0v72 */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94 */
    public static zzn zzb(zzz zzzVar) {
        char c;
        char c2;
        boolean z;
        boolean z2;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        long currentTimeMillis = System.currentTimeMillis();
        Map map = zzzVar.zzaj;
        if (map == null) {
            return null;
        }
        String str = (String) map.get("Date");
        char zzg = str != null ? zzg(str) : (char) 0;
        String str2 = (String) map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            boolean z3 = false;
            c2 = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i >= split.length) {
                    z2 = z3;
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
                    z3 = true;
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
            z2 = false;
        }
        String str3 = (String) map.get("Expires");
        char zzg2 = str3 != null ? zzg(str3) : (char) 0;
        String str4 = (String) map.get("Last-Modified");
        char zzg3 = str4 != null ? zzg(str4) : (char) 0;
        String str5 = (String) map.get("ETag");
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
            if (zzg <= 0 || zzg2 < zzg) {
                c3 = 0;
            } else {
                c3 = currentTimeMillis + (zzg2 - zzg);
                c4 = c3;
            }
        }
        zzn zznVar = new zzn();
        zznVar.data = zzzVar.data;
        zznVar.zzr = str5;
        zznVar.zzv = c3;
        zznVar.zzu = c4;
        zznVar.zzs = zzg;
        zznVar.zzt = zzg3;
        zznVar.zzw = map;
        zznVar.zzx = zzzVar.allHeaders;
        return zznVar;
    }

    public static String zzb(long j) {
        return zzh("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j));
    }

    private static long zzg(String str) {
        try {
            return zzh("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e) {
            if ("0".equals(str) || "-1".equals(str)) {
                zzao.m4416v("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            zzao.zza(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    private static SimpleDateFormat zzh(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
