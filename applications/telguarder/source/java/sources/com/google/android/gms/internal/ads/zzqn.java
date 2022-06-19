package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqn.class */
public final class zzqn implements Runnable {
    private final /* synthetic */ zzqj zzbna;
    private final /* synthetic */ int zzbnb;
    private final /* synthetic */ long zzbnc;

    public zzqn(zzqj zzqjVar, int i, long j) {
        this.zzbna = zzqjVar;
        this.zzbnb = i;
        this.zzbnc = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzqk zzqkVar;
        zzqkVar = this.zzbna.zzbmz;
        zzqkVar.zzg(this.zzbnb, this.zzbnc);
    }
}
