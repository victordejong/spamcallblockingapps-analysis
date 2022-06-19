package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzha.class */
public final class zzha implements Runnable {
    public final /* synthetic */ zzhw zza;

    public zzha(zzhw zzhwVar) {
        this.zza = zzhwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb.zza();
    }
}
