package net.pubnative.lite.sdk.rewarded.presenter;

import android.content.Context;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.models.C20576Ad;
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

    public RewardedPresenter createRewardedPresenter(C20576Ad c20576Ad, RewardedPresenter.Listener listener) {
        RewardedPresenter fromCreativeType = fromCreativeType(c20576Ad.assetgroupid, c20576Ad);
        if (fromCreativeType == null) {
            return null;
        }
        RewardedPresenterDecorator rewardedPresenterDecorator = new RewardedPresenterDecorator(fromCreativeType, new AdTracker(c20576Ad.getBeacons("impression"), c20576Ad.getBeacons("click")), HyBid.getReportingController(), listener);
        fromCreativeType.setListener(rewardedPresenterDecorator);
        return rewardedPresenterDecorator;
    }

    RewardedPresenter fromCreativeType(int i, C20576Ad c20576Ad) {
        if (i != 15) {
            String str = TAG;
            Logger.m628e(str, "Incompatible asset group type: " + i + ", for rewarded ad format.");
            return null;
        }
        return new VastRewardedPresenter(this.mContext, c20576Ad, this.mZoneId);
    }
}
