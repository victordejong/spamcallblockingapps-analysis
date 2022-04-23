package com.callapp.contacts.manager.analytics.firebase;

import android.os.Bundle;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.manager.analytics.AbstractAnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.framework.util.StringUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mopub.common.MoPub;
import com.mopub.network.ImpressionData;
import com.sinch.verification.core.verification.VerificationLanguage;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager.class */
public class FirebaseAnalyticsManager extends AbstractAnalyticsManager {
    private FirebaseAnalytics n;

    private static String a(String str, int i) {
        return StringUtils.a(RegexUtils.s(str), i);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void a() {
        FirebaseAnalytics instance = FirebaseAnalytics.getInstance(CallAppApplication.get());
        this.n = instance;
        instance.a("Store_Name", this.f14958c);
        this.n.a("Days_Since_Install", String.valueOf(this.f14959d));
        this.n.a("AB_Group", String.valueOf(AbTestUtils.getGroupDimension()));
        this.n.a("Referrer", this.f);
        this.n.a("UTM_MEDIUM", this.g);
        this.n.a("UTM_CAMPAIGN", this.h);
        this.n.a("Deeplink_Source", this.i);
        this.n.a("Deeplink_Medium", this.j);
        this.n.a("Deeplink_Campaign", this.k);
        this.n.a("Deeplink_Term", this.l);
        this.n.a("AppsFlyer_uid", this.m);
        b();
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void a(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("method", str);
        this.n.a("login", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void a(String str, String str2, double d2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        Bundle bundle = new Bundle();
        bundle.putString("ad_source", str);
        bundle.putString("ad_unit_name", str2);
        if (ad_type_and_size != null) {
            bundle.putString(Reporting.Key.AD_FORMAT, ad_type_and_size.getType() + "_" + ad_type_and_size.getSize());
        }
        bundle.putDouble("value", d2);
        bundle.putString(ImpressionData.CURRENCY, "USD");
        this.n.a("ad_impression", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void b() {
        this.n.a(Prefs.aR.get());
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void b(String str, String str2, String str3, double d2) {
        Bundle bundle = new Bundle();
        bundle.putString("category", a(str, 100));
        bundle.putString("action", a(str2, 100));
        bundle.putString("label", a(str3, 100));
        if (d2 != 0.0d) {
            bundle.putDouble("value", d2);
            bundle.putString(ImpressionData.CURRENCY, "USD");
        }
        FirebaseAnalytics firebaseAnalytics = this.n;
        firebaseAnalytics.a(a(str + VerificationLanguage.REGION_PREFIX + str2, 40), bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void b(String str, String str2, String str3, double d2, String str4) {
        Bundle bundle = new Bundle();
        if (d2 != 0.0d) {
            bundle.putDouble("value", d2);
            bundle.putString(ImpressionData.CURRENCY, str4);
        }
        bundle.putString("category", Constants.PURCHASE);
        bundle.putString("action", str);
        bundle.putString("label", str2);
        this.n.a("ca_event", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void b(String str, String str2, String str3, double d2, String... strArr) {
        Bundle bundle = new Bundle();
        String str4 = str;
        if (StringUtils.f(str) > 100) {
            str4 = StringUtils.a(str, 0, 99);
            CrashlyticsUtils.a(new Throwable("Category length > 100, " + str4 + ", " + str2 + ", , " + str3));
        }
        bundle.putString("category", str4);
        String str5 = str2;
        if (StringUtils.f(str2) > 100) {
            str5 = StringUtils.a(str2, 0, 99);
            CrashlyticsUtils.a(new Throwable("Action length > 100, " + str4 + ", " + str5 + ", , " + str3));
        }
        bundle.putString("action", str5);
        String str6 = str3;
        if (StringUtils.f(str3) > 100) {
            str6 = StringUtils.a(str3, 0, 99);
            CrashlyticsUtils.a(new Throwable("Label length > 100, " + str4 + ", " + str5 + ", , " + str6));
        }
        bundle.putString("label", str6);
        if (d2 != 0.0d) {
            bundle.putDouble("value", d2);
            bundle.putString(ImpressionData.CURRENCY, "USD");
        }
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i += 2) {
                int i2 = i + 1;
                if (StringUtils.f(strArr[i2]) > 100) {
                    strArr[i2] = StringUtils.a(strArr[i2], 0, 99);
                    CrashlyticsUtils.a(new Throwable("Extra length > 100, " + str4 + ", " + str5 + ", , " + str6 + ", " + strArr[i2]));
                }
                bundle.putString(strArr[i], strArr[i2]);
            }
        }
        this.n.a("ca_event", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void c() {
        this.n.a("tutorial_begin", (Bundle) null);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("screen_name", str);
        this.n.a(a(str, 40), bundle);
        this.n.a("screen_view", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void d() {
        this.n.a("tutorial_complete", (Bundle) null);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void i() {
    }
}
