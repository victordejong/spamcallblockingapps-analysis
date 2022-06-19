package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.Hex;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdus.class */
public final class zzdus {
    private final SharedPreferences zzcme;
    private final File zzhuk;
    private final File zzhul;
    private final zzgp zzvu;

    public zzdus(Context context, zzgp zzgpVar) {
        this.zzcme = context.getSharedPreferences("pcvmspf", 0);
        this.zzhuk = zzdur.zza(context.getDir("pccache", 0), false);
        this.zzhul = zzdur.zza(context.getDir("tmppccache", 0), true);
        this.zzvu = zzgpVar;
    }

    private static String zza(zzgv zzgvVar) {
        return Hex.bytesToStringLowercase(zzgvVar.zzbfz().toByteArray());
    }

    private final File zzayr() {
        File file = new File(this.zzhuk, Integer.toString(this.zzvu.zzv()));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String zzays() {
        int zzv = this.zzvu.zzv();
        StringBuilder sb = new StringBuilder(17);
        sb.append("FBAMTD");
        sb.append(zzv);
        return sb.toString();
    }

    private final String zzayt() {
        int zzv = this.zzvu.zzv();
        StringBuilder sb = new StringBuilder(17);
        sb.append("LATMTD");
        sb.append(zzv);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009f A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzgv zzej(int r5) {
        /*
            r4 = this;
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.zzdva.zzhut
            if (r0 != r1) goto L19
            r0 = r4
            android.content.SharedPreferences r0 = r0.zzcme
            r1 = r4
            java.lang.String r1 = r1.zzayt()
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r6 = r0
            goto L34
        L19:
            r0 = r5
            int r1 = com.google.android.gms.internal.ads.zzdva.zzhuu
            if (r0 != r1) goto L32
            r0 = r4
            android.content.SharedPreferences r0 = r0.zzcme
            r1 = r4
            java.lang.String r1 = r1.zzays()
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r6 = r0
            goto L34
        L32:
            r0 = 0
            r6 = r0
        L34:
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L3d
            r0 = 0
            return r0
        L3d:
            r0 = r6
            byte[] r0 = com.google.android.gms.common.util.Hex.stringToBytes(r0)     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            com.google.android.gms.internal.ads.zzejr r0 = com.google.android.gms.internal.ads.zzejr.zzt(r0)     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            com.google.android.gms.internal.ads.zzgv r0 = com.google.android.gms.internal.ads.zzgv.zzl(r0)     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            r7 = r0
            r0 = r7
            java.lang.String r0 = r0.zzdg()     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            r8 = r0
            r0 = r8
            java.lang.String r1 = "pcam.jar"
            r2 = r4
            java.io.File r2 = r2.zzayr()     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            java.io.File r0 = com.google.android.gms.internal.ads.zzdur.zza(r0, r1, r2)     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            boolean r0 = r0.exists()     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            if (r0 != 0) goto L72
            r0 = r8
            java.lang.String r1 = "pcam"
            r2 = r4
            java.io.File r2 = r2.zzayr()     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            java.io.File r0 = com.google.android.gms.internal.ads.zzdur.zza(r0, r1, r2)     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            r6 = r0
        L72:
            r0 = r8
            java.lang.String r1 = "pcbc"
            r2 = r4
            java.io.File r2 = r2.zzayr()     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            java.io.File r0 = com.google.android.gms.internal.ads.zzdur.zza(r0, r1, r2)     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            r9 = r0
            r0 = r6
            boolean r0 = r0.exists()     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            if (r0 == 0) goto L97
            r0 = r9
            boolean r0 = r0.exists()     // Catch: com.google.android.gms.internal.ads.zzelo -> La1
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L97
            r0 = 1
            r5 = r0
            goto L99
        L97:
            r0 = 0
            r5 = r0
        L99:
            r0 = r5
            if (r0 == 0) goto L9f
            r0 = r7
            return r0
        L9f:
            r0 = 0
            return r0
        La1:
            r6 = move-exception
            goto L9f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdus.zzej(int):com.google.android.gms.internal.ads.zzgv");
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x01bd, code lost:
        if (r0.commit() != false) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0213  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zzgr r5, com.google.android.gms.internal.ads.zzduy r6) {
        /*
            Method dump skipped, instructions count: 573
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdus.zza(com.google.android.gms.internal.ads.zzgr, com.google.android.gms.internal.ads.zzduy):boolean");
    }

    public final zzdup zzp(int i) {
        zzgv zzej = zzej(i);
        if (zzej == null) {
            return null;
        }
        String zzdg = zzej.zzdg();
        File zza = zzdur.zza(zzdg, "pcam.jar", zzayr());
        File file = zza;
        if (!zza.exists()) {
            file = zzdur.zza(zzdg, "pcam", zzayr());
        }
        return new zzdup(zzej, file, zzdur.zza(zzdg, "pcbc", zzayr()), zzdur.zza(zzdg, "pcopt", zzayr()));
    }
}
