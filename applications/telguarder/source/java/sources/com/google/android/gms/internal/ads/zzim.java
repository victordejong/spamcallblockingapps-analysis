package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzim.class */
public final class zzim implements Runnable {
    private final /* synthetic */ String zzaje;
    private final /* synthetic */ long zzajf;
    private final /* synthetic */ long zzajg;
    private final /* synthetic */ zzik zzajh;

    public zzim(zzik zzikVar, String str, long j, long j2) {
        this.zzajh = zzikVar;
        this.zzaje = str;
        this.zzajf = j;
        this.zzajg = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzil zzilVar;
        zzilVar = this.zzajh.zzajd;
        zzilVar.zzb(this.zzaje, this.zzajf, this.zzajg);
    }
}
