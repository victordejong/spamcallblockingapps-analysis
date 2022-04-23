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
import com.facebook.appevents.f.d;
import com.facebook.appevents.g;
import com.facebook.appevents.h;
import com.facebook.internal.b.b.a;
import com.facebook.m;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.math.BigDecimal;
import java.util.Currency;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager.class */
public class FacebookAnalyticsManager extends AbstractAnalyticsManager {
    private g n;

    private void a(Bundle bundle) {
        bundle.putString("Store_Name", this.f14958c);
        bundle.putString("Days_Since_Install", String.valueOf(this.f14959d));
        bundle.putString("AB_Group", String.valueOf(AbTestUtils.getGroupDimension()));
        bundle.putString("Referrer", this.f);
        bundle.putString("UTM_CAMPAIGN", this.h);
        bundle.putString("UTM_MEDIUM", this.g);
        bundle.putString("Deeplink_Source", this.i);
        bundle.putString("Deeplink_Medium", this.j);
        bundle.putString("Deeplink_Campaign", this.k);
        bundle.putString("Deeplink_Term", this.l);
        bundle.putString("AppsFlyer_uid", this.m);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void a() {
        com.facebook.g.a(CallAppApplication.get());
        this.n = g.b(CallAppApplication.get(), Activities.getString(2131886891));
        if (Prefs.n.get().booleanValue()) {
            com.facebook.g.a(m.APP_EVENTS);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void b(String str, String str2, String str3, double d2) {
        if (this.n != null) {
            Bundle bundle = new Bundle();
            bundle.putString("category", str);
            bundle.putString("action", str2);
            if (StringUtils.b((CharSequence) str3)) {
                bundle.putString("label", str3);
            }
            a(bundle);
            g gVar = this.n;
            gVar.a(str + VerificationLanguage.REGION_PREFIX + str2, d2, bundle);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void b(String str, String str2, String str3, double d2, String str4) {
        if (this.n != null) {
            Bundle bundle = new Bundle();
            bundle.putString("category", Constants.PURCHASE);
            bundle.putString("action", str);
            bundle.putString("label", str2);
            a(bundle);
            g gVar = this.n;
            BigDecimal valueOf = BigDecimal.valueOf(d2);
            Currency instance = Currency.getInstance(str4);
            h hVar = gVar.f19572a;
            if (!a.a(hVar)) {
                try {
                    if (d.b()) {
                        Log.w(h.f19597a, "You are logging purchase events while auto-logging of in-app purchase is enabled in the SDK. Make sure you don't log duplicate events");
                    }
                    hVar.a(valueOf, instance, bundle, false);
                } catch (Throwable th) {
                    a.a(th, hVar);
                }
            }
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void b(String str, String str2, String str3, double d2, String... strArr) {
        if (this.n != null) {
            Bundle bundle = new Bundle();
            bundle.putString("category", str);
            bundle.putString("action", str2);
            if (StringUtils.b((CharSequence) str3)) {
                bundle.putString("label", str3);
            }
            if (strArr != null) {
                for (int i = 0; i < strArr.length; i += 2) {
                    bundle.putString(strArr[i], strArr[i + 1]);
                }
            }
            a(bundle);
            this.n.a("ga_event", d2, bundle);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void c(String str) {
        if (this.n != null) {
            Bundle bundle = new Bundle();
            bundle.putString("view", str);
            a(bundle);
            this.n.a("fb_mobile_content_view", bundle);
        }
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void e() {
        Bundle bundle = new Bundle();
        bundle.putString("fb_currency", "USD");
        a(bundle);
        this.n.a("StartTrial", 0.0d, bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void f() {
        Bundle bundle = new Bundle();
        bundle.putString("fb_currency", "USD");
        a(bundle);
        this.n.a("Subscribe", 0.0d, bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void g() {
        Bundle bundle = new Bundle();
        bundle.putString("fb_level", "default dialer");
        a(bundle);
        this.n.a("fb_mobile_level_achieved", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void h() {
        Bundle bundle = new Bundle();
        bundle.putInt("fb_success", 1);
        a(bundle);
        this.n.a("fb_mobile_add_payment_info", bundle);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    public final void i() {
        this.n.f19572a.b();
    }
}
