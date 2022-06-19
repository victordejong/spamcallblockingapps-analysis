package net.pubnative.lite.sdk.interstitial.presenter;

import android.content.Context;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter;
import net.pubnative.lite.sdk.models.C20576Ad;
import net.pubnative.lite.sdk.utils.AdTracker;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/presenter/InterstitialPresenterFactory.class */
public class InterstitialPresenterFactory {
    private static final String TAG = "InterstitialPresenterFactory";
    private final Context mContext;
    private final String mZoneId;

    public InterstitialPresenterFactory(Context context, String str) {
        this.mContext = context;
        this.mZoneId = str;
    }

    public InterstitialPresenter createInterstitialPresenter(C20576Ad c20576Ad, int i, InterstitialPresenter.Listener listener) {
        InterstitialPresenter fromCreativeType = fromCreativeType(c20576Ad.assetgroupid, c20576Ad, i);
        if (fromCreativeType == null) {
            return null;
        }
        InterstitialPresenterDecorator interstitialPresenterDecorator = new InterstitialPresenterDecorator(fromCreativeType, new AdTracker(c20576Ad.getBeacons("impression"), c20576Ad.getBeacons("click")), HyBid.getReportingController(), listener);
        fromCreativeType.setListener(interstitialPresenterDecorator);
        return interstitialPresenterDecorator;
    }

    public InterstitialPresenter createInterstitialPresenter(C20576Ad c20576Ad, InterstitialPresenter.Listener listener) {
        return createInterstitialPresenter(c20576Ad, 0, listener);
    }

    InterstitialPresenter fromCreativeType(int i, C20576Ad c20576Ad, int i2) {
        if (i != 15) {
            if (i != 27 && i != 29) {
                switch (i) {
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        String str = TAG;
                        Logger.m628e(str, "Incompatible asset group type: " + i + ", for interstitial ad format.");
                        return null;
                }
            }
            return new MraidInterstitialPresenter(this.mContext, c20576Ad, this.mZoneId, Integer.valueOf(i2));
        }
        return new VastInterstitialPresenter(this.mContext, c20576Ad, this.mZoneId, i2);
    }
}
