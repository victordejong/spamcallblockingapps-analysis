package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqo.class */
public final class zzqo implements Runnable {
    private final /* synthetic */ zzht zzajm;
    private final /* synthetic */ zzqj zzbna;

    public zzqo(zzqj zzqjVar, zzht zzhtVar) {
        this.zzbna = zzqjVar;
        this.zzajm = zzhtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzqk zzqkVar;
        zzqkVar = this.zzbna.zzbmz;
        zzqkVar.zzk(this.zzajm);
    }
}
