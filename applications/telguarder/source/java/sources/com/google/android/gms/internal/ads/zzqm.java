package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqm.class */
public final class zzqm implements Runnable {
    private final /* synthetic */ zzjm zzaji;
    private final /* synthetic */ zzqj zzbna;

    public zzqm(zzqj zzqjVar, zzjm zzjmVar) {
        this.zzbna = zzqjVar;
        this.zzaji = zzjmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzqk zzqkVar;
        zzqkVar = this.zzbna.zzbmz;
        zzqkVar.zze(this.zzaji);
    }
}
