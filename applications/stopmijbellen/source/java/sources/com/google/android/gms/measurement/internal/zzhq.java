package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhq.class */
public final class zzhq implements Runnable {
    public final /* synthetic */ Boolean zza;
    public final /* synthetic */ zzhw zzb;

    public zzhq(zzhw zzhwVar, Boolean bool) {
        this.zzb = zzhwVar;
        this.zza = bool;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzY(this.zza, true);
    }
}
