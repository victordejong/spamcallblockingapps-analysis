package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkk.class */
final class zzkk implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb = "_err";
    public final /* synthetic */ Bundle zzc;
    public final /* synthetic */ zzkl zzd;

    public zzkk(zzkl zzklVar, String str, String str2, Bundle bundle) {
        this.zzd = zzklVar;
        this.zza = str;
        this.zzc = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzv((zzas) Preconditions.checkNotNull(this.zzd.zza.zzq().zzV(this.zza, this.zzb, this.zzc, "auto", this.zzd.zza.zzay().currentTimeMillis(), false, false)), this.zza);
    }
}
