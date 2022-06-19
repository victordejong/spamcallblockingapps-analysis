package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxf.class */
final class zzcxf implements zzg {
    private final /* synthetic */ zzbza zzgxg;

    public zzcxf(zzcxe zzcxeVar, zzbza zzbzaVar) {
        this.zzgxg = zzbzaVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzh(View view) {
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkc() {
        this.zzgxg.zzagp().onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzkd() {
        this.zzgxg.zzagq().onAdImpression();
        this.zzgxg.zzagr().zzamr();
    }
}
