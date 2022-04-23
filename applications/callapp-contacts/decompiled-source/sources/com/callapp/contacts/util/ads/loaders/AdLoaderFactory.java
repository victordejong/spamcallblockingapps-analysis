package com.callapp.contacts.util.ads.loaders;

import android.app.Activity;
import android.content.Context;
import android.util.Pair;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/AdLoaderFactory.class */
public class AdLoaderFactory {
    public static BaseInterstitialAdLoader a(Activity activity, Pair<String, Boolean> pair, AdUtils.AdEvents adEvents) {
        return ((Boolean) pair.second).booleanValue() ? new InterstitialBiddingAdLoader(activity, (String) pair.first, adEvents, false) : new InterstitialAdLoader(activity, (String) pair.first, adEvents, false);
    }

    public static BaseMultiSizeAdLoader a(Context context, AdUtils.AdEvents adEvents, Pair<String, Boolean> pair, int i, boolean z, NativeAdParamGetter nativeAdParamGetter, float f) {
        return ((Boolean) pair.second).booleanValue() ? new MultiSizeBiddingAdLoader(context, adEvents, (String) pair.first, i, z, nativeAdParamGetter, f) : new MultiSizeAdLoader(context, adEvents, (String) pair.first, i, z, nativeAdParamGetter, f);
    }
}
