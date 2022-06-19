package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkj.class */
public final class zzkj implements Callable<String> {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzkn zzb;

    public zzkj(zzkn zzknVar, zzp zzpVar) {
        this.zzb = zzknVar;
        this.zza = zzpVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() throws Exception {
        String str;
        if (!this.zzb.zzt((String) Preconditions.checkNotNull(this.zza.zza)).zzh() || !zzaf.zzc(this.zza.zzv).zzh()) {
            this.zzb.zzau().zzk().zza("Analytics storage consent denied. Returning null app instance id");
            str = null;
        } else {
            str = this.zzb.zzT(this.zza).zzd();
        }
        return str;
    }
}
