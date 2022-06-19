package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxv.class */
public final class zzcxv implements zzcze<zzblv> {
    private final /* synthetic */ zzcxw zzgxw;

    public zzcxv(zzcxw zzcxwVar) {
        this.zzgxw = zzcxwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzblv zzblvVar) {
        zzblv zzblvVar2;
        zzblv zzblvVar3;
        zzblv zzblvVar4;
        zzblv zzblvVar5 = zzblvVar;
        synchronized (this.zzgxw) {
            zzblvVar2 = this.zzgxw.zzgxr;
            if (zzblvVar2 != null) {
                zzblvVar4 = this.zzgxw.zzgxr;
                zzblvVar4.destroy();
            }
            this.zzgxw.zzgxr = zzblvVar5;
            zzblvVar3 = this.zzgxw.zzgxr;
            zzblvVar3.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzgxw) {
            this.zzgxw.zzgxr = null;
        }
    }
}
