package com.facebook.applinks;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import com.facebook.internal.b;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/applinks/a.class */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f19671b = "com.facebook.applinks.a";

    /* renamed from: a  reason: collision with root package name */
    public Uri f19672a;

    /* renamed from: c  reason: collision with root package name */
    private String f19673c;

    /* renamed from: d  reason: collision with root package name */
    private JSONObject f19674d;
    private Bundle e;
    private String f;
    private JSONObject g;

    /* renamed from: com.facebook.applinks.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/applinks/a$a.class */
    public interface AbstractC0392a {
        void a(a aVar);
    }

    private a() {
    }

    private static Bundle a(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                bundle.putBundle(next, a((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                if (jSONArray.length() == 0) {
                    bundle.putStringArray(next, new String[0]);
                } else {
                    Object obj2 = jSONArray.get(0);
                    if (obj2 instanceof JSONObject) {
                        Bundle[] bundleArr = new Bundle[jSONArray.length()];
                        for (int i = 0; i < jSONArray.length(); i++) {
                            bundleArr[i] = a(jSONArray.getJSONObject(i));
                        }
                        bundle.putParcelableArray(next, bundleArr);
                    } else if (!(obj2 instanceof JSONArray)) {
                        String[] strArr = new String[jSONArray.length()];
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            strArr[i2] = jSONArray.get(i2).toString();
                        }
                        bundle.putStringArray(next, strArr);
                    } else {
                        throw new FacebookException("Nested arrays are not supported.");
                    }
                }
            } else {
                bundle.putString(next, obj.toString());
            }
        }
        return bundle;
    }

    private static a a(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("version");
            if (!jSONObject.getJSONObject("bridge_args").getString("method").equals("applink") || !string.equals("2")) {
                return null;
            }
            a aVar = new a();
            JSONObject jSONObject2 = jSONObject.getJSONObject("method_args");
            aVar.f19674d = jSONObject2;
            if (jSONObject2.has("ref")) {
                aVar.f19673c = aVar.f19674d.getString("ref");
            } else if (aVar.f19674d.has("referer_data")) {
                JSONObject jSONObject3 = aVar.f19674d.getJSONObject("referer_data");
                if (jSONObject3.has("fb_ref")) {
                    aVar.f19673c = jSONObject3.getString("fb_ref");
                }
            }
            if (aVar.f19674d.has("target_url")) {
                Uri parse = Uri.parse(aVar.f19674d.getString("target_url"));
                aVar.f19672a = parse;
                aVar.g = a(parse);
            }
            if (aVar.f19674d.has("extras")) {
                JSONObject jSONObject4 = aVar.f19674d.getJSONObject("extras");
                if (jSONObject4.has("deeplink_context")) {
                    JSONObject jSONObject5 = jSONObject4.getJSONObject("deeplink_context");
                    if (jSONObject5.has("promo_code")) {
                        aVar.f = jSONObject5.getString("promo_code");
                    }
                }
            }
            aVar.e = a(aVar.f19674d);
            return aVar;
        } catch (FacebookException e) {
            ae.e(f19671b);
            return null;
        } catch (JSONException e2) {
            ae.e(f19671b);
            return null;
        }
    }

    private static JSONObject a(Uri uri) {
        if (com.facebook.internal.b.b.a.a(a.class) || uri == null) {
            return null;
        }
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
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    public static void a(Context context, final AbstractC0392a aVar) {
        af.a((Object) context, "context");
        af.a(aVar, "completionHandler");
        final String a2 = ae.a(context);
        af.a((Object) a2, "applicationId");
        final Context applicationContext = context.getApplicationContext();
        g.f().execute(new Runnable() { // from class: com.facebook.applinks.a.1
            @Override // java.lang.Runnable
            public final void run() {
                if (!com.facebook.internal.b.b.a.a(this)) {
                    try {
                        a.a(applicationContext, a2, aVar);
                    } catch (Throwable th) {
                        com.facebook.internal.b.b.a.a(th, this);
                    }
                }
            }
        });
    }

    static /* synthetic */ void a(Context context, String str, AbstractC0392a aVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("event", "DEFERRED_APP_LINK");
            ae.a(jSONObject, b.b(context), com.facebook.appevents.g.b(context), g.b(context));
            ae.a(jSONObject, g.i());
            jSONObject.put("application_package_name", context.getPackageName());
            a aVar2 = null;
            try {
                JSONObject jSONObject2 = GraphRequest.a(GraphRequest.a((AccessToken) null, String.format("%s/activities", str), jSONObject, (GraphRequest.b) null)).f20036a;
                aVar2 = null;
                if (jSONObject2 != null) {
                    String optString = jSONObject2.optString("applink_args");
                    long optLong = jSONObject2.optLong("click_time", -1L);
                    String optString2 = jSONObject2.optString("applink_class");
                    String optString3 = jSONObject2.optString("applink_url");
                    aVar2 = null;
                    if (!TextUtils.isEmpty(optString)) {
                        a a2 = a(optString);
                        aVar2 = a2;
                        if (a2 != null) {
                            if (optLong != -1) {
                                aVar2 = a2;
                                try {
                                    JSONObject jSONObject3 = a2.f19674d;
                                    if (jSONObject3 != null) {
                                        jSONObject3.put("com.facebook.platform.APPLINK_TAP_TIME_UTC", optLong);
                                    }
                                    Bundle bundle = a2.e;
                                    if (bundle != null) {
                                        aVar2 = a2;
                                        bundle.putString("com.facebook.platform.APPLINK_TAP_TIME_UTC", Long.toString(optLong));
                                    }
                                } catch (JSONException e) {
                                    ae.a();
                                }
                            }
                            if (optString2 != null) {
                                aVar2 = a2;
                                try {
                                    JSONObject jSONObject4 = a2.f19674d;
                                    if (jSONObject4 != null) {
                                        jSONObject4.put("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                    }
                                    Bundle bundle2 = a2.e;
                                    if (bundle2 != null) {
                                        aVar2 = a2;
                                        bundle2.putString("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                    }
                                } catch (JSONException e2) {
                                    ae.a();
                                }
                            }
                            aVar2 = a2;
                            if (optString3 != null) {
                                aVar2 = a2;
                                try {
                                    JSONObject jSONObject5 = a2.f19674d;
                                    if (jSONObject5 != null) {
                                        jSONObject5.put("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                    }
                                    Bundle bundle3 = a2.e;
                                    aVar2 = a2;
                                    if (bundle3 != null) {
                                        aVar2 = a2;
                                        bundle3.putString("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                        aVar2 = a2;
                                    }
                                } catch (JSONException e3) {
                                    ae.a();
                                    aVar2 = a2;
                                }
                            }
                        }
                    }
                }
            } catch (Exception e4) {
                ae.a();
            }
            aVar.a(aVar2);
        } catch (JSONException e5) {
            throw new FacebookException("An error occurred while preparing deferred app link", e5);
        }
    }
}
