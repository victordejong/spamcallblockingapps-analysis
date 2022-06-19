package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamm.class */
public final class zzamm implements zzbac {
    private final /* synthetic */ zzbaa zzdik;
    private final /* synthetic */ zzalm zzdlb;

    public zzamm(zzamk zzamkVar, zzbaa zzbaaVar, zzalm zzalmVar) {
        this.zzdik = zzbaaVar;
        this.zzdlb = zzalmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbac
    public final void run() {
        this.zzdik.setException(new zzaly("Unable to obtain a JavascriptEngine."));
        this.zzdlb.release();
    }
}
