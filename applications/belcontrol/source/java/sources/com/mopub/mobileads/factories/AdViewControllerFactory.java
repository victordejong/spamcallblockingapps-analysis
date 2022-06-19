package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.MoPubAd;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/AdViewControllerFactory.class */
public class AdViewControllerFactory {

    /* renamed from: a */
    public static AdViewControllerFactory f4995a = new AdViewControllerFactory();

    public static AdViewController create(Context context, MoPubAd moPubAd) {
        return f4995a.m3502a(context, moPubAd);
    }

    @Deprecated
    public static void setInstance(AdViewControllerFactory adViewControllerFactory) {
        f4995a = adViewControllerFactory;
    }

    /* renamed from: a */
    public AdViewController m3502a(Context context, MoPubAd moPubAd) {
        return new AdViewController(context, moPubAd);
    }
}
