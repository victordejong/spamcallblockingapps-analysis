package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.annotation.KeepForSdk;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/PublisherAdViewOptions$Builder.class */
public final class PublisherAdViewOptions$Builder {
    private boolean zzbni = false;
    private ShouldDelayBannerRenderingListener zzbnk;
    private AppEventListener zzboe;

    public final PublisherAdViewOptions build() {
        return new PublisherAdViewOptions(this, (zzd) null);
    }

    public final PublisherAdViewOptions$Builder setAppEventListener(AppEventListener appEventListener) {
        this.zzboe = appEventListener;
        return this;
    }

    public final PublisherAdViewOptions$Builder setManualImpressionsEnabled(boolean z) {
        this.zzbni = z;
        return this;
    }

    @KeepForSdk
    public final PublisherAdViewOptions$Builder setShouldDelayBannerRenderingListener(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.zzbnk = shouldDelayBannerRenderingListener;
        return this;
    }
}
