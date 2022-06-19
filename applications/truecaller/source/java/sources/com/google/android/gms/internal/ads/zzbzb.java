package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzb.class */
public final class zzbzb extends zzboa {
    private final NativeAd.UnconfirmedClickListener zza;

    public zzbzb(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zza = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbob
    public final void zze(String str) {
        this.zza.onUnconfirmedClickReceived(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbob
    public final void zzf() {
        this.zza.onUnconfirmedClickCancelled();
    }
}
