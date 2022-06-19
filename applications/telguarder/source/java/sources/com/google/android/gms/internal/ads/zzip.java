package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzip.class */
public final class zzip implements Runnable {
    private final /* synthetic */ zzik zzajh;
    private final /* synthetic */ zzht zzajm;

    public zzip(zzik zzikVar, zzht zzhtVar) {
        this.zzajh = zzikVar;
        this.zzajm = zzhtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzil zzilVar;
        zzilVar = this.zzajh.zzajd;
        zzilVar.zzc(this.zzajm);
    }
}
