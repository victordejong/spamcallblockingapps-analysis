package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzlc;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjz.class */
public final class zzjz implements Callable<String> {
    final /* synthetic */ zzp zza;
    final /* synthetic */ zzkd zzb;

    public zzjz(zzkd zzkdVar, zzp zzpVar) {
        this.zzb = zzkdVar;
        this.zza = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() throws Exception {
        zzlc.zzb();
        String str = null;
        if (!this.zzb.zzd().zzn(null, zzdw.zzay) || (this.zzb.zzx(this.zza.zza).zzh() && zzaf.zzc(this.zza.zzv).zzh())) {
            str = this.zzb.zzX(this.zza).zzd();
        } else {
            this.zzb.zzat().zzk().zza("Analytics storage consent denied. Returning null app instance id");
        }
        return str;
    }
}
