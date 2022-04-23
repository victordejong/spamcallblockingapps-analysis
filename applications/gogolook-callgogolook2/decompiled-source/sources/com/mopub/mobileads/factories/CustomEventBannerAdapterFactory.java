package com.mopub.mobileads.factories;

import androidx.annotation.NonNull;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventBannerAdapter;
import com.mopub.mobileads.MoPubView;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/CustomEventBannerAdapterFactory.class */
public class CustomEventBannerAdapterFactory {

    /* renamed from: a */
    public static CustomEventBannerAdapterFactory f8841a = new CustomEventBannerAdapterFactory();

    public static CustomEventBannerAdapter create(@NonNull MoPubView moPubView, @NonNull String str, @NonNull Map<String, String> map, long j, @NonNull AdReport adReport) {
        return f8841a.m30349a(moPubView, str, map, j, adReport);
    }

    @Deprecated
    public static void setInstance(CustomEventBannerAdapterFactory customEventBannerAdapterFactory) {
        f8841a = customEventBannerAdapterFactory;
    }

    /* renamed from: a */
    public CustomEventBannerAdapter m30349a(@NonNull MoPubView moPubView, @NonNull String str, @NonNull Map<String, String> map, long j, @NonNull AdReport adReport) {
        return new CustomEventBannerAdapter(moPubView, str, map, j, adReport);
    }
}
