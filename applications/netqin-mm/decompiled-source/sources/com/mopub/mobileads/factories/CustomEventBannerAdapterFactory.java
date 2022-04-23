package com.mopub.mobileads.factories;

import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventBannerAdapter;
import com.mopub.mobileads.MoPubView;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/CustomEventBannerAdapterFactory.class */
public class CustomEventBannerAdapterFactory {

    /* renamed from: a */
    public static CustomEventBannerAdapterFactory f34500a = new CustomEventBannerAdapterFactory();

    public static CustomEventBannerAdapter create(MoPubView moPubView, String str, Map<String, String> map, long j, AdReport adReport) {
        return f34500a.m4143a(moPubView, str, map, j, adReport);
    }

    @Deprecated
    public static void setInstance(CustomEventBannerAdapterFactory customEventBannerAdapterFactory) {
        f34500a = customEventBannerAdapterFactory;
    }

    /* renamed from: a */
    public CustomEventBannerAdapter m4143a(MoPubView moPubView, String str, Map<String, String> map, long j, AdReport adReport) {
        return new CustomEventBannerAdapter(moPubView, str, map, j, adReport);
    }
}
