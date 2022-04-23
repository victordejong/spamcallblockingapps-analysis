package net.pubnative.lite.sdk.rewarded.presenter;

import android.content.Context;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter;
import net.pubnative.lite.sdk.utils.AdTracker;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/presenter/RewardedPresenterFactory.class */
public class RewardedPresenterFactory {
    private static final String TAG = "RewardedPresenterFactory";
    private final Context mContext;
    private final String mZoneId;

    public RewardedPresenterFactory(Context context, String str) {
        this.mContext = context;
        this.mZoneId = str;
    }

    public RewardedPresenter createRewardedPresenter(Ad ad, RewardedPresenter.Listener listener) {
        RewardedPresenter fromCreativeType = fromCreativeType(ad.assetgroupid, ad);
        if (fromCreativeType == null) {
            return null;
        }
        RewardedPresenterDecorator rewardedPresenterDecorator = new RewardedPresenterDecorator(fromCreativeType, new AdTracker(ad.getBeacons("impression"), ad.getBeacons("click")), HyBid.getReportingController(), listener);
        fromCreativeType.setListener(rewardedPresenterDecorator);
        return rewardedPresenterDecorator;
    }

    RewardedPresenter fromCreativeType(int i, Ad ad) {
        if (i == 15) {
            return new VastRewardedPresenter(this.mContext, ad, this.mZoneId);
        }
        String str = TAG;
        Logger.e(str, "Incompatible asset group type: " + i + ", for rewarded ad format.");
        return null;
    }
}
