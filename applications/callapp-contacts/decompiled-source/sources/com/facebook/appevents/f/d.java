package com.facebook.appevents.f;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.facebook.appevents.d.b;
import com.facebook.appevents.h;
import com.facebook.appevents.m;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import com.facebook.internal.o;
import com.facebook.internal.p;
import com.facebook.internal.q;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19555a = "com.facebook.appevents.f.d";

    /* renamed from: b  reason: collision with root package name */
    private static final m f19556b = new m(g.i());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/f/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        BigDecimal f19557a;

        /* renamed from: b  reason: collision with root package name */
        Currency f19558b;

        /* renamed from: c  reason: collision with root package name */
        Bundle f19559c;

        a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
            this.f19557a = bigDecimal;
            this.f19558b = currency;
            this.f19559c = bundle;
        }
    }

    private static a a(String str, String str2, Map<String, String> map) {
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
            return new a(new BigDecimal(jSONObject2.getLong("price_amount_micros") / 1000000.0d), Currency.getInstance(jSONObject2.getString("price_currency_code")), bundle);
        } catch (JSONException e) {
            Log.e(f19555a, "Error parsing in-app subscription data.", e);
            return null;
        }
    }

    public static void a() {
        Context i = g.i();
        String m = g.m();
        boolean p = g.p();
        af.a((Object) i, "context");
        if (!p) {
            return;
        }
        if (i instanceof Application) {
            com.facebook.appevents.g.a((Application) i, m);
        } else {
            Log.w(f19555a, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context.");
        }
    }

    public static void a(String str, long j) {
        Context i = g.i();
        String m = g.m();
        af.a((Object) i, "context");
        p a2 = q.a(m, false);
        if (a2 != null && a2.f19961d && j > 0) {
            m mVar = new m(i);
            Bundle bundle = new Bundle(1);
            bundle.putCharSequence("fb_aa_time_spent_view_name", str);
            mVar.a("fb_aa_time_spent_on_view", j, bundle);
        }
    }

    public static void a(String str, String str2, boolean z) {
        a a2;
        if (b() && (a2 = a(str, str2, new HashMap())) != null) {
            boolean z2 = false;
            if (z) {
                z2 = false;
                if (o.a("app_events_if_auto_log_subs", g.m(), false)) {
                    z2 = true;
                }
            }
            if (z2) {
                String str3 = b.a(str2) ? "StartTrial" : "Subscribe";
                m mVar = f19556b;
                BigDecimal bigDecimal = a2.f19557a;
                Currency currency = a2.f19558b;
                Bundle bundle = a2.f19559c;
                if (g.p()) {
                    h hVar = mVar.f19658a;
                    if (!com.facebook.internal.b.b.a.a(hVar)) {
                        try {
                            if (bigDecimal == null || currency == null) {
                                String str4 = h.f19597a;
                                ae.a();
                                return;
                            }
                            Bundle bundle2 = bundle;
                            if (bundle == null) {
                                bundle2 = new Bundle();
                            }
                            bundle2.putString("fb_currency", currency.getCurrencyCode());
                            hVar.a(str3, Double.valueOf(bigDecimal.doubleValue()), bundle2, true, com.facebook.appevents.f.a.b());
                        } catch (Throwable th) {
                            com.facebook.internal.b.b.a.a(th, hVar);
                        }
                    }
                }
            } else {
                m mVar2 = f19556b;
                BigDecimal bigDecimal2 = a2.f19557a;
                Currency currency2 = a2.f19558b;
                Bundle bundle3 = a2.f19559c;
                if (g.p()) {
                    h hVar2 = mVar2.f19658a;
                    if (!com.facebook.internal.b.b.a.a(hVar2)) {
                        try {
                            hVar2.a(bigDecimal2, currency2, bundle3, true);
                        } catch (Throwable th2) {
                            com.facebook.internal.b.b.a.a(th2, hVar2);
                        }
                    }
                }
            }
        }
    }

    public static boolean b() {
        p a2 = q.a(g.m());
        return a2 != null && g.p() && a2.f;
    }
}
