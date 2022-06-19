package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.MoPubAd;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/AdViewControllerFactory.class */
public class AdViewControllerFactory {

    /* renamed from: a */
    protected static AdViewControllerFactory f59693a = new AdViewControllerFactory();

    public static AdViewController create(Context context, MoPubAd moPubAd) {
        return new AdViewController(context, moPubAd);
    }

    @Deprecated
    public static void setInstance(AdViewControllerFactory adViewControllerFactory) {
        f59693a = adViewControllerFactory;
    }
}
