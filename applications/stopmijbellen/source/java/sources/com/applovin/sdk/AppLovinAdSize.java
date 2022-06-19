package com.applovin.sdk;

import com.google.android.gms.internal.ads.C1676a;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinAdSize.class */
public class AppLovinAdSize {
    public static final int SPAN = -1;

    /* renamed from: a */
    private final String f5840a;

    /* renamed from: b */
    private final int f5841b;

    /* renamed from: c */
    private final int f5842c;
    public static final AppLovinAdSize BANNER = new AppLovinAdSize(-1, 50, "BANNER");
    public static final AppLovinAdSize LEADER = new AppLovinAdSize(-1, 90, "LEADER");
    public static final AppLovinAdSize MREC = new AppLovinAdSize(300, 250, "MREC");
    public static final AppLovinAdSize INTERSTITIAL = new AppLovinAdSize(-1, -1, "INTER");
    public static final AppLovinAdSize CROSS_PROMO = new AppLovinAdSize(-1, -1, "XPROMO");
    public static final AppLovinAdSize NATIVE = new AppLovinAdSize(-1, -1, "NATIVE");

    private AppLovinAdSize(int i, int i2, String str) {
        this.f5841b = i;
        this.f5842c = i2;
        this.f5840a = str;
    }

    public static AppLovinAdSize fromString(String str) {
        if ("BANNER".equalsIgnoreCase(str)) {
            return BANNER;
        }
        if ("MREC".equalsIgnoreCase(str)) {
            return MREC;
        }
        if ("LEADER".equalsIgnoreCase(str)) {
            return LEADER;
        }
        if ("INTERSTITIAL".equalsIgnoreCase(str) || "INTER".equalsIgnoreCase(str)) {
            return INTERSTITIAL;
        }
        if ("XPROMO".equalsIgnoreCase(str)) {
            return CROSS_PROMO;
        }
        if (!"NATIVE".equalsIgnoreCase(str)) {
            throw new IllegalArgumentException(C1676a.m4789h("Unknown Ad Size: ", str));
        }
        return NATIVE;
    }

    public int getHeight() {
        return this.f5842c;
    }

    public String getLabel() {
        return this.f5840a.toUpperCase(Locale.ENGLISH);
    }

    public int getWidth() {
        return this.f5841b;
    }

    public String toString() {
        return getLabel();
    }
}
