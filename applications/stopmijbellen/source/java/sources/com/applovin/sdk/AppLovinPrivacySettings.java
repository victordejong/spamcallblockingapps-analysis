package com.applovin.sdk;

import android.content.Context;
import com.applovin.impl.sdk.C1393i;
import com.applovin.impl.sdk.C1479t;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinPrivacySettings.class */
public class AppLovinPrivacySettings {
    public static boolean hasUserConsent(Context context) {
        C1479t.m5110f("AppLovinPrivacySettings", "hasUserConsent()");
        Boolean m5570a = C1393i.m5575b().m5570a(context);
        if (m5570a != null) {
            return m5570a.booleanValue();
        }
        return false;
    }

    public static boolean isAgeRestrictedUser(Context context) {
        C1479t.m5110f("AppLovinPrivacySettings", "isAgeRestrictedUser()");
        Boolean m5570a = C1393i.m5580a().m5570a(context);
        if (m5570a != null) {
            return m5570a.booleanValue();
        }
        return false;
    }

    public static boolean isAgeRestrictedUserSet(Context context) {
        C1479t.m5110f("AppLovinPrivacySettings", "isAgeRestrictedUserSet()");
        return C1393i.m5580a().m5570a(context) != null;
    }

    public static boolean isDoNotSell(Context context) {
        C1479t.m5110f("AppLovinPrivacySettings", "isDoNotSell()");
        Boolean m5570a = C1393i.m5573c().m5570a(context);
        if (m5570a != null) {
            return m5570a.booleanValue();
        }
        return false;
    }

    public static boolean isDoNotSellSet(Context context) {
        C1479t.m5110f("AppLovinPrivacySettings", "isDoNotSellSet()");
        return C1393i.m5573c().m5570a(context) != null;
    }

    public static boolean isUserConsentSet(Context context) {
        C1479t.m5110f("AppLovinPrivacySettings", "isUserConsentSet()");
        return C1393i.m5575b().m5570a(context) != null;
    }

    public static void setDoNotSell(boolean z, Context context) {
        C1479t.m5110f("AppLovinPrivacySettings", "setDoNotSell()");
        if (C1393i.m5572c(z, context)) {
            AppLovinSdk.reinitializeAll(null, null, Boolean.valueOf(z));
        }
    }

    public static void setHasUserConsent(boolean z, Context context) {
        C1479t.m5110f("AppLovinPrivacySettings", "setHasUserConsent()");
        if (C1393i.m5574b(z, context)) {
            AppLovinSdk.reinitializeAll(Boolean.valueOf(z), null, null);
        }
    }

    public static void setIsAgeRestrictedUser(boolean z, Context context) {
        C1479t.m5110f("AppLovinPrivacySettings", "setIsAgeRestrictedUser()");
        if (C1393i.m5576a(z, context)) {
            AppLovinSdk.reinitializeAll(null, Boolean.valueOf(z), null);
        }
    }
}
