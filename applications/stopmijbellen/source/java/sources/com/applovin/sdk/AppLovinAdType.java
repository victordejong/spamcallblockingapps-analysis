package com.applovin.sdk;

import com.google.android.gms.internal.ads.C1676a;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinAdType.class */
public class AppLovinAdType {

    /* renamed from: a */
    private final String f5843a;
    public static final AppLovinAdType REGULAR = new AppLovinAdType("REGULAR");
    public static final AppLovinAdType INCENTIVIZED = new AppLovinAdType("VIDEOA");
    public static final AppLovinAdType AUTO_INCENTIVIZED = new AppLovinAdType("AUTOREW");
    public static final AppLovinAdType NATIVE = new AppLovinAdType("NATIVE");

    private AppLovinAdType(String str) {
        this.f5843a = str;
    }

    public static AppLovinAdType fromString(String str) {
        if ("REGULAR".equalsIgnoreCase(str)) {
            return REGULAR;
        }
        if ("VIDEOA".equalsIgnoreCase(str)) {
            return INCENTIVIZED;
        }
        if ("AUTOREW".equalsIgnoreCase(str)) {
            return AUTO_INCENTIVIZED;
        }
        if (!"NATIVE".equalsIgnoreCase(str)) {
            throw new IllegalArgumentException(C1676a.m4789h("Unknown Ad Type: ", str));
        }
        return NATIVE;
    }

    public String getLabel() {
        return this.f5843a.toUpperCase(Locale.ENGLISH);
    }

    public String toString() {
        return getLabel();
    }
}
