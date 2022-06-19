package net.pubnative.lite.sdk.presenter;

import android.content.Context;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.models.C20576Ad;
import net.pubnative.lite.sdk.presenter.AdPresenter;
import net.pubnative.lite.sdk.utils.AdTracker;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/presenter/PresenterFactory.class */
public abstract class PresenterFactory {
    private final Context mContext;

    public PresenterFactory(Context context) {
        this.mContext = context;
    }

    public AdPresenter createPresenter(C20576Ad c20576Ad, AdPresenter.Listener listener) {
        AdPresenter fromCreativeType = fromCreativeType(c20576Ad.assetgroupid, c20576Ad);
        if (fromCreativeType == null) {
            return null;
        }
        AdPresenterDecorator adPresenterDecorator = new AdPresenterDecorator(fromCreativeType, new AdTracker(c20576Ad.getBeacons("impression"), c20576Ad.getBeacons("click")), HyBid.getReportingController(), listener);
        fromCreativeType.setListener(adPresenterDecorator);
        fromCreativeType.setImpressionListener(adPresenterDecorator);
        return adPresenterDecorator;
    }

    protected abstract AdPresenter fromCreativeType(int i, C20576Ad c20576Ad);

    public Context getContext() {
        return this.mContext;
    }
}
