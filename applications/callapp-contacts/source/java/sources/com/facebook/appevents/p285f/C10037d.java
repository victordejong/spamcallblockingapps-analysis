package com.facebook.appevents.p285f;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.facebook.C10181g;
import com.facebook.appevents.C10046g;
import com.facebook.appevents.C10063h;
import com.facebook.appevents.C10097m;
import com.facebook.appevents.p283d.C10014b;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.facebook.internal.C10298o;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.p299b.p301b.C10249a;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.f.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/d.class */
public class C10037d {

    /* renamed from: a */
    private static final String f33319a = "com.facebook.appevents.f.d";

    /* renamed from: b */
    private static final C10097m f33320b = new C10097m(C10181g.m23290i());

    /* renamed from: com.facebook.appevents.f.d$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/d$a.class */
    public static final class C10038a {

        /* renamed from: a */
        BigDecimal f33321a;

        /* renamed from: b */
        Currency f33322b;

        /* renamed from: c */
        Bundle f33323c;

        C10038a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
            this.f33321a = bigDecimal;
            this.f33322b = currency;
            this.f33323c = bundle;
        }
    }

    /* renamed from: a */
    private static C10038a m23551a(String str, String str2, Map<String, String> map) {
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
            return new C10038a(new BigDecimal(jSONObject2.getLong("price_amount_micros") / 1000000.0d), Currency.getInstance(jSONObject2.getString("price_currency_code")), bundle);
        } catch (JSONException e) {
            Log.e(f33319a, "Error parsing in-app subscription data.", e);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23553a() {
        Context m23290i = C10181g.m23290i();
        String m23286m = C10181g.m23286m();
        boolean m23283p = C10181g.m23283p();
        C10218af.m23179a((Object) m23290i, "context");
        if (m23283p) {
            if (m23290i instanceof Application) {
                C10046g.m23538a((Application) m23290i, m23286m);
            } else {
                Log.w(f33319a, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context.");
            }
        }
    }

    /* renamed from: a */
    public static void m23552a(String str, long j) {
        Context m23290i = C10181g.m23290i();
        String m23286m = C10181g.m23286m();
        C10218af.m23179a((Object) m23290i, "context");
        C10302p m23026a = C10306q.m23026a(m23286m, false);
        if (m23026a == null || !m23026a.f33847d || j <= 0) {
            return;
        }
        C10097m c10097m = new C10097m(m23290i);
        Bundle bundle = new Bundle(1);
        bundle.putCharSequence("fb_aa_time_spent_view_name", str);
        c10097m.m23415a("fb_aa_time_spent_on_view", j, bundle);
    }

    /* renamed from: a */
    public static void m23550a(String str, String str2, boolean z) {
        C10038a m23551a;
        if (m23549b() && (m23551a = m23551a(str, str2, new HashMap())) != null) {
            boolean z2 = false;
            if (z) {
                z2 = false;
                if (C10298o.m23039a("app_events_if_auto_log_subs", C10181g.m23286m(), false)) {
                    z2 = true;
                }
            }
            if (!z2) {
                C10097m c10097m = f33320b;
                BigDecimal bigDecimal = m23551a.f33321a;
                Currency currency = m23551a.f33322b;
                Bundle bundle = m23551a.f33323c;
                if (!C10181g.m23283p()) {
                    return;
                }
                C10063h c10063h = c10097m.f33445a;
                if (C10249a.m23108a(c10063h)) {
                    return;
                }
                try {
                    c10063h.m23480a(bigDecimal, currency, bundle, true);
                    return;
                } catch (Throwable th) {
                    C10249a.m23106a(th, c10063h);
                    return;
                }
            }
            String str3 = C10014b.m23616a(str2) ? "StartTrial" : "Subscribe";
            C10097m c10097m2 = f33320b;
            BigDecimal bigDecimal2 = m23551a.f33321a;
            Currency currency2 = m23551a.f33322b;
            Bundle bundle2 = m23551a.f33323c;
            if (!C10181g.m23283p()) {
                return;
            }
            C10063h c10063h2 = c10097m2.f33445a;
            if (C10249a.m23108a(c10063h2)) {
                return;
            }
            try {
                if (bigDecimal2 == null || currency2 == null) {
                    String str4 = C10063h.f33375a;
                    C10213ae.m23250a();
                    return;
                }
                Bundle bundle3 = bundle2;
                if (bundle2 == null) {
                    bundle3 = new Bundle();
                }
                bundle3.putString("fb_currency", currency2.getCurrencyCode());
                c10063h2.m23481a(str3, Double.valueOf(bigDecimal2.doubleValue()), bundle3, true, C10026a.m23577b());
            } catch (Throwable th2) {
                C10249a.m23106a(th2, c10063h2);
            }
        }
    }

    /* renamed from: b */
    public static boolean m23549b() {
        C10302p m23028a = C10306q.m23028a(C10181g.m23286m());
        return m23028a != null && C10181g.m23283p() && m23028a.f33849f;
    }
}
