package com.facebook.appevents.p038s;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import com.facebook.appevents.C2271g;
import com.facebook.appevents.C2283m;
import com.facebook.internal.C2416h0;
import com.facebook.internal.C2460n;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.s.d */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/d.class */
public class C2338d {

    /* renamed from: a */
    public static final String f2845a = "com.facebook.appevents.s.d";

    /* renamed from: b */
    public static final C2283m f2846b = new C2283m(C6135n.m23746e());

    /* renamed from: com.facebook.appevents.s.d$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/d$a.class */
    public static class C2339a {

        /* renamed from: a */
        public BigDecimal f2847a;

        /* renamed from: b */
        public Currency f2848b;

        /* renamed from: c */
        public Bundle f2849c;

        public C2339a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
            this.f2847a = bigDecimal;
            this.f2848b = currency;
            this.f2849c = bundle;
        }
    }

    @Nullable
    /* renamed from: a */
    public static C2339a m35120a(String str, String str2) {
        return m35119a(str, str2, new HashMap());
    }

    @Nullable
    /* renamed from: a */
    public static C2339a m35119a(String str, String str2, Map<String, String> map) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject(str2);
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence("fb_iap_product_id", jSONObject.getString("productId"));
            bundle.putCharSequence("fb_iap_purchase_time", jSONObject.getString("purchaseTime"));
            bundle.putCharSequence("fb_iap_purchase_token", jSONObject.getString("purchaseToken"));
            bundle.putCharSequence("fb_iap_package_name", jSONObject.optString("packageName"));
            bundle.putCharSequence("fb_iap_product_title", jSONObject2.optString("title"));
            bundle.putCharSequence("fb_iap_product_description", jSONObject2.optString("description"));
            String optString = jSONObject2.optString("type");
            bundle.putCharSequence("fb_iap_product_type", optString);
            if (optString.equals("subs")) {
                bundle.putCharSequence("fb_iap_subs_auto_renewing", Boolean.toString(jSONObject.optBoolean("autoRenewing", false)));
                bundle.putCharSequence("fb_iap_subs_period", jSONObject2.optString(IapProductRealmObject.SUBSCRIPTION_PERIOD));
                bundle.putCharSequence("fb_free_trial_period", jSONObject2.optString("freeTrialPeriod"));
                String optString2 = jSONObject2.optString("introductoryPriceCycles");
                if (!optString2.isEmpty()) {
                    bundle.putCharSequence("fb_intro_price_amount_micros", jSONObject2.optString("introductoryPriceAmountMicros"));
                    bundle.putCharSequence("fb_intro_price_cycles", optString2);
                }
            }
            for (String str3 : map.keySet()) {
                bundle.putCharSequence(str3, map.get(str3));
            }
            return new C2339a(new BigDecimal(jSONObject2.getLong("price_amount_micros") / 1000000.0d), Currency.getInstance(jSONObject2.getString("price_currency_code")), bundle);
        } catch (JSONException e) {
            Log.e(f2845a, "Error parsing in-app subscription data.", e);
            return null;
        }
    }

    /* renamed from: a */
    public static void m35121a(String str, long j) {
        Context e = C6135n.m23746e();
        String f = C6135n.m23745f();
        C2416h0.m34791a(e, "context");
        C2464o a = C2466p.m34643a(f, false);
        if (a != null && a.m34667a() && j > 0) {
            C2283m mVar = new C2283m(e);
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence("fb_aa_time_spent_view_name", str);
            mVar.m35301a("fb_aa_time_spent_on_view", j, bundle);
        }
    }

    /* renamed from: a */
    public static void m35118a(String str, String str2, boolean z) {
        C2339a a;
        if (m35122a() && (a = m35120a(str, str2)) != null) {
            boolean z2 = false;
            if (z) {
                z2 = false;
                if (C2460n.m34676a("app_events_if_auto_log_subs", C6135n.m23745f(), false)) {
                    z2 = true;
                }
            }
            if (z2) {
                f2846b.m35298a(C2346g.m35099a(str2) ? "StartTrial" : "Subscribe", a.f2847a, a.f2848b, a.f2849c);
            } else {
                f2846b.m35297a(a.f2847a, a.f2848b, a.f2849c);
            }
        }
    }

    /* renamed from: a */
    public static boolean m35122a() {
        C2464o c = C2466p.m34636c(C6135n.m23745f());
        return c != null && C6135n.m23742i() && c.m34661f();
    }

    /* renamed from: b */
    public static void m35117b() {
        Context e = C6135n.m23746e();
        String f = C6135n.m23745f();
        boolean i = C6135n.m23742i();
        C2416h0.m34791a(e, "context");
        if (i && (e instanceof Application)) {
            C2271g.m35336a((Application) e, f);
        }
    }
}
