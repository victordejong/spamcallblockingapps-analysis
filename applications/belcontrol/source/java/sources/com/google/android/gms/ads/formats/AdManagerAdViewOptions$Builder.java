package com.google.android.gms.ads.formats;

import com.google.android.gms.common.annotation.KeepForSdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/AdManagerAdViewOptions$Builder.class */
public final class AdManagerAdViewOptions$Builder {
    private boolean zzbni = false;
    private ShouldDelayBannerRenderingListener zzbnk;

    public final AdManagerAdViewOptions build() {
        return new AdManagerAdViewOptions(this, (zza) null);
    }

    public final AdManagerAdViewOptions$Builder setManualImpressionsEnabled(boolean z) {
        this.zzbni = z;
        return this;
    }

    @KeepForSdk
    public final AdManagerAdViewOptions$Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.zzbnk = shouldDelayBannerRenderingListener;
        return this;
    }
}
