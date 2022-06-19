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

    /* renamed from: n */
    private FirebaseAnalytics f25903n;

    /* renamed from: a */
    private static String m28430a(String str, int i) {
        return StringUtils.m26055a(RegexUtils.m31882s(str), i);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    public final void mo28432a() {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(CallAppApplication.get());
        this.f25903n = firebaseAnalytics;
        firebaseAnalytics.m8618a("Store_Name", this.f25865c);
        this.f25903n.m8618a("Days_Since_Install", String.valueOf(this.f25866d));
        this.f25903n.m8618a("AB_Group", String.valueOf(AbTestUtils.getGroupDimension()));
        this.f25903n.m8618a("Referrer", this.f25868f);
        this.f25903n.m8618a("UTM_MEDIUM", this.f25869g);
        this.f25903n.m8618a("UTM_CAMPAIGN", this.f25870h);
        this.f25903n.m8618a("Deeplink_Source", this.f25871i);
        this.f25903n.m8618a("Deeplink_Medium", this.f25872j);
        this.f25903n.m8618a("Deeplink_Campaign", this.f25873k);
        this.f25903n.m8618a("Deeplink_Term", this.f25874l);
        this.f25903n.m8618a("AppsFlyer_uid", this.f25875m);
        mo28428b();
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    public final void mo28431a(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("method", str);
        this.f25903n.m8619a("login", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    public final void mo28429a(String str, String str2, double d, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        Bundle bundle = new Bundle();
        bundle.putString("ad_source", str);
        bundle.putString("ad_unit_name", str2);
        if (ad_type_and_size != null) {
            bundle.putString(Reporting.Key.AD_FORMAT, ad_type_and_size.getType() + "_" + ad_type_and_size.getSize());
        }
        bundle.putDouble("value", d);
        bundle.putString(ImpressionData.CURRENCY, "USD");
        this.f25903n.m8619a("ad_impression", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    public final void mo28428b() {
        this.f25903n.m8620a(Prefs.f26241aR.get());
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    public final void mo28427b(String str, String str2, String str3, double d) {
        Bundle bundle = new Bundle();
        bundle.putString("category", m28430a(str, 100));
        bundle.putString("action", m28430a(str2, 100));
        bundle.putString("label", m28430a(str3, 100));
        if (d != 0.0d) {
            bundle.putDouble("value", d);
            bundle.putString(ImpressionData.CURRENCY, "USD");
        }
        FirebaseAnalytics firebaseAnalytics = this.f25903n;
        firebaseAnalytics.m8619a(m28430a(str + VerificationLanguage.REGION_PREFIX + str2, 40), bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    public final void mo28426b(String str, String str2, String str3, double d, String str4) {
        Bundle bundle = new Bundle();
        if (d != 0.0d) {
            bundle.putDouble("value", d);
            bundle.putString(ImpressionData.CURRENCY, str4);
        }
        bundle.putString("category", Constants.PURCHASE);
        bundle.putString("action", str);
        bundle.putString("label", str2);
        this.f25903n.m8619a("ca_event", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    public final void mo28425b(String str, String str2, String str3, double d, String... strArr) {
        Bundle bundle = new Bundle();
        String str4 = str;
        if (StringUtils.m26028f(str) > 100) {
            str4 = StringUtils.m26054a(str, 0, 99);
            CrashlyticsUtils.m27547a(new Throwable("Category length > 100, " + str4 + ", " + str2 + ", , " + str3));
        }
        bundle.putString("category", str4);
        String str5 = str2;
        if (StringUtils.m26028f(str2) > 100) {
            str5 = StringUtils.m26054a(str2, 0, 99);
            CrashlyticsUtils.m27547a(new Throwable("Action length > 100, " + str4 + ", " + str5 + ", , " + str3));
        }
        bundle.putString("action", str5);
        String str6 = str3;
        if (StringUtils.m26028f(str3) > 100) {
            str6 = StringUtils.m26054a(str3, 0, 99);
            CrashlyticsUtils.m27547a(new Throwable("Label length > 100, " + str4 + ", " + str5 + ", , " + str6));
        }
        bundle.putString("label", str6);
        if (d != 0.0d) {
            bundle.putDouble("value", d);
            bundle.putString(ImpressionData.CURRENCY, "USD");
        }
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i += 2) {
                int i2 = i + 1;
                if (StringUtils.m26028f(strArr[i2]) > 100) {
                    strArr[i2] = StringUtils.m26054a(strArr[i2], 0, 99);
                    CrashlyticsUtils.m27547a(new Throwable("Extra length > 100, " + str4 + ", " + str5 + ", , " + str6 + ", " + strArr[i2]));
                }
                bundle.putString(strArr[i], strArr[i2]);
            }
        }
        this.f25903n.m8619a("ca_event", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: c */
    public final void mo28424c() {
        this.f25903n.m8619a("tutorial_begin", (Bundle) null);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: c */
    public final void mo28423c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("screen_name", str);
        this.f25903n.m8619a(m28430a(str, 40), bundle);
        this.f25903n.m8619a("screen_view", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: d */
    public final void mo28422d() {
        this.f25903n.m8619a("tutorial_complete", (Bundle) null);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: i */
    public final void mo28421i() {
    }
}
