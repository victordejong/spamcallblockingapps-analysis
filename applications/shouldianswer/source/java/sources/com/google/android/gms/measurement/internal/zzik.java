package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzik.class */
public final class zzik implements Runnable {
    private final /* synthetic */ zzif zza;
    private final /* synthetic */ zzii zzb;

    public zzik(zzii zziiVar, zzif zzifVar) {
        this.zzb = zziiVar;
        this.zza = zzifVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza, false);
        zzii zziiVar = this.zzb;
        zziiVar.zza = null;
        zziiVar.zzh().zza((zzif) null);
    }
}
