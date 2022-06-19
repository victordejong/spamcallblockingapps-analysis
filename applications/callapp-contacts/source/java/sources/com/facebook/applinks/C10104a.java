package com.facebook.applinks;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.appevents.C10046g;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.facebook.internal.C10234b;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.applinks.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/applinks/a.class */
public class C10104a {

    /* renamed from: b */
    private static final String f33462b = "com.facebook.applinks.a";

    /* renamed from: a */
    public Uri f33463a;

    /* renamed from: c */
    private String f33464c;

    /* renamed from: d */
    private JSONObject f33465d;

    /* renamed from: e */
    private Bundle f33466e;

    /* renamed from: f */
    private String f33467f;

    /* renamed from: g */
    private JSONObject f33468g;

    /* renamed from: com.facebook.applinks.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/applinks/a$a.class */
    public interface AbstractC10106a {
        /* renamed from: a */
        void mo23389a(C10104a c10104a);
    }

    private C10104a() {
    }

    /* renamed from: a */
    private static Bundle m23390a(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                bundle.putBundle(next, m23390a((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                if (jSONArray.length() == 0) {
                    bundle.putStringArray(next, new String[0]);
                } else {
                    Object obj2 = jSONArray.get(0);
                    if (obj2 instanceof JSONObject) {
                        Bundle[] bundleArr = new Bundle[jSONArray.length()];
                        for (int i = 0; i < jSONArray.length(); i++) {
                            bundleArr[i] = m23390a(jSONArray.getJSONObject(i));
                        }
                        bundle.putParcelableArray(next, bundleArr);
                    } else if (obj2 instanceof JSONArray) {
                        throw new FacebookException("Nested arrays are not supported.");
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

    /* renamed from: a */
    private static C10104a m23391a(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("version");
            if (!jSONObject.getJSONObject("bridge_args").getString("method").equals("applink") || !string.equals("2")) {
                return null;
            }
            C10104a c10104a = new C10104a();
            JSONObject jSONObject2 = jSONObject.getJSONObject("method_args");
            c10104a.f33465d = jSONObject2;
            if (jSONObject2.has("ref")) {
                c10104a.f33464c = c10104a.f33465d.getString("ref");
            } else if (c10104a.f33465d.has("referer_data")) {
                JSONObject jSONObject3 = c10104a.f33465d.getJSONObject("referer_data");
                if (jSONObject3.has("fb_ref")) {
                    c10104a.f33464c = jSONObject3.getString("fb_ref");
                }
            }
            if (c10104a.f33465d.has("target_url")) {
                Uri parse = Uri.parse(c10104a.f33465d.getString("target_url"));
                c10104a.f33463a = parse;
                c10104a.f33468g = m23392a(parse);
            }
            if (c10104a.f33465d.has("extras")) {
                JSONObject jSONObject4 = c10104a.f33465d.getJSONObject("extras");
                if (jSONObject4.has("deeplink_context")) {
                    JSONObject jSONObject5 = jSONObject4.getJSONObject("deeplink_context");
                    if (jSONObject5.has("promo_code")) {
                        c10104a.f33467f = jSONObject5.getString("promo_code");
                    }
                }
            }
            c10104a.f33466e = m23390a(c10104a.f33465d);
            return c10104a;
        } catch (FacebookException e) {
            C10213ae.m23192e(f33462b);
            return null;
        } catch (JSONException e2) {
            C10213ae.m23192e(f33462b);
            return null;
        }
    }

    /* renamed from: a */
    private static JSONObject m23392a(Uri uri) {
        if (!C10249a.m23108a(C10104a.class) && uri != null) {
            try {
                String queryParameter = uri.getQueryParameter("al_applink_data");
                if (queryParameter == null) {
                    return null;
                }
                try {
                    return new JSONObject(queryParameter);
                } catch (JSONException e) {
                    return null;
                }
            } catch (Throwable th) {
                C10249a.m23106a(th, C10104a.class);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m23394a(Context context, final AbstractC10106a abstractC10106a) {
        C10218af.m23179a((Object) context, "context");
        C10218af.m23179a(abstractC10106a, "completionHandler");
        final String m23248a = C10213ae.m23248a(context);
        C10218af.m23179a((Object) m23248a, "applicationId");
        final Context applicationContext = context.getApplicationContext();
        C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.applinks.a.1
            @Override // java.lang.Runnable
            public final void run() {
                if (C10249a.m23108a(this)) {
                    return;
                }
                try {
                    C10104a.m23393a(applicationContext, m23248a, abstractC10106a);
                } catch (Throwable th) {
                    C10249a.m23106a(th, this);
                }
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m23393a(Context context, String str, AbstractC10106a abstractC10106a) {
        C10104a c10104a;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("event", "DEFERRED_APP_LINK");
            C10213ae.m23217a(jSONObject, C10234b.m23133b(context), C10046g.m23532b(context), C10181g.m23300b(context));
            C10213ae.m23218a(jSONObject, C10181g.m23290i());
            jSONObject.put("application_package_name", context.getPackageName());
            C10104a c10104a2 = null;
            try {
                JSONObject jSONObject2 = GraphRequest.m23796a(GraphRequest.m23799a((AccessToken) null, String.format("%s/activities", str), jSONObject, (GraphRequest.AbstractC9933b) null)).f33959a;
                c10104a = null;
                if (jSONObject2 != null) {
                    String optString = jSONObject2.optString("applink_args");
                    long optLong = jSONObject2.optLong("click_time", -1L);
                    String optString2 = jSONObject2.optString("applink_class");
                    String optString3 = jSONObject2.optString("applink_url");
                    c10104a = null;
                    if (!TextUtils.isEmpty(optString)) {
                        C10104a m23391a = m23391a(optString);
                        c10104a = m23391a;
                        if (m23391a != null) {
                            if (optLong != -1) {
                                c10104a2 = m23391a;
                                try {
                                    JSONObject jSONObject3 = m23391a.f33465d;
                                    if (jSONObject3 != null) {
                                        jSONObject3.put("com.facebook.platform.APPLINK_TAP_TIME_UTC", optLong);
                                    }
                                    Bundle bundle = m23391a.f33466e;
                                    if (bundle != null) {
                                        c10104a2 = m23391a;
                                        bundle.putString("com.facebook.platform.APPLINK_TAP_TIME_UTC", Long.toString(optLong));
                                    }
                                } catch (JSONException e) {
                                    C10213ae.m23250a();
                                }
                            }
                            if (optString2 != null) {
                                c10104a2 = m23391a;
                                try {
                                    JSONObject jSONObject4 = m23391a.f33465d;
                                    if (jSONObject4 != null) {
                                        jSONObject4.put("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                    }
                                    Bundle bundle2 = m23391a.f33466e;
                                    if (bundle2 != null) {
                                        c10104a2 = m23391a;
                                        bundle2.putString("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                    }
                                } catch (JSONException e2) {
                                    C10213ae.m23250a();
                                }
                            }
                            c10104a = m23391a;
                            if (optString3 != null) {
                                c10104a2 = m23391a;
                                try {
                                    JSONObject jSONObject5 = m23391a.f33465d;
                                    if (jSONObject5 != null) {
                                        jSONObject5.put("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                    }
                                    Bundle bundle3 = m23391a.f33466e;
                                    c10104a = m23391a;
                                    if (bundle3 != null) {
                                        c10104a2 = m23391a;
                                        bundle3.putString("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                        c10104a = m23391a;
                                    }
                                } catch (JSONException e3) {
                                    C10213ae.m23250a();
                                    c10104a = m23391a;
                                }
                            }
                        }
                    }
                }
            } catch (Exception e4) {
                C10213ae.m23250a();
                c10104a = c10104a2;
            }
            abstractC10106a.mo23389a(c10104a);
        } catch (JSONException e5) {
            throw new FacebookException("An error occurred while preparing deferred app link", e5);
        }
    }
}
