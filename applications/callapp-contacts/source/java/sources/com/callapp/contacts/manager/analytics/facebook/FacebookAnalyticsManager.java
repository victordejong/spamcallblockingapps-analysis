package com.callapp.contacts.manager.analytics.facebook;

import android.os.Bundle;
import android.util.Log;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.manager.analytics.AbstractAnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.StringUtils;
import com.facebook.C10181g;
import com.facebook.EnumC10396m;
import com.facebook.appevents.C10046g;
import com.facebook.appevents.C10063h;
import com.facebook.appevents.p285f.C10037d;
import com.facebook.internal.p299b.p301b.C10249a;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.math.BigDecimal;
import java.util.Currency;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager.class */
public class FacebookAnalyticsManager extends AbstractAnalyticsManager {

    /* renamed from: n */
    private C10046g f25902n;

    /* renamed from: a */
    private void m28437a(Bundle bundle) {
        bundle.putString("Store_Name", this.f25865c);
        bundle.putString("Days_Since_Install", String.valueOf(this.f25866d));
        bundle.putString("AB_Group", String.valueOf(AbTestUtils.getGroupDimension()));
        bundle.putString("Referrer", this.f25868f);
        bundle.putString("UTM_CAMPAIGN", this.f25870h);
        bundle.putString("UTM_MEDIUM", this.f25869g);
        bundle.putString("Deeplink_Source", this.f25871i);
        bundle.putString("Deeplink_Medium", this.f25872j);
        bundle.putString("Deeplink_Campaign", this.f25873k);
        bundle.putString("Deeplink_Term", this.f25874l);
        bundle.putString("AppsFlyer_uid", this.f25875m);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: a */
    public final void mo28432a() {
        C10181g.m23305a(CallAppApplication.get());
        this.f25902n = C10046g.m23531b(CallAppApplication.get(), Activities.getString(2131886891));
        if (Prefs.f26657n.get().booleanValue()) {
            C10181g.m23303a(EnumC10396m.APP_EVENTS);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    public final void mo28427b(String str, String str2, String str3, double d) {
        if (this.f25902n != null) {
            Bundle bundle = new Bundle();
            bundle.putString("category", str);
            bundle.putString("action", str2);
            if (StringUtils.m26045b((CharSequence) str3)) {
                bundle.putString("label", str3);
            }
            m28437a(bundle);
            C10046g c10046g = this.f25902n;
            c10046g.m23535a(str + VerificationLanguage.REGION_PREFIX + str2, d, bundle);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    public final void mo28426b(String str, String str2, String str3, double d, String str4) {
        if (this.f25902n != null) {
            Bundle bundle = new Bundle();
            bundle.putString("category", Constants.PURCHASE);
            bundle.putString("action", str);
            bundle.putString("label", str2);
            m28437a(bundle);
            C10046g c10046g = this.f25902n;
            BigDecimal valueOf = BigDecimal.valueOf(d);
            Currency currency = Currency.getInstance(str4);
            C10063h c10063h = c10046g.f33338a;
            if (C10249a.m23108a(c10063h)) {
                return;
            }
            try {
                if (C10037d.m23549b()) {
                    Log.w(C10063h.f33375a, "You are logging purchase events while auto-logging of in-app purchase is enabled in the SDK. Make sure you don't log duplicate events");
                }
                c10063h.m23480a(valueOf, currency, bundle, false);
            } catch (Throwable th) {
                C10249a.m23106a(th, c10063h);
            }
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: b */
    public final void mo28425b(String str, String str2, String str3, double d, String... strArr) {
        if (this.f25902n != null) {
            Bundle bundle = new Bundle();
            bundle.putString("category", str);
            bundle.putString("action", str2);
            if (StringUtils.m26045b((CharSequence) str3)) {
                bundle.putString("label", str3);
            }
            if (strArr != null) {
                for (int i = 0; i < strArr.length; i += 2) {
                    bundle.putString(strArr[i], strArr[i + 1]);
                }
            }
            m28437a(bundle);
            this.f25902n.m23535a("ga_event", d, bundle);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: c */
    public final void mo28423c(String str) {
        if (this.f25902n != null) {
            Bundle bundle = new Bundle();
            bundle.putString("view", str);
            m28437a(bundle);
            this.f25902n.m23534a("fb_mobile_content_view", bundle);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: e */
    public final void mo28436e() {
        Bundle bundle = new Bundle();
        bundle.putString("fb_currency", "USD");
        m28437a(bundle);
        this.f25902n.m23535a("StartTrial", 0.0d, bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: f */
    public final void mo28435f() {
        Bundle bundle = new Bundle();
        bundle.putString("fb_currency", "USD");
        m28437a(bundle);
        this.f25902n.m23535a("Subscribe", 0.0d, bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: g */
    public final void mo28434g() {
        Bundle bundle = new Bundle();
        bundle.putString("fb_level", "default dialer");
        m28437a(bundle);
        this.f25902n.m23534a("fb_mobile_level_achieved", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: h */
    public final void mo28433h() {
        Bundle bundle = new Bundle();
        bundle.putInt("fb_success", 1);
        m28437a(bundle);
        this.f25902n.m23534a("fb_mobile_add_payment_info", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    /* renamed from: i */
    public final void mo28421i() {
        this.f25902n.f33338a.m23479b();
    }
}
