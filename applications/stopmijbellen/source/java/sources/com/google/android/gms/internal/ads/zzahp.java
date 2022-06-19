package com.google.android.gms.internal.ads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahp.class */
public final class zzahp {
    public static long zza(String str) {
        try {
            return zzd("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e) {
            if ("0".equals(str) || "-1".equals(str)) {
                zzahe.zzd("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            zzahe.zzc(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

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
    public static zzagb zzb(zzago zzagoVar) {
        char c;
        char c2;
        boolean z;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = zzagoVar.zzc;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        char zza = str != null ? zza(str) : (char) 0;
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
        char zza2 = str3 != null ? zza(str3) : (char) 0;
        String str4 = map.get("Last-Modified");
        char zza3 = str4 != null ? zza(str4) : (char) 0;
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
            if (zza <= 0 || zza2 < zza) {
                c3 = 0;
            } else {
                c3 = currentTimeMillis + (zza2 - zza);
                c4 = c3;
            }
        }
        zzagb zzagbVar = new zzagb();
        zzagbVar.zza = zzagoVar.zzb;
        zzagbVar.zzb = str5;
        zzagbVar.zzf = c3;
        zzagbVar.zze = c4;
        zzagbVar.zzc = zza;
        zzagbVar.zzd = zza3;
        zzagbVar.zzg = map;
        zzagbVar.zzh = zzagoVar.zzd;
        return zzagbVar;
    }

    public static String zzc(long j) {
        return zzd("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j));
    }

    private static SimpleDateFormat zzd(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
