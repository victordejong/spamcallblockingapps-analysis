package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmu.class */
public final class zzmu implements Runnable {
    private final /* synthetic */ zzms zzbdl;

    public zzmu(zzms zzmsVar) {
        this.zzbdl = zzmsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        zznb zznbVar;
        z = this.zzbdl.zzafw;
        if (!z) {
            zznbVar = this.zzbdl.zzbdy;
            zznbVar.zza((zznb) this.zzbdl);
        }
    }
}
