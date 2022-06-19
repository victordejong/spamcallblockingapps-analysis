package com.facebook.applinks;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.GraphRequest;
import com.facebook.appevents.C1094v;
import com.facebook.internal.C1165q;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import p193e.p1538j.EnumC23246m0;
/* renamed from: com.facebook.applinks.b */
/* loaded from: classes2-dex2jar.jar:com/facebook/applinks/b.class */
public class C1105b {

    /* renamed from: e */
    public static final String f3039e = "com.facebook.applinks.b";

    /* renamed from: a */
    public Uri f3040a;

    /* renamed from: b */
    public JSONObject f3041b;

    /* renamed from: c */
    public Bundle f3042c;

    /* renamed from: d */
    public String f3043d;

    /* renamed from: com.facebook.applinks.b$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/applinks/b$a.class */
    public interface AbstractC1106a {
        /* renamed from: a */
        void mo13072a(C1105b c1105b);
    }

    /* renamed from: a */
    public static void m41755a(Context context, String str, AbstractC1106a abstractC1106a) {
        C1105b c1105b;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("event", "DEFERRED_APP_LINK");
            C1168q0.m41687O(jSONObject, C1165q.C1166a.m41703b(context), C1094v.m41768a(context), C23228f0.m7347h(context), context);
            C1168q0.m41686P(jSONObject, C23228f0.m7354a());
            jSONObject.put("application_package_name", context.getPackageName());
            C1105b c1105b2 = null;
            try {
                GraphRequest graphRequest = new GraphRequest(null, String.format("%s/activities", str), null, EnumC23246m0.POST, null, null, 32);
                graphRequest.f2550c = jSONObject;
                JSONObject jSONObject2 = graphRequest.m42017c().f64333c;
                c1105b = null;
                if (jSONObject2 != null) {
                    String optString = jSONObject2.optString("applink_args");
                    long optLong = jSONObject2.optLong("click_time", -1L);
                    String optString2 = jSONObject2.optString("applink_class");
                    String optString3 = jSONObject2.optString("applink_url");
                    c1105b = null;
                    if (!TextUtils.isEmpty(optString)) {
                        C1105b m41754b = m41754b(optString);
                        c1105b = m41754b;
                        if (m41754b != null) {
                            if (optLong != -1) {
                                c1105b2 = m41754b;
                                try {
                                    JSONObject jSONObject3 = m41754b.f3041b;
                                    if (jSONObject3 != null) {
                                        jSONObject3.put("com.facebook.platform.APPLINK_TAP_TIME_UTC", optLong);
                                    }
                                    Bundle bundle = m41754b.f3042c;
                                    if (bundle != null) {
                                        c1105b2 = m41754b;
                                        bundle.putString("com.facebook.platform.APPLINK_TAP_TIME_UTC", Long.toString(optLong));
                                    }
                                } catch (JSONException e) {
                                    C23228f0 c23228f0 = C23228f0.f64291a;
                                    boolean z = C23228f0.f64299i;
                                }
                            }
                            if (optString2 != null) {
                                c1105b2 = m41754b;
                                try {
                                    JSONObject jSONObject4 = m41754b.f3041b;
                                    if (jSONObject4 != null) {
                                        jSONObject4.put("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                    }
                                    Bundle bundle2 = m41754b.f3042c;
                                    if (bundle2 != null) {
                                        c1105b2 = m41754b;
                                        bundle2.putString("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                    }
                                } catch (JSONException e2) {
                                    C23228f0 c23228f02 = C23228f0.f64291a;
                                    boolean z2 = C23228f0.f64299i;
                                }
                            }
                            c1105b = m41754b;
                            if (optString3 != null) {
                                c1105b2 = m41754b;
                                try {
                                    JSONObject jSONObject5 = m41754b.f3041b;
                                    if (jSONObject5 != null) {
                                        jSONObject5.put("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                    }
                                    Bundle bundle3 = m41754b.f3042c;
                                    c1105b = m41754b;
                                    if (bundle3 != null) {
                                        c1105b2 = m41754b;
                                        bundle3.putString("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                        c1105b = m41754b;
                                    }
                                } catch (JSONException e3) {
                                    C23228f0 c23228f03 = C23228f0.f64291a;
                                    c1105b2 = m41754b;
                                    boolean z3 = C23228f0.f64299i;
                                    c1105b = m41754b;
                                }
                            }
                        }
                    }
                }
            } catch (Exception e4) {
                C23228f0 c23228f04 = C23228f0.f64291a;
                boolean z4 = C23228f0.f64299i;
                c1105b = c1105b2;
            }
            abstractC1106a.mo13072a(c1105b);
        } catch (JSONException e5) {
            throw new C23222c0("An error occurred while preparing deferred app link", e5);
        }
    }

    /* renamed from: b */
    public static C1105b m41754b(String str) {
        String queryParameter;
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("version");
            if (!jSONObject.getJSONObject("bridge_args").getString(AnalyticsConstants.METHOD).equals("applink") || !string.equals("2")) {
                return null;
            }
            C1105b c1105b = new C1105b();
            JSONObject jSONObject2 = jSONObject.getJSONObject("method_args");
            c1105b.f3041b = jSONObject2;
            if (jSONObject2.has("ref")) {
                c1105b.f3041b.getString("ref");
            } else if (c1105b.f3041b.has("referer_data")) {
                JSONObject jSONObject3 = c1105b.f3041b.getJSONObject("referer_data");
                if (jSONObject3.has("fb_ref")) {
                    jSONObject3.getString("fb_ref");
                }
            }
            if (c1105b.f3041b.has("target_url")) {
                Uri parse = Uri.parse(c1105b.f3041b.getString("target_url"));
                c1105b.f3040a = parse;
                if (!C1220a.m41623b(C1105b.class) && parse != null && (queryParameter = parse.getQueryParameter("al_applink_data")) != null) {
                    try {
                        new JSONObject(queryParameter);
                    } catch (JSONException e) {
                    }
                }
            }
            if (c1105b.f3041b.has("extras")) {
                JSONObject jSONObject4 = c1105b.f3041b.getJSONObject("extras");
                if (jSONObject4.has("deeplink_context")) {
                    JSONObject jSONObject5 = jSONObject4.getJSONObject("deeplink_context");
                    if (jSONObject5.has("promo_code")) {
                        c1105b.f3043d = jSONObject5.getString("promo_code");
                    }
                }
            }
            c1105b.f3042c = m41753c(c1105b.f3041b);
            return c1105b;
        } catch (C23222c0 e2) {
            C1168q0.m41695G(f3039e, "Unable to parse AppLink JSON", e2);
            return null;
        } catch (JSONException e3) {
            C1168q0.m41695G(f3039e, "Unable to parse AppLink JSON", e3);
            return null;
        }
    }

    /* renamed from: c */
    public static Bundle m41753c(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                bundle.putBundle(next, m41753c((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                if (jSONArray.length() == 0) {
                    bundle.putStringArray(next, new String[0]);
                } else {
                    Object obj2 = jSONArray.get(0);
                    if (obj2 instanceof JSONObject) {
                        Bundle[] bundleArr = new Bundle[jSONArray.length()];
                        for (int i = 0; i < jSONArray.length(); i++) {
                            bundleArr[i] = m41753c(jSONArray.getJSONObject(i));
                        }
                        bundle.putParcelableArray(next, bundleArr);
                    } else if (obj2 instanceof JSONArray) {
                        throw new C23222c0("Nested arrays are not supported.");
                    } else {
                        String[] strArr = new String[jSONArray.length()];
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            strArr[i2] = jSONArray.get(i2).toString();
                        }
                        bundle.putStringArray(next, strArr);
                    }
                }
            } else {
                bundle.putString(next, obj.toString());
            }
        }
        return bundle;
    }
}
