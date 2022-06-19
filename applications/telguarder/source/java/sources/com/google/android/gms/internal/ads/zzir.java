package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzir.class */
public final class zzir implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ zzjm zzajo;

    public zzir(zzik zzikVar, zzjm zzjmVar) {
        this.zzajh = zzikVar;
        this.zzajo = zzjmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzil zzilVar;
        this.zzajo.zzgn();
        zzilVar = this.zzajh.zzajd;
        zzilVar.zzd(this.zzajo);
    }
}
