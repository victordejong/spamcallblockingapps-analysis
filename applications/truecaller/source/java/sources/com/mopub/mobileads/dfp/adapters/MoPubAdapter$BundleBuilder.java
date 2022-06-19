package com.mopub.mobileads.dfp.adapters;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder.class */
public final class MoPubAdapter$BundleBuilder {
    public static final String ARG_CUSTOM_REWARD_DATA = "custom_reward_data";

    /* renamed from: a */
    public int f8982a;

    /* renamed from: b */
    public int f8983b;

    /* renamed from: c */
    public int f8984c;

    /* renamed from: d */
    public String f8985d;

    public Bundle build() {
        Bundle bundle = new Bundle();
        bundle.putInt("privacy_icon_size_dp", this.f8982a);
        bundle.putInt("minimum_banner_width", this.f8983b);
        bundle.putInt("minimum_banner_height", this.f8984c);
        bundle.putString(ARG_CUSTOM_REWARD_DATA, this.f8985d);
        return bundle;
    }

    public MoPubAdapter$BundleBuilder setCustomRewardData(String str) {
        this.f8985d = str;
        return this;
    }

    public MoPubAdapter$BundleBuilder setMinimumBannerHeight(int i) {
        this.f8984c = i;
        return this;
    }

    public MoPubAdapter$BundleBuilder setMinimumBannerWidth(int i) {
        this.f8983b = i;
        return this;
    }

    public MoPubAdapter$BundleBuilder setPrivacyIconSize(int i) {
        this.f8982a = i;
        return this;
    }
}
