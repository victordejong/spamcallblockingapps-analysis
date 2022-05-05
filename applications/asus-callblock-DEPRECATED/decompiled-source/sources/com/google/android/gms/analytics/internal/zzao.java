package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.google.android.gms.common.a.i;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.ac;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzao.class */
public class zzao {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f3840a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String zzS(boolean z) {
        return z ? "1" : "0";
    }

    public static double zza(String str, double d) {
        if (str != null) {
            try {
                d = Double.parseDouble(str);
            } catch (NumberFormatException e) {
            }
        }
        return d;
    }

    public static ac zza(zzaf zzafVar, String str) {
        ac acVar;
        b.a(zzafVar);
        if (TextUtils.isEmpty(str)) {
            acVar = null;
        } else {
            new HashMap();
            try {
                String valueOf = String.valueOf(str);
                Map<String, String> a2 = i.a(new URI(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")), "UTF-8");
                acVar = new ac();
                acVar.e = a2.get("utm_content");
                acVar.c = a2.get("utm_medium");
                acVar.f4098a = a2.get("utm_campaign");
                acVar.f4099b = a2.get("utm_source");
                acVar.d = a2.get("utm_term");
                acVar.f = a2.get("utm_id");
                acVar.g = a2.get("anid");
                acVar.h = a2.get("gclid");
                acVar.i = a2.get("dclid");
                acVar.j = a2.get("aclid");
            } catch (URISyntaxException e) {
                zzafVar.zzd("No valid campaign data found", e);
                acVar = null;
            }
        }
        return acVar;
    }

    public static String zza(Locale locale) {
        String str = null;
        if (locale != null) {
            String language = locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                StringBuilder sb = new StringBuilder();
                sb.append(language.toLowerCase());
                if (!TextUtils.isEmpty(locale.getCountry())) {
                    sb.append("-").append(locale.getCountry().toLowerCase());
                }
                str = sb.toString();
            }
        }
        return str;
    }

    public static void zza(Map<String, String> map, String str, Map<String, String> map2) {
        zzc(map, str, map2.get(str));
    }

    public static boolean zza(double d, String str) {
        boolean z = false;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                z = false;
            } else {
                z = false;
                if (zzca(str) % 10000 >= 100.0d * d) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static void zzb(Map<String, String> map, String str, boolean z) {
        if (!map.containsKey(str)) {
            map.put(str, z ? "1" : "0");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
        if (r0.exported != false) goto L_0x0031;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzb(android.content.Context r4, java.lang.String r5, boolean r6) {
        /*
            r0 = r4
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: NameNotFoundException -> 0x0035
            r7 = r0
            android.content.ComponentName r0 = new android.content.ComponentName     // Catch: NameNotFoundException -> 0x0035
            r8 = r0
            r0 = r8
            r1 = r4
            r2 = r5
            r0.<init>(r1, r2)     // Catch: NameNotFoundException -> 0x0035
            r0 = r7
            r1 = r8
            r2 = 2
            android.content.pm.ActivityInfo r0 = r0.getReceiverInfo(r1, r2)     // Catch: NameNotFoundException -> 0x0035
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0036
            r0 = r4
            boolean r0 = r0.enabled     // Catch: NameNotFoundException -> 0x0035
            if (r0 == 0) goto L_0x0036
            r0 = r6
            if (r0 == 0) goto L_0x0031
            r0 = r4
            boolean r0 = r0.exported     // Catch: NameNotFoundException -> 0x0035
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0036
        L_0x0031:
            r0 = 1
            r6 = r0
        L_0x0033:
            r0 = r6
            return r0
        L_0x0035:
            r4 = move-exception
        L_0x0036:
            r0 = 0
            r6 = r0
            goto L_0x0033
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzao.zzb(android.content.Context, java.lang.String, boolean):boolean");
    }

    public static Map<String, String> zzbW(String str) {
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("&")) {
            String[] split = str2.split("=", 3);
            if (split.length > 1) {
                hashMap.put(split[0], TextUtils.isEmpty(split[1]) ? null : split[1]);
                if (split.length == 3 && !TextUtils.isEmpty(split[1]) && !hashMap.containsKey(split[1])) {
                    hashMap.put(split[1], TextUtils.isEmpty(split[2]) ? null : split[2]);
                }
            } else if (split.length == 1 && split[0].length() != 0) {
                hashMap.put(split[0], null);
            }
        }
        return hashMap;
    }

    public static long zzbX(String str) {
        long j = 0;
        if (str != null) {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException e) {
            }
        }
        return j;
    }

    public static String zzbY(String str) {
        String str2;
        String decode;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            String str3 = str;
            if (str.contains("?")) {
                String[] split = str.split("[\\?]");
                str3 = str;
                if (split.length > 1) {
                    str3 = split[1];
                }
            }
            if (str3.contains("%3D")) {
                try {
                    decode = URLDecoder.decode(str3, "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    str2 = null;
                }
            } else {
                decode = str3;
                if (!str3.contains("=")) {
                    str2 = null;
                }
            }
            Map<String, String> zzbW = zzbW(decode);
            String[] strArr = {"dclid", "utm_source", "gclid", "aclid", "utm_campaign", "utm_medium", "utm_term", "utm_content", "utm_id", "anid", "gmob_t"};
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < 11; i++) {
                if (!TextUtils.isEmpty(zzbW.get(strArr[i]))) {
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    sb.append(strArr[i]).append("=").append(zzbW.get(strArr[i]));
                }
            }
            str2 = sb.toString();
        }
        return str2;
    }

    public static MessageDigest zzbZ(String str) {
        MessageDigest messageDigest;
        int i = 0;
        while (true) {
            if (i >= 2) {
                messageDigest = null;
                break;
            }
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (messageDigest != null) {
                break;
            }
            i++;
        }
        return messageDigest;
    }

    public static void zzc(Map<String, String> map, String str, String str2) {
        if (str2 != null && !map.containsKey(str)) {
            map.put(str, str2);
        }
    }

    public static int zzca(String str) {
        int i = 1;
        if (!TextUtils.isEmpty(str)) {
            int i2 = 0;
            int length = str.length() - 1;
            while (true) {
                i = i2;
                if (length < 0) {
                    break;
                }
                char charAt = str.charAt(length);
                int i3 = ((i2 << 6) & 268435455) + charAt + (charAt << 14);
                int i4 = 266338304 & i3;
                i2 = i3;
                if (i4 != 0) {
                    i2 = i3 ^ (i4 >> 21);
                }
                length--;
            }
        }
        return i;
    }

    public static boolean zzcb(String str) {
        boolean z = true;
        if (!TextUtils.isEmpty(str) && str.startsWith("http:")) {
            z = false;
        }
        return z;
    }

    public static void zzd(Map<String, String> map, String str, String str2) {
        if (str2 != null && TextUtils.isEmpty(map.get(str))) {
            map.put(str, str2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
        if (r3.equalsIgnoreCase("0") != false) goto L_0x0046;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzi(java.lang.String r3, boolean r4) {
        /*
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0025
            r0 = r3
            java.lang.String r1 = "true"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L_0x0023
            r0 = r3
            java.lang.String r1 = "yes"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L_0x0023
            r0 = r3
            java.lang.String r1 = "1"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x0027
        L_0x0023:
            r0 = 1
            r5 = r0
        L_0x0025:
            r0 = r5
            return r0
        L_0x0027:
            r0 = r3
            java.lang.String r1 = "false"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L_0x0046
            r0 = r3
            java.lang.String r1 = "no"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 != 0) goto L_0x0046
            r0 = r4
            r5 = r0
            r0 = r3
            java.lang.String r1 = "0"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x0025
        L_0x0046:
            r0 = 0
            r5 = r0
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzao.zzi(java.lang.String, boolean):boolean");
    }

    public static boolean zzj(Context context, String str) {
        boolean z;
        ServiceInfo serviceInfo;
        try {
            serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, str), 4);
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (serviceInfo != null) {
            if (serviceInfo.enabled) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
