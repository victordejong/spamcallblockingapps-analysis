package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclz.class */
public final class zzclz extends zzaji {
    private final /* synthetic */ zzclq zzgng;
    private final /* synthetic */ Object zzgnh;
    private final /* synthetic */ String zzgni;
    private final /* synthetic */ long zzgnj;
    private final /* synthetic */ zzbaa zzgnk;

    public zzclz(zzclq zzclqVar, Object obj, String str, long j, zzbaa zzbaaVar) {
        this.zzgng = zzclqVar;
        this.zzgnh = obj;
        this.zzgni = str;
        this.zzgnj = j;
        this.zzgnk = zzbaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onInitializationFailed(String str) {
        zzcla zzclaVar;
        zzbxg zzbxgVar;
        synchronized (this.zzgnh) {
            this.zzgng.zza(this.zzgni, false, str, (int) (zzr.zzky().elapsedRealtime() - this.zzgnj));
            zzclaVar = this.zzgng.zzgmx;
            zzclaVar.zzs(this.zzgni, "error");
            zzbxgVar = this.zzgng.zzgmz;
            zzbxgVar.zzm(this.zzgni, "error");
            this.zzgnk.set(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajj
    public final void onInitializationSucceeded() {
        zzcla zzclaVar;
        zzbxg zzbxgVar;
        synchronized (this.zzgnh) {
            this.zzgng.zza(this.zzgni, true, "", (int) (zzr.zzky().elapsedRealtime() - this.zzgnj));
            zzclaVar = this.zzgng.zzgmx;
            zzclaVar.zzgg(this.zzgni);
            zzbxgVar = this.zzgng.zzgmz;
            zzbxgVar.zzfu(this.zzgni);
            this.zzgnk.set(true);
        }
    }
}
