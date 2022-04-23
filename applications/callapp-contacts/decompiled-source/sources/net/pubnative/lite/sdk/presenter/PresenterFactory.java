package net.pubnative.lite.sdk.presenter;

import android.content.Context;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.presenter.AdPresenter;
import net.pubnative.lite.sdk.utils.AdTracker;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/presenter/PresenterFactory.class */
public abstract class PresenterFactory {
    private final Context mContext;

    public PresenterFactory(Context context) {
        this.mContext = context;
    }

    public AdPresenter createPresenter(Ad ad, AdPresenter.Listener listener) {
        AdPresenter fromCreativeType = fromCreativeType(ad.assetgroupid, ad);
        if (fromCreativeType == null) {
            return null;
        }
        AdPresenterDecorator adPresenterDecorator = new AdPresenterDecorator(fromCreativeType, new AdTracker(ad.getBeacons("impression"), ad.getBeacons("click")), HyBid.getReportingController(), listener);
        fromCreativeType.setListener(adPresenterDecorator);
        fromCreativeType.setImpressionListener(adPresenterDecorator);
        return adPresenterDecorator;
    }

    protected abstract AdPresenter fromCreativeType(int i, Ad ad);

    /* JADX INFO: Access modifiers changed from: protected */
    public Context getContext() {
        return this.mContext;
    }
}
