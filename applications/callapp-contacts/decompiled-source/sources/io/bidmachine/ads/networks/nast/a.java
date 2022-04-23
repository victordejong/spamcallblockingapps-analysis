package io.bidmachine.ads.networks.nast;

import android.text.TextUtils;
import io.bidmachine.ContextProvider;
import io.bidmachine.nativead.NativeNetworkAdapter;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedNativeAd;
import io.bidmachine.unified.UnifiedNativeAdCallback;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/nast/a.class */
final class a extends UnifiedNativeAd {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.ads.networks.nast.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/ads/networks/nast/a$a.class */
    public static final class C0588a extends NativeNetworkAdapter {
        private final NastParams nastParams;

        C0588a(NastParams nastParams) {
            this.nastParams = nastParams;
        }

        @Override // io.bidmachine.nativead.NativePublicData
        public final String getCallToAction() {
            return this.nastParams.callToAction;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter, io.bidmachine.nativead.NativeData
        public final String getClickUrl() {
            return this.nastParams.clickUrl;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter, io.bidmachine.nativead.NativePublicData
        public final String getDescription() {
            return this.nastParams.description;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter, io.bidmachine.nativead.NativeData
        public final String getIconUrl() {
            return this.nastParams.iconUrl;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter, io.bidmachine.nativead.NativeData
        public final String getImageUrl() {
            return this.nastParams.imageUrl;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter, io.bidmachine.nativead.NativePublicData
        public final float getRating() {
            return this.nastParams.rating;
        }

        @Override // io.bidmachine.nativead.NativePublicData
        public final String getTitle() {
            return this.nastParams.title;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter, io.bidmachine.nativead.NativeData
        public final String getVideoAdm() {
            return this.nastParams.videoAdm;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter, io.bidmachine.nativead.NativeData
        public final String getVideoUrl() {
            return this.nastParams.videoUrl;
        }

        @Override // io.bidmachine.nativead.NativeNetworkAdapter, io.bidmachine.nativead.NativePublicData
        public final boolean hasVideo() {
            return !TextUtils.isEmpty(getVideoAdm()) || !TextUtils.isEmpty(getVideoUrl());
        }
    }

    public final void load(ContextProvider contextProvider, UnifiedNativeAdCallback unifiedNativeAdCallback, UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, UnifiedMediationParams unifiedMediationParams) throws Throwable {
        NastParams nastParams = new NastParams(unifiedMediationParams);
        if (nastParams.isValid(unifiedNativeAdRequestParams, unifiedNativeAdCallback)) {
            unifiedNativeAdCallback.onAdLoaded(new C0588a(nastParams));
        }
    }
}
