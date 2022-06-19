package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamq.class */
public final class zzamq implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ zzams zzb;

    public zzamq(zzams zzamsVar, int i, boolean z) {
        this.zzb = zzamsVar;
        this.zza = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        zzajp zzajpVar;
        zzams zzamsVar = this.zzb;
        if (this.zza > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        try {
            PackageInfo packageInfo = zzamsVar.zza.getPackageManager().getPackageInfo(zzamsVar.zza.getPackageName(), 0);
            Context context = zzamsVar.zza;
            zzajpVar = zzfmp.zza(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable th) {
            zzajpVar = null;
        }
        this.zzb.zzm = zzajpVar;
        if (this.zza < 4) {
            if (zzajpVar != null && zzajpVar.zzae() && !zzajpVar.zzh().equals("0000000000000000000000000000000000000000000000000000000000000000") && zzajpVar.zzaf() && zzajpVar.zzf().zze() && zzajpVar.zzf().zza() != -2) {
                return;
            }
            this.zzb.zzo(this.zza + 1, true);
        }
    }
}
