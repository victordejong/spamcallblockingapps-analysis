package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.File;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjx.class */
public final class zzfjx {
    @VisibleForTesting
    public final File zza;
    private final File zzb;
    private final SharedPreferences zzc;
    private final int zzd;

    public zzfjx(Context context, int i) {
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzfjy.zzd(dir, false);
        this.zzb = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzfjy.zzd(dir2, true);
        this.zza = dir2;
        this.zzd = i;
    }

    @VisibleForTesting
    public static String zzb(zzadi zzadiVar) {
        return Hex.m38782a(zzadiVar.zzan().zzz());
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
        StringBuilder m8554x = C22128a.m8554x(17, "FBAMTD");
        m8554x.append(i - 1);
        return m8554x.toString();
    }

    private final String zzg() {
        int i = this.zzd;
        StringBuilder m8554x = C22128a.m8554x(17, "LATMTD");
        m8554x.append(i - 1);
        return m8554x.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zzadf r5, com.google.android.gms.internal.ads.zzfkd r6) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfjx.zza(com.google.android.gms.internal.ads.zzadf, com.google.android.gms.internal.ads.zzfkd):boolean");
    }

    public final zzfjw zzc(int i) {
        zzadi zzd = zzd(1);
        if (zzd == null) {
            return null;
        }
        String zza = zzd.zza();
        File zza2 = zzfjy.zza(zza, "pcam.jar", zze());
        File file = zza2;
        if (!zza2.exists()) {
            file = zzfjy.zza(zza, "pcam", zze());
        }
        return new zzfjw(zzd, file, zzfjy.zza(zza, "pcbc", zze()), zzfjy.zza(zza, "pcopt", zze()));
    }

    @VisibleForTesting
    public final zzadi zzd(int i) {
        String string = i == 1 ? this.zzc.getString(zzg(), null) : this.zzc.getString(zzf(), null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            zzadi zzg = zzadi.zzg(zzgex.zzt(Hex.m38780c(string)));
            String zza = zzg.zza();
            File zza2 = zzfjy.zza(zza, "pcam.jar", zze());
            File file = zza2;
            if (!zza2.exists()) {
                file = zzfjy.zza(zza, "pcam", zze());
            }
            File zza3 = zzfjy.zza(zza, "pcbc", zze());
            if (!file.exists()) {
                return null;
            }
            if (!zza3.exists()) {
                return null;
            }
            return zzg;
        } catch (zzggm e) {
            return null;
        }
    }
}
