package com.google.android.gms.internal.ads;

import com.amazon.device.ads.DtbConstants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzwz.class */
public final class zzwz {
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
    public static zzvl zza(zzvy zzvyVar) {
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
        Map<String, String> map = zzvyVar.zzc;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        char zzb = str != null ? zzb(str) : (char) 0;
        String str2 = map.get("Cache-Control");
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
        String str3 = map.get("Expires");
        char zzb2 = str3 != null ? zzb(str3) : (char) 0;
        String str4 = map.get("Last-Modified");
        char zzb3 = str4 != null ? zzb(str4) : (char) 0;
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
            if (zzb <= 0 || zzb2 < zzb) {
                c3 = 0;
            } else {
                c3 = currentTimeMillis + (zzb2 - zzb);
                c4 = c3;
            }
        }
        zzvl zzvlVar = new zzvl();
        zzvlVar.zza = zzvyVar.zzb;
        zzvlVar.zzb = str5;
        zzvlVar.zzf = c3;
        zzvlVar.zze = c4;
        zzvlVar.zzc = zzb;
        zzvlVar.zzd = zzb3;
        zzvlVar.zzg = map;
        zzvlVar.zzh = zzvyVar.zzd;
        return zzvlVar;
    }

    public static long zzb(String str) {
        try {
            return zzd("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str).getTime();
        } catch (ParseException e) {
            if (DtbConstants.NETWORK_TYPE_UNKNOWN.equals(str) || "-1".equals(str)) {
                zzwo.zza("Unable to parse dateStr: %s, falling back to 0", str);
                return 0L;
            }
            zzwo.zzd(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
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
