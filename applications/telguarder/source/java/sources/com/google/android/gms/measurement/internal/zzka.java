package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzka.class */
final class zzka implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ Bundle zzb;
    final /* synthetic */ zzkb zzc;

    public zzka(zzkb zzkbVar, String str, Bundle bundle) {
        this.zzc = zzkbVar;
        this.zza = str;
        this.zzb = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzz(this.zzc.zza.zzr().zzV(this.zza, "_err", this.zzb, "auto", this.zzc.zza.zzax().currentTimeMillis(), false, false), this.zza);
    }
}
