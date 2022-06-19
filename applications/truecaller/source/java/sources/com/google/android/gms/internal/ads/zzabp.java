package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabp.class */
public final class zzabp implements Runnable {
    public final /* synthetic */ int zza;
    public final /* synthetic */ zzabr zzb;

    public zzabp(zzabr zzabrVar, int i, boolean z) {
        this.zzb = zzabrVar;
        this.zza = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        zzyz zzyzVar;
        zzabr zzabrVar = this.zzb;
        if (this.zza > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        try {
            PackageInfo packageInfo = zzabrVar.zza.getPackageManager().getPackageInfo(zzabrVar.zza.getPackageName(), 0);
            Context context = zzabrVar.zza;
            zzyzVar = zzfiq.zza(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable th) {
            zzyzVar = null;
        }
        this.zzb.zzm = zzyzVar;
        if (this.zza < 4) {
            if (zzyzVar != null && zzyzVar.zza() && !zzyzVar.zzc().equals("0000000000000000000000000000000000000000000000000000000000000000") && zzyzVar.zzf() && zzyzVar.zzg().zza() && zzyzVar.zzg().zzc() != -2) {
                return;
            }
            this.zzb.zzs(this.zza + 1, true);
        }
    }
}
