package com.google.ads.mediation.facebook;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/facebook/FacebookExtras.class */
public class FacebookExtras {
    public static String NATIVE_BANNER = "native_banner";
    private static boolean _nativeBanner;

    public Bundle build() {
        Bundle bundle = new Bundle();
        bundle.putBoolean(NATIVE_BANNER, _nativeBanner);
        return bundle;
    }

    public FacebookExtras setNativeBanner(boolean z) {
        _nativeBanner = z;
        return this;
    }
}
