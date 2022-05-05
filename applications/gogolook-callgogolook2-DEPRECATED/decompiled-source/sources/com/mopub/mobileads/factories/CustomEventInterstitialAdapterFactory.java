package com.mopub.mobileads.factories;

import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.MoPubInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory.class */
public class CustomEventInterstitialAdapterFactory {

    /* renamed from: a */
    public static CustomEventInterstitialAdapterFactory f8843a = new CustomEventInterstitialAdapterFactory();

    public static CustomEventInterstitialAdapter create(MoPubInterstitial moPubInterstitial, String str, Map<String, String> map, long j, AdReport adReport) {
        return f8843a.m30347a(moPubInterstitial, str, map, j, adReport);
    }

    @Deprecated
    public static void setInstance(CustomEventInterstitialAdapterFactory customEventInterstitialAdapterFactory) {
        f8843a = customEventInterstitialAdapterFactory;
    }

    /* renamed from: a */
    public CustomEventInterstitialAdapter m30347a(MoPubInterstitial moPubInterstitial, String str, Map<String, String> map, long j, AdReport adReport) {
        return new CustomEventInterstitialAdapter(moPubInterstitial, str, map, j, adReport);
    }
}
