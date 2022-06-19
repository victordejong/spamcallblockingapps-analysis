package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zziq.class */
public final class zziq implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ int zzajn;

    public zziq(zzik zzikVar, int i) {
        this.zzajh = zzikVar;
        this.zzajn = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzil zzilVar;
        zzilVar = this.zzajh.zzajd;
        zzilVar.zzx(this.zzajn);
    }
}
