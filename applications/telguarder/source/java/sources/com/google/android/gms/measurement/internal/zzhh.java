package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhh.class */
public final class zzhh implements Runnable {
    final /* synthetic */ Boolean zza;
    final /* synthetic */ zzhn zzb;

    public zzhh(zzhn zzhnVar, Boolean bool) {
        this.zzb = zzhnVar;
        this.zza = bool;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzY(this.zza, true);
    }
}
