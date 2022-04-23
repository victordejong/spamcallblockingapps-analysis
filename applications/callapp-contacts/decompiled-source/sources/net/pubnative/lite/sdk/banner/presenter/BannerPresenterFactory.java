package net.pubnative.lite.sdk.banner.presenter;

import android.content.Context;
import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.presenter.AdPresenter;
import net.pubnative.lite.sdk.presenter.PresenterFactory;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/banner/presenter/BannerPresenterFactory.class */
public class BannerPresenterFactory extends PresenterFactory {
    private static final String TAG = "BannerPresenterFactory";

    public BannerPresenterFactory(Context context) {
        super(context);
    }

    @Override // net.pubnative.lite.sdk.presenter.PresenterFactory
    public AdPresenter fromCreativeType(int i, Ad ad) {
        if (i == 4) {
            return new VastAdPresenter(getContext(), ad);
        }
        if (!(i == 8 || i == 10 || i == 12)) {
            switch (i) {
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                    break;
                default:
                    String str = TAG;
                    Logger.e(str, "Incompatible asset group type: " + i + ", for banner ad format.");
                    return null;
            }
        }
        return new MraidAdPresenter(getContext(), ad);
    }
}
