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

    /* renamed from: io.bidmachine.FullScreenAdRequest$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/FullScreenAdRequest$a.class */
    public final class C17794a extends AdRequest<SelfType, UnifiedFullscreenAdRequestParams>.BaseUnifiedAdRequestParams implements UnifiedFullscreenAdRequestParams {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17794a(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
            super(targetingParams, dataRestrictions);
            FullScreenAdRequest.this = r6;
        }

        @Override // io.bidmachine.unified.UnifiedFullscreenAdRequestParams
        public final boolean isContentTypeMatch(AdContentType adContentType) {
            return FullScreenAdRequest.this.adContentType == AdContentType.All || FullScreenAdRequest.this.adContentType == adContentType;
        }
    }

    public FullScreenAdRequest(AdsType adsType) {
        super(adsType);
    }

    @Override // io.bidmachine.AdRequest
    public UnifiedFullscreenAdRequestParams createUnifiedAdRequestParams(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        return new C17794a(targetingParams, dataRestrictions);
    }

    @Override // io.bidmachine.AdRequest
    public boolean isPlacementBuilderMatch(PlacementBuilder placementBuilder) {
        return (this.adContentType == AdContentType.All || this.adContentType == placementBuilder.getAdContentType()) && super.isPlacementBuilderMatch(placementBuilder);
    }
}
