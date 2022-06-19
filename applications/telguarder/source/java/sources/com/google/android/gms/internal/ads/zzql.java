package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzql.class */
public final class zzql implements Runnable {
    private final /* synthetic */ String zzaje;
    private final /* synthetic */ long zzajf;
    private final /* synthetic */ long zzajg;
    private final /* synthetic */ zzqj zzbna;

    public zzql(zzqj zzqjVar, String str, long j, long j2) {
        this.zzbna = zzqjVar;
        this.zzaje = str;
        this.zzajf = j;
        this.zzajg = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzqk zzqkVar;
        zzqkVar = this.zzbna.zzbmz;
        zzqkVar.zzd(this.zzaje, this.zzajf, this.zzajg);
    }
}
