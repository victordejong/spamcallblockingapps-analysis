package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcic.class */
public final class zzcic implements zzaqt {
    private final /* synthetic */ zzchs zzgkd;

    public zzcic(zzchs zzchsVar) {
        this.zzgkd = zzchsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqt
    public final void zzc(int i, int i2, int i3, int i4) {
        zzbsm zzbsmVar;
        zzbsmVar = this.zzgkd.zzfwu;
        zzbsmVar.onAdOpened();
    }

    @Override // com.google.android.gms.internal.ads.zzaqt
    public final void zzvq() {
        zzbsm zzbsmVar;
        zzbsmVar = this.zzgkd.zzfwu;
        zzbsmVar.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzaqt
    public final void zzvr() {
        zzbvi zzbviVar;
        zzbviVar = this.zzgkd.zzgka;
        zzbviVar.zzakf();
    }
}
