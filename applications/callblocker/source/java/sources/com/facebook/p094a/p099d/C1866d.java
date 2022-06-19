package com.facebook.p094a.p099d;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.facebook.C2095j;
import com.facebook.internal.C2044k;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2084y;
import com.facebook.p094a.C1904g;
import com.facebook.p094a.C1927m;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.d.d */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/d.class */
public class C1866d {

    /* renamed from: a */
    private static final String f5661a = C1866d.class.getCanonicalName();

    /* renamed from: b */
    private static final C1927m f5662b = new C1927m(C2095j.m15360h());

    /* renamed from: com.facebook.a.d.d$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/d/d$a.class */
    public static class C1867a {

        /* renamed from: a */
        BigDecimal f5663a;

        /* renamed from: b */
        Currency f5664b;

        /* renamed from: c */
        Bundle f5665c;

        C1867a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
            this.f5663a = bigDecimal;
            this.f5664b = currency;
            this.f5665c = bundle;
        }
    }

    /* renamed from: a */
    private static C1867a m16056a(String str, String str2) {
        return m16055a(str, str2, new HashMap());
    }

    /* renamed from: a */
    private static C1867a m16055a(String str, String str2, Map<String, String> map) {
        C1867a c1867a;
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
                bundle.putCharSequence("fb_iap_subs_period", jSONObject2.optString("subscriptionPeriod"));
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
            c1867a = new C1867a(new BigDecimal(jSONObject2.getLong("price_amount_micros") / 1000000.0d), Currency.getInstance(jSONObject2.getString("price_currency_code")), bundle);
        } catch (JSONException e) {
            Log.e(f5661a, "Error parsing in-app subscription data.", e);
            c1867a = null;
        }
        return c1867a;
    }

    /* renamed from: a */
    public static void m16058a() {
        Context m15360h = C2095j.m15360h();
        String m15356l = C2095j.m15356l();
        boolean m15352p = C2095j.m15352p();
        C2084y.m15417a((Object) m15360h, "context");
        if (m15352p) {
            if (m15360h instanceof Application) {
                C1904g.m15934a((Application) m15360h, m15356l);
            } else {
                Log.w(f5661a, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context.");
            }
        }
    }

    /* renamed from: a */
    public static void m16057a(String str, long j) {
        Context m15360h = C2095j.m15360h();
        String m15356l = C2095j.m15356l();
        C2084y.m15417a((Object) m15360h, "context");
        C2048l m15584a = C2050m.m15584a(m15356l, false);
        if (m15584a == null || !m15584a.m15601e() || j <= 0) {
            return;
        }
        C1927m c1927m = new C1927m(m15360h);
        Bundle bundle = new Bundle(1);
        bundle.putCharSequence("fb_aa_time_spent_view_name", str);
        c1927m.m15859a("fb_aa_time_spent_on_view", j, bundle);
    }

    /* renamed from: a */
    public static void m16054a(String str, String str2, boolean z) {
        C1867a m16056a;
        if (m16053b() && (m16056a = m16056a(str, str2)) != null) {
            boolean z2 = false;
            if (z) {
                z2 = false;
                if (C2044k.m15615a("app_events_if_auto_log_subs", C2095j.m15356l(), false)) {
                    z2 = true;
                }
            }
            if (z2) {
                f5662b.m15855a(C1875h.m16033a(str2) ? "StartTrial" : "Subscribe", m16056a.f5663a, m16056a.f5664b, m16056a.f5665c);
            } else {
                f5662b.m15854a(m16056a.f5663a, m16056a.f5664b, m16056a.f5665c);
            }
        }
    }

    /* renamed from: b */
    public static boolean m16053b() {
        C2048l m15586a = C2050m.m15586a(C2095j.m15356l());
        return m15586a != null && C2095j.m15352p() && m15586a.m15598h();
    }
}
