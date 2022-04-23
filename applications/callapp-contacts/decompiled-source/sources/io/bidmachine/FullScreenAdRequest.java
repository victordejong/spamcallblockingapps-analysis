package io.bidmachine;

import io.bidmachine.AdRequest;
import io.bidmachine.FullScreenAdRequest;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.RequestBuilder;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/FullScreenAdRequest.class */
public abstract class FullScreenAdRequest<SelfType extends FullScreenAdRequest> extends AdRequest<SelfType, UnifiedFullscreenAdRequestParams> {
    AdContentType adContentType = AdContentType.All;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder.class */
    public static abstract class FullScreenRequestBuilder<SelfType extends RequestBuilder, ReturnType extends FullScreenAdRequest> extends AdRequest.AdRequestBuilderImpl<SelfType, ReturnType> {
        public SelfType setAdContentType(AdContentType adContentType) {
            prepareRequest();
            ((FullScreenAdRequest) this.params).adContentType = adContentType;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/FullScreenAdRequest$a.class */
    public final class a extends AdRequest<SelfType, UnifiedFullscreenAdRequestParams>.BaseUnifiedAdRequestParams implements UnifiedFullscreenAdRequestParams {
        a(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
            super(targetingParams, dataRestrictions);
        }

        @Override // io.bidmachine.unified.UnifiedFullscreenAdRequestParams
        public final boolean isContentTypeMatch(AdContentType adContentType) {
            return FullScreenAdRequest.this.adContentType == AdContentType.All || FullScreenAdRequest.this.adContentType == adContentType;
        }
    }

    public FullScreenAdRequest(AdsType adsType) {
        super(adsType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdRequest
    public UnifiedFullscreenAdRequestParams createUnifiedAdRequestParams(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        return new a(targetingParams, dataRestrictions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.bidmachine.AdRequest
    public boolean isPlacementBuilderMatch(PlacementBuilder placementBuilder) {
        return (this.adContentType == AdContentType.All || this.adContentType == placementBuilder.getAdContentType()) && super.isPlacementBuilderMatch(placementBuilder);
    }
}
