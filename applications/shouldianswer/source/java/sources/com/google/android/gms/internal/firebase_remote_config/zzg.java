package com.google.android.gms.internal.firebase_remote_config;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzg.class */
final class zzg {
    private static final zzg zzz = new zzg();
    private final String zzaa;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    zzg() {
        /*
            r6 = this;
            java.lang.String r0 = "java.version"
            java.lang.String r0 = java.lang.System.getProperty(r0)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "9"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L15
            java.lang.String r0 = "9.0.0"
            r7 = r0
            goto L1a
        L15:
            r0 = r7
            java.lang.String r0 = zzh(r0)
            r7 = r0
        L1a:
            r0 = r6
            r1 = r7
            com.google.android.gms.internal.firebase_remote_config.zzdz r2 = com.google.android.gms.internal.firebase_remote_config.zzdz.OS_NAME
            java.lang.String r2 = r2.value()
            com.google.android.gms.internal.firebase_remote_config.zzdz r3 = com.google.android.gms.internal.firebase_remote_config.zzdz.OS_VERSION
            java.lang.String r3 = r3.value()
            java.lang.String r4 = com.google.android.gms.internal.firebase_remote_config.zzb.VERSION
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzg.<init>():void");
    }

    private zzg(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder("java/");
        sb.append(zzh(str));
        sb.append(" http-google-%s/");
        sb.append(zzh(str4));
        if (str2 != null && str3 != null) {
            sb.append(" ");
            sb.append(zzg(str2));
            sb.append("/");
            sb.append(zzh(str3));
        }
        this.zzaa = sb.toString();
    }

    private static String zzg(String str) {
        return str.toLowerCase().replaceAll("[^\\w\\d\\-]", "-");
    }

    private static String zzh(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = Pattern.compile("(\\d+\\.\\d+\\.\\d+).*").matcher(str);
        if (matcher.find()) {
            str = matcher.group(1);
        }
        return str;
    }

    public static zzg zzj() {
        return zzz;
    }

    public final String zzf(String str) {
        return String.format(this.zzaa, zzg(str));
    }
}
