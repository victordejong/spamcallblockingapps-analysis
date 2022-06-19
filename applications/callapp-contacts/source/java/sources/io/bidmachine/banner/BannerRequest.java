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
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public final BannerRequest createRequest() {
            return new BannerRequest();
        }

        @Override // io.bidmachine.models.IBannerRequestBuilder
        public final Builder setSize(BannerSize bannerSize) {
            prepareRequest();
            ((BannerRequest) this.params).bannerSize = bannerSize;
            return this;
        }
    }

    /* renamed from: io.bidmachine.banner.BannerRequest$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/banner/BannerRequest$a.class */
    public final class C17822a extends AdRequest<BannerRequest, UnifiedBannerAdRequestParams>.BaseUnifiedAdRequestParams implements UnifiedBannerAdRequestParams {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17822a(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
            super(targetingParams, dataRestrictions);
            BannerRequest.this = r6;
        }

        @Override // io.bidmachine.unified.UnifiedBannerAdRequestParams
        public final BannerSize getBannerSize() {
            return BannerRequest.this.getSize();
        }
    }

    private BannerRequest() {
        super(AdsType.Banner);
    }

    @Override // io.bidmachine.AdRequest
    public final UnifiedBannerAdRequestParams createUnifiedAdRequestParams(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        return new C17822a(targetingParams, dataRestrictions);
    }

    public final BannerSize getSize() {
        return this.bannerSize;
    }

    @Override // io.bidmachine.AdRequest
    public final BMError verifyRequest() {
        return this.bannerSize == null ? BMError.paramError("BannerSize not provided") : super.verifyRequest();
    }
}
