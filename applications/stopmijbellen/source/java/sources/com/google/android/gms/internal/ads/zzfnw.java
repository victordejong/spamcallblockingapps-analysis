package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfnw.class */
public final class zzfnw {
    @VisibleForTesting
    public final File zza;
    private final File zzb;
    private final SharedPreferences zzc;
    private final int zzd;

    public zzfnw(Context context, int i) {
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzfnx.zza(dir, false);
        this.zzb = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzfnx.zza(dir2, true);
        this.zza = dir2;
        this.zzd = i;
    }

    @VisibleForTesting
    public static String zza(zzaoi zzaoiVar) {
        return Hex.bytesToStringLowercase(zzaoiVar.zzao().zzE());
    }

    private final File zze() {
        File file = new File(this.zzb, Integer.toString(this.zzd - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String zzf() {
        int i = this.zzd;
        StringBuilder sb = new StringBuilder(17);
        sb.append("FBAMTD");
        sb.append(i - 1);
        return sb.toString();
    }

    private final String zzg() {
        int i = this.zzd;
        StringBuilder sb = new StringBuilder(17);
        sb.append("LATMTD");
        sb.append(i - 1);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzb(com.google.android.gms.internal.ads.zzaof r5, com.google.android.gms.internal.ads.zzfoc r6) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfnw.zzb(com.google.android.gms.internal.ads.zzaof, com.google.android.gms.internal.ads.zzfoc):boolean");
    }

    @VisibleForTesting
    public final zzaoi zzc(int i) {
        String string = i == 1 ? this.zzc.getString(zzg(), null) : this.zzc.getString(zzf(), null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            zzaoi zzh = zzaoi.zzh(zzgjf.zzv(Hex.stringToBytes(string)));
            String zzk = zzh.zzk();
            File zzb = zzfnx.zzb(zzk, "pcam.jar", zze());
            File file = zzb;
            if (!zzb.exists()) {
                file = zzfnx.zzb(zzk, "pcam", zze());
            }
            File zzb2 = zzfnx.zzb(zzk, "pcbc", zze());
            if (!file.exists()) {
                return null;
            }
            if (!zzb2.exists()) {
                return null;
            }
            return zzh;
        } catch (zzgkx e) {
            return null;
        }
    }

    public final zzfnv zzd(int i) {
        zzaoi zzc = zzc(1);
        if (zzc == null) {
            return null;
        }
        String zzk = zzc.zzk();
        File zzb = zzfnx.zzb(zzk, "pcam.jar", zze());
        File file = zzb;
        if (!zzb.exists()) {
            file = zzfnx.zzb(zzk, "pcam", zze());
        }
        return new zzfnv(zzc, file, zzfnx.zzb(zzk, "pcbc", zze()), zzfnx.zzb(zzk, "pcopt", zze()));
    }
}
