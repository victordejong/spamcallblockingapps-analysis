package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbd.class */
public final class zzcbd extends zzbqb {
    private final NativeAd.UnconfirmedClickListener zza;

    public zzcbd(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zza = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zze() {
        this.zza.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zzf(String str) {
        this.zza.onUnconfirmedClickReceived(str);
    }
}
