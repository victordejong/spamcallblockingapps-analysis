package net.pubnative.lite.sdk.interstitial.presenter;

import android.content.Context;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter;
import net.pubnative.lite.sdk.models.Ad;
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

    public InterstitialPresenter createInterstitialPresenter(Ad ad, int i, InterstitialPresenter.Listener listener) {
        InterstitialPresenter fromCreativeType = fromCreativeType(ad.assetgroupid, ad, i);
        if (fromCreativeType == null) {
            return null;
        }
        InterstitialPresenterDecorator interstitialPresenterDecorator = new InterstitialPresenterDecorator(fromCreativeType, new AdTracker(ad.getBeacons("impression"), ad.getBeacons("click")), HyBid.getReportingController(), listener);
        fromCreativeType.setListener(interstitialPresenterDecorator);
        return interstitialPresenterDecorator;
    }

    public InterstitialPresenter createInterstitialPresenter(Ad ad, InterstitialPresenter.Listener listener) {
        return createInterstitialPresenter(ad, 0, listener);
    }

    InterstitialPresenter fromCreativeType(int i, Ad ad, int i2) {
        if (i == 15) {
            return new VastInterstitialPresenter(this.mContext, ad, this.mZoneId, i2);
        }
        if (!(i == 27 || i == 29)) {
            switch (i) {
                case 21:
                case 22:
                case 23:
                    break;
                default:
                    String str = TAG;
                    Logger.e(str, "Incompatible asset group type: " + i + ", for interstitial ad format.");
                    return null;
            }
        }
        return new MraidInterstitialPresenter(this.mContext, ad, this.mZoneId, Integer.valueOf(i2));
    }
}
