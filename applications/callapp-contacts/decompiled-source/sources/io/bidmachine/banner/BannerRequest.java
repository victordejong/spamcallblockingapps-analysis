package io.bidmachine.banner;

import io.bidmachine.AdRequest;
import io.bidmachine.AdsType;
import io.bidmachine.TargetingParams;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.IBannerRequestBuilder;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/banner/BannerRequest.class */
public final class BannerRequest extends AdRequest<BannerRequest, UnifiedBannerAdRequestParams> {
    private BannerSize bannerSize;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/banner/BannerRequest$AdRequestListener.class */
    public interface AdRequestListener extends AdRequest.AdRequestListener<BannerRequest> {
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/banner/BannerRequest$Builder.class */
    public static final class Builder extends AdRequest.AdRequestBuilderImpl<Builder, BannerRequest> implements IBannerRequestBuilder<Builder> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public final BannerRequest createRequest() {
            return new BannerRequest();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.bidmachine.models.IBannerRequestBuilder
        public final Builder setSize(BannerSize bannerSize) {
            prepareRequest();
            ((BannerRequest) this.params).bannerSize = bannerSize;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/banner/BannerRequest$a.class */
    public final class a extends AdRequest<BannerRequest, UnifiedBannerAdRequestParams>.BaseUnifiedAdRequestParams implements UnifiedBannerAdRequestParams {
        a(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
            super(targetingParams, dataRestrictions);
        }

        @Override // io.bidmachine.unified.UnifiedBannerAdRequestParams
        public final BannerSize getBannerSize() {
            return BannerRequest.this.getSize();
        }
    }

    private BannerRequest() {
        super(AdsType.Banner);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdRequest
    public final UnifiedBannerAdRequestParams createUnifiedAdRequestParams(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        return new a(targetingParams, dataRestrictions);
    }

    public final BannerSize getSize() {
        return this.bannerSize;
    }

    @Override // io.bidmachine.AdRequest
    public final BMError verifyRequest() {
        return this.bannerSize == null ? BMError.paramError("BannerSize not provided") : super.verifyRequest();
    }
}
