package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqq.class */
public final class zzqq implements Runnable {
    private final /* synthetic */ zzqj zzbna;
    private final /* synthetic */ int zzbne;
    private final /* synthetic */ int zzbnf;
    private final /* synthetic */ int zzbng;
    private final /* synthetic */ float zzbnh;

    public zzqq(zzqj zzqjVar, int i, int i2, int i3, float f) {
        this.zzbna = zzqjVar;
        this.zzbne = i;
        this.zzbnf = i2;
        this.zzbng = i3;
        this.zzbnh = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzqk zzqkVar;
        zzqkVar = this.zzbna.zzbmz;
        zzqkVar.zzb(this.zzbne, this.zzbnf, this.zzbng, this.zzbnh);
    }
}
