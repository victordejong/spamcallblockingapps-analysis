package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzio.class */
public final class zzio implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ int zzajj;
    private final /* synthetic */ long zzajk;
    private final /* synthetic */ long zzajl;

    public zzio(zzik zzikVar, int i, long j, long j2) {
        this.zzajh = zzikVar;
        this.zzajj = i;
        this.zzajk = j;
        this.zzajl = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzil zzilVar;
        zzilVar = this.zzajh.zzajd;
        zzilVar.zzb(this.zzajj, this.zzajk, this.zzajl);
    }
}
