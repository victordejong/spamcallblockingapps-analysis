package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.MoPubAd;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/AdViewControllerFactory.class */
public class AdViewControllerFactory {

    /* renamed from: a */
    public static AdViewControllerFactory f8997a = new AdViewControllerFactory();

    public static AdViewController create(Context context, MoPubAd moPubAd) {
        Objects.requireNonNull(f8997a);
        return new AdViewController(context, moPubAd);
    }

    @Deprecated
    public static void setInstance(AdViewControllerFactory adViewControllerFactory) {
        f8997a = adViewControllerFactory;
    }
}
