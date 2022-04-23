package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdq.class */
public final class zzdq implements Runnable {
    private final /* synthetic */ zzdo zzarx;
    private final /* synthetic */ zzdn zzary;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdq(zzdo zzdoVar, zzdn zzdnVar) {
        this.zzarx = zzdoVar;
        this.zzary = zzdnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarx.zza(this.zzary);
        this.zzarx.zzaro = null;
        this.zzarx.zzgg().zzb((zzdn) null);
    }
}
