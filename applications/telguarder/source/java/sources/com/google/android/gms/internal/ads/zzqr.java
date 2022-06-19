package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqr.class */
public final class zzqr implements Runnable {
    private final /* synthetic */ zzjm zzajo;
    private final /* synthetic */ zzqj zzbna;

    public zzqr(zzqj zzqjVar, zzjm zzjmVar) {
        this.zzbna = zzqjVar;
        this.zzajo = zzjmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzqk zzqkVar;
        this.zzajo.zzgn();
        zzqkVar = this.zzbna.zzbmz;
        zzqkVar.zzf(this.zzajo);
    }
}
