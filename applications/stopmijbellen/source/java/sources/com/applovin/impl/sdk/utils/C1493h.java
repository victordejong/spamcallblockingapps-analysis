package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.preference.PreferenceManager;
import android.security.NetworkSecurityPolicy;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p055c.C1315c;
import com.applovin.impl.sdk.p055c.C1316d;
import com.applovin.impl.sdk.p055c.C1317e;
import com.google.android.gms.internal.ads.C1676a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.utils.h */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/h.class */
public class C1493h {

    /* renamed from: a */
    private static final int[] f5595a = {7, 4, 2, 1, 11};

    /* renamed from: b */
    private static final int[] f5596b = {5, 6, 10, 3, 9, 8, 14};

    /* renamed from: c */
    private static final int[] f5597c = {15, 12, 13};

    /* renamed from: d */
    private static final int[] f5598d = {20};

    /* renamed from: a */
    public static String m5061a(InputStream inputStream, C1408l c1408l) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[((Integer) c1408l.m5511a(C1314b.f4847cX)).intValue()];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return byteArrayOutputStream.toString("UTF-8");
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: a */
    public static String m5059a(String str, C1408l c1408l) {
        return m5058a((String) c1408l.m5511a(C1314b.f4739aU), str, c1408l);
    }

    /* renamed from: a */
    public static String m5058a(String str, String str2, C1408l c1408l) {
        if (str == null || str.length() < 4) {
            throw new IllegalArgumentException("Invalid domain specified");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (c1408l == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        return C1676a.m4789h(str, str2);
    }

    /* renamed from: a */
    public static JSONObject m5057a(JSONObject jSONObject) throws JSONException {
        return (JSONObject) jSONObject.getJSONArray("results").get(0);
    }

    /* renamed from: a */
    public static void m5064a(int i, C1408l c1408l) {
        if (i == 401) {
            StringBuilder m8752j = C0082b.m8752j("SDK key \"");
            m8752j.append(c1408l.m5444z());
            m8752j.append("\" is rejected by AppLovin. Please make sure the SDK key is correct.");
            C1479t.m5107i("AppLovinSdk", m8752j.toString());
        } else if (i == 418) {
            c1408l.m5533J().m5825a(C1314b.f4714W, Boolean.TRUE);
            c1408l.m5533J().m5827a();
        } else {
            if (i < 400 || i >= 500) {
                if (i != -1 || !((Boolean) c1408l.m5511a(C1314b.f4716Y)).booleanValue()) {
                    return;
                }
            } else if (!((Boolean) c1408l.m5511a(C1314b.f4716Y)).booleanValue()) {
                return;
            }
            c1408l.m5459k();
        }
    }

    /* renamed from: a */
    public static void m5056a(JSONObject jSONObject, boolean z, C1408l c1408l) {
        c1408l.m5490ae().m5582a(jSONObject, z);
    }

    /* renamed from: a */
    public static boolean m5065a() {
        return m5060a((String) null);
    }

    /* renamed from: a */
    private static boolean m5063a(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m5062a(Context context) {
        if (context.getSystemService("connectivity") != null) {
            NetworkInfo m5055b = m5055b(context);
            if (m5055b == null) {
                return false;
            }
            return m5055b.isConnected();
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m5060a(String str) {
        if (C1492g.m5070e()) {
            return (!C1492g.m5069f() || TextUtils.isEmpty(str)) ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() : NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
        }
        return true;
    }

    /* renamed from: b */
    private static NetworkInfo m5055b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
    }

    /* renamed from: b */
    public static String m5054b(String str, C1408l c1408l) {
        return m5058a((String) c1408l.m5511a(C1314b.f4740aV), str, c1408l);
    }

    /* renamed from: c */
    public static void m5053c(JSONObject jSONObject, C1408l c1408l) {
        String string = JsonUtils.getString(jSONObject, "persisted_data", null);
        if (StringUtils.isValidString(string)) {
            c1408l.m5508a((C1316d<C1316d<String>>) C1316d.f5010z, (C1316d<String>) string);
            c1408l.m5542A().m5114c("ConnectionUtils", "Updated persisted data");
        }
    }

    /* renamed from: d */
    public static void m5052d(JSONObject jSONObject, C1408l c1408l) {
        if (jSONObject != null) {
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            try {
                if (!jSONObject.has("settings")) {
                    return;
                }
                C1315c m5533J = c1408l.m5533J();
                if (jSONObject.isNull("settings")) {
                    return;
                }
                m5533J.m5822a(jSONObject.getJSONObject("settings"));
                m5533J.m5827a();
                return;
            } catch (JSONException e) {
                c1408l.m5542A().m5115b("ConnectionUtils", "Unable to parse settings out of API response", e);
                return;
            }
        }
        throw new IllegalArgumentException("No response specified");
    }

    /* renamed from: e */
    public static Map<String, String> m5051e(C1408l c1408l) {
        boolean z;
        HashMap hashMap = new HashMap();
        String str = (String) c1408l.m5511a(C1314b.f4717Z);
        if (!StringUtils.isValidString(str)) {
            if (!((Boolean) c1408l.m5511a(C1314b.f4963ep)).booleanValue()) {
                str = c1408l.m5444z();
                z = "api_key";
            }
            hashMap.putAll(Utils.stringifyObjectMap(c1408l.m5522U().m5394i()));
            return hashMap;
        }
        z = "device_token";
        hashMap.put(z, str);
        hashMap.putAll(Utils.stringifyObjectMap(c1408l.m5522U().m5394i()));
        return hashMap;
    }

    /* renamed from: e */
    public static void m5050e(JSONObject jSONObject, C1408l c1408l) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "filesystem_values", (JSONObject) null);
        if (jSONObject2 != null) {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(c1408l.m5532K()).edit();
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object object = JsonUtils.getObject(jSONObject2, next, null);
                if (object != null) {
                    C1317e.m5804a(next, object, (SharedPreferences) null, edit);
                }
            }
            edit.apply();
        }
    }

    /* renamed from: f */
    public static String m5049f(C1408l c1408l) {
        NetworkInfo m5055b = m5055b(c1408l.m5532K());
        String str = "unknown";
        if (m5055b != null) {
            int type = m5055b.getType();
            int subtype = m5055b.getSubtype();
            if (type == 1) {
                str = "wifi";
            } else {
                str = "unknown";
                if (type == 0) {
                    str = m5063a(subtype, f5595a) ? "2g" : m5063a(subtype, f5596b) ? "3g" : m5063a(subtype, f5597c) ? "4g" : m5063a(subtype, f5598d) ? "5g" : "mobile";
                }
            }
        }
        return str;
    }

    /* renamed from: f */
    public static void m5048f(JSONObject jSONObject, C1408l c1408l) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "variables", (JSONObject) null);
        if (jSONObject2 != null) {
            c1408l.m5445y().updateVariables(jSONObject2);
        }
    }

    /* renamed from: g */
    public static String m5047g(C1408l c1408l) {
        return m5058a((String) c1408l.m5511a(C1314b.f4737aS), ((Boolean) c1408l.m5511a(C1314b.f4907df)).booleanValue() ? "5.0/ad" : "4.0/ad", c1408l);
    }

    /* renamed from: h */
    public static String m5046h(C1408l c1408l) {
        return m5058a((String) c1408l.m5511a(C1314b.f4738aT), ((Boolean) c1408l.m5511a(C1314b.f4907df)).booleanValue() ? "5.0/ad" : "4.0/ad", c1408l);
    }

    /* renamed from: i */
    public static String m5045i(C1408l c1408l) {
        return m5058a((String) c1408l.m5511a(C1314b.f4737aS), "4.0/ad", c1408l);
    }

    /* renamed from: j */
    public static String m5044j(C1408l c1408l) {
        return m5058a((String) c1408l.m5511a(C1314b.f4738aT), "4.0/ad", c1408l);
    }

    /* renamed from: k */
    public static String m5043k(C1408l c1408l) {
        return m5058a((String) c1408l.m5511a(C1314b.f4743aY), "1.0/variable_config", c1408l);
    }

    /* renamed from: l */
    public static String m5042l(C1408l c1408l) {
        return m5058a((String) c1408l.m5511a(C1314b.f4744aZ), "1.0/variable_config", c1408l);
    }
}
