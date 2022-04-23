package io.bidmachine.interstitial;

import io.bidmachine.AdContentType;
import io.bidmachine.AdRequest;
import io.bidmachine.AdsType;
import io.bidmachine.FullScreenAdRequest;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/interstitial/InterstitialRequest.class */
public final class InterstitialRequest extends FullScreenAdRequest<InterstitialRequest> {

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/interstitial/InterstitialRequest$AdRequestListener.class */
    public interface AdRequestListener extends AdRequest.AdRequestListener<InterstitialRequest> {
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/interstitial/InterstitialRequest$Builder.class */
    public static final class Builder extends FullScreenAdRequest.FullScreenRequestBuilder<Builder, InterstitialRequest> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public final InterstitialRequest createRequest() {
            return new InterstitialRequest();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.bidmachine.FullScreenAdRequest.FullScreenRequestBuilder
        public final Builder setAdContentType(AdContentType adContentType) {
            return (Builder) super.setAdContentType(adContentType);
        }
    }

    private InterstitialRequest() {
        super(AdsType.Interstitial);
    }
}
