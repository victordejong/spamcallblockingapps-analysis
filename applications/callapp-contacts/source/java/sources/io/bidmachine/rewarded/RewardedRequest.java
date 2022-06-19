package io.bidmachine.rewarded;

import com.explorestack.protobuf.adcom.Placement;
import io.bidmachine.AdRequest;
import io.bidmachine.AdsType;
import io.bidmachine.FullScreenAdRequest;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/rewarded/RewardedRequest.class */
public final class RewardedRequest extends FullScreenAdRequest<RewardedRequest> {

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/rewarded/RewardedRequest$AdRequestListener.class */
    public interface AdRequestListener extends AdRequest.AdRequestListener<RewardedRequest> {
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/rewarded/RewardedRequest$Builder.class */
    public static final class Builder extends FullScreenAdRequest.FullScreenRequestBuilder<Builder, RewardedRequest> {
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public final RewardedRequest createRequest() {
            return new RewardedRequest();
        }
    }

    private RewardedRequest() {
        super(AdsType.Rewarded);
    }

    @Override // io.bidmachine.AdRequest
    public final void onBuildPlacement(Placement.Builder builder) {
        super.onBuildPlacement(builder);
        builder.setReward(true);
    }
}
