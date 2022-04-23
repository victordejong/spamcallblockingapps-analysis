package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.MoPubView;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/AdViewControllerFactory.class */
public class AdViewControllerFactory {

    /* renamed from: a */
    public static AdViewControllerFactory f8840a = new AdViewControllerFactory();

    public static AdViewController create(Context context, MoPubView moPubView) {
        return f8840a.m30350a(context, moPubView);
    }

    @Deprecated
    public static void setInstance(AdViewControllerFactory adViewControllerFactory) {
        f8840a = adViewControllerFactory;
    }

    /* renamed from: a */
    public AdViewController m30350a(Context context, MoPubView moPubView) {
        return new AdViewController(context, moPubView);
    }
}
