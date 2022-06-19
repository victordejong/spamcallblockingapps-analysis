package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzin.class */
public final class zzin implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ zzjm zzaji;

    public zzin(zzik zzikVar, zzjm zzjmVar) {
        this.zzajh = zzikVar;
        this.zzaji = zzjmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzil zzilVar;
        zzilVar = this.zzajh.zzajd;
        zzilVar.zzc(this.zzaji);
    }
}
