package com.mopub.common;

import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/DefaultAdapterClasses.class */
public enum DefaultAdapterClasses {
    AD_COLONY_ADAPTER_CONFIGURATION("com.mopub.mobileads.AdColonyAdapterConfiguration"),
    APPLOVIN_ADAPTER_CONFIGURATION("com.mopub.mobileads.AppLovinAdapterConfiguration"),
    CHARTBOOST_ADAPTER_CONFIGURATION("com.mopub.mobileads.ChartboostAdapterConfiguration"),
    FACEBOOK_ADAPTER_CONFIGURATION("com.mopub.mobileads.FacebookAdapterConfiguration"),
    IRON_SOURCE_ADAPTER_CONFIGURATION("com.mopub.mobileads.IronSourceAdapterConfiguration"),
    GOOGLE_PLAY_SERVICES_ADAPTER_CONFIGURATION("com.mopub.mobileads.GooglePlayServicesAdapterConfiguration"),
    TAPJOY_ADAPTER_CONFIGURATION("com.mopub.mobileads.TapjoyAdapterConfiguration"),
    UNITY_ADS_ADAPTER_CONFIGURATION("com.mopub.mobileads.UnityAdsAdapterConfiguration"),
    VERIZON_ADAPTER_CONFIGURATION("com.mopub.mobileads.VerizonAdapterConfiguration"),
    VUNGLE_ADAPTER_CONFIGURATION("com.mopub.mobileads.VungleAdapterConfiguration"),
    PANGLE_ADAPTER_CONFIGURATION("com.mopub.mobileads.PangleAdapterConfiguration"),
    SNAP_ADAPTER_CONFIGURATION("com.mopub.mobileads.SnapAdAdapterConfiguration");
    

    /* renamed from: a */
    public final String f8464a;

    DefaultAdapterClasses(String str) {
        this.f8464a = str;
    }

    public static Set<String> getClassNamesSet() {
        HashSet hashSet = new HashSet();
        DefaultAdapterClasses[] values = values();
        for (int i = 0; i < 12; i++) {
            hashSet.add(values[i].f8464a);
        }
        return hashSet;
    }
}
