package p131c.p135b.p136a.p148e.p153y;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.android.volley.Request;
import com.applovin.sdk.AppLovinSdk;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.C2246b;
/* renamed from: c.b.a.e.y.h */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/h.class */
public class C2389h {

    /* renamed from: a */
    public static final int[] f9262a = {7, 4, 2, 1, 11};

    /* renamed from: b */
    public static final int[] f9263b = {5, 6, 10, 3, 9, 8, 14};

    /* renamed from: c */
    public static final int[] f9264c = {15, 12, 13};

    /* renamed from: a */
    public static String m29962a(InputStream inputStream, C2341l lVar) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[((Integer) lVar.m30291a(C2251d.C2256e.f8780z2)).intValue()];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return byteArrayOutputStream.toString(Request.DEFAULT_PARAMS_ENCODING);
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: a */
    public static String m29960a(String str, C2341l lVar) {
        return m29959a((String) lVar.m30291a(C2251d.C2256e.f8640b0), str, lVar);
    }

    /* renamed from: a */
    public static String m29959a(String str, String str2, C2341l lVar) {
        if (str == null || str.length() < 4) {
            throw new IllegalArgumentException("Invalid domain specified");
        } else if (str2 == null) {
            throw new IllegalArgumentException("No endpoint specified");
        } else if (lVar != null) {
            return str + str2;
        } else {
            throw new IllegalArgumentException("No sdk specified");
        }
    }

    /* renamed from: a */
    public static Map<String, String> m29963a(C2341l lVar) {
        String str;
        HashMap hashMap = new HashMap();
        String str2 = (String) lVar.m30291a(C2251d.C2256e.f8681i);
        if (C2422o.m29851b(str2)) {
            str = "device_token";
        } else {
            if (!((Boolean) lVar.m30291a(C2251d.C2256e.f8586P3)).booleanValue()) {
                str2 = lVar.m30269b0();
                str = "api_key";
            }
            hashMap.put("sc", C2422o.m29847e((String) lVar.m30291a(C2251d.C2256e.f8699l)));
            hashMap.put("sc2", C2422o.m29847e((String) lVar.m30291a(C2251d.C2256e.f8705m)));
            hashMap.put("sc3", C2422o.m29847e((String) lVar.m30291a(C2251d.C2256e.f8711n)));
            hashMap.put("server_installed_at", C2422o.m29847e((String) lVar.m30291a(C2251d.C2256e.f8717o)));
            AbstractC2426r.m29804a("persisted_data", C2422o.m29847e((String) lVar.m30290a(C2251d.C2258g.f8791A)), hashMap);
            return hashMap;
        }
        hashMap.put(str, str2);
        hashMap.put("sc", C2422o.m29847e((String) lVar.m30291a(C2251d.C2256e.f8699l)));
        hashMap.put("sc2", C2422o.m29847e((String) lVar.m30291a(C2251d.C2256e.f8705m)));
        hashMap.put("sc3", C2422o.m29847e((String) lVar.m30291a(C2251d.C2256e.f8711n)));
        hashMap.put("server_installed_at", C2422o.m29847e((String) lVar.m30291a(C2251d.C2256e.f8717o)));
        AbstractC2426r.m29804a("persisted_data", C2422o.m29847e((String) lVar.m30290a(C2251d.C2258g.f8791A)), hashMap);
        return hashMap;
    }

    /* renamed from: a */
    public static JSONObject m29958a(JSONObject jSONObject) throws JSONException {
        return (JSONObject) jSONObject.getJSONArray("results").get(0);
    }

    /* renamed from: a */
    public static void m29966a(int i, C2341l lVar) {
        StringBuilder sb;
        String str;
        C2251d.C2257f c = lVar.m30268c();
        if (i == 401) {
            c.m30591a(C2251d.C2256e.f8675h, "");
            c.m30591a(C2251d.C2256e.f8681i, "");
            c.m30587b();
            sb = new StringBuilder();
            sb.append("SDK key \"");
            sb.append(lVar.m30269b0());
            str = "\" is rejected by AppLovin. Please make sure the SDK key is correct.";
        } else if (i == 418) {
            c.m30591a((C2251d.C2256e<?>) C2251d.C2256e.f8669g, (Object) true);
            c.m30587b();
            sb = new StringBuilder();
            sb.append("SDK key \"");
            sb.append(lVar.m30269b0());
            str = "\" has been blocked. Please contact AppLovin support at support@applovin.com.";
        } else if ((i >= 400 && i < 500) || i == -1) {
            lVar.m30307O();
            return;
        } else {
            return;
        }
        sb.append(str);
        C2374t.m30034j(AppLovinSdk.TAG, sb.toString());
    }

    /* renamed from: a */
    public static void m29957a(JSONObject jSONObject, C2341l lVar) {
        String b = C2390i.m29913b(jSONObject, "persisted_data", (String) null, lVar);
        if (C2422o.m29851b(b)) {
            lVar.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8791A, (C2251d.C2258g<String>) b);
            lVar.m30262d0().m30042c("ConnectionUtils", "Updated persisted data");
        }
    }

    /* renamed from: a */
    public static void m29956a(JSONObject jSONObject, boolean z, C2341l lVar) {
        lVar.m30320B().m30354a(jSONObject, z);
    }

    /* renamed from: a */
    public static boolean m29967a() {
        return m29961a((String) null);
    }

    /* renamed from: a */
    public static boolean m29965a(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m29964a(Context context) {
        if (context.getSystemService("connectivity") == null) {
            return true;
        }
        NetworkInfo b = m29955b(context);
        if (b != null) {
            return b.isConnected();
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m29961a(String str) {
        if (C2388g.m29970e()) {
            return (!C2388g.m29969f() || TextUtils.isEmpty(str)) ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() : NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
        }
        return true;
    }

    /* renamed from: b */
    public static NetworkInfo m29955b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
    }

    /* renamed from: b */
    public static String m29954b(C2341l lVar) {
        NetworkInfo b = m29955b(lVar.m30264d());
        String str = "unknown";
        if (b != null) {
            int type = b.getType();
            int subtype = b.getSubtype();
            if (type == 1) {
                str = "wifi";
            } else {
                str = "unknown";
                if (type == 0) {
                    str = m29965a(subtype, f9262a) ? "2g" : m29965a(subtype, f9263b) ? "3g" : m29965a(subtype, f9264c) ? "4g" : "mobile";
                }
            }
        }
        return str;
    }

    /* renamed from: b */
    public static String m29953b(String str, C2341l lVar) {
        return m29959a((String) lVar.m30291a(C2251d.C2256e.f8646c0), str, lVar);
    }

    /* renamed from: b */
    public static void m29952b(JSONObject jSONObject, C2341l lVar) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        } else if (lVar != null) {
            try {
                if (jSONObject.has("settings")) {
                    C2251d.C2257f c = lVar.m30268c();
                    if (!jSONObject.isNull("settings")) {
                        c.m30588a(jSONObject.getJSONObject("settings"));
                        c.m30587b();
                    }
                }
            } catch (JSONException e) {
                lVar.m30262d0().m30043b("ConnectionUtils", "Unable to parse settings out of API response", e);
            }
        } else {
            throw new IllegalArgumentException("No sdk specified");
        }
    }

    /* renamed from: c */
    public static String m29951c(C2341l lVar) {
        return m29959a((String) lVar.m30291a(C2251d.C2256e.f8630Z), "4.0/ad", lVar);
    }

    /* renamed from: c */
    public static void m29950c(JSONObject jSONObject, C2341l lVar) {
        JSONArray b = C2390i.m29912b(jSONObject, "zones", (JSONArray) null, lVar);
        if (b != null && b.length() > 0) {
            lVar.m30238u().m30618a(b);
        }
    }

    /* renamed from: d */
    public static String m29949d(C2341l lVar) {
        return m29959a((String) lVar.m30291a(C2251d.C2256e.f8635a0), "4.0/ad", lVar);
    }

    /* renamed from: d */
    public static void m29948d(JSONObject jSONObject, C2341l lVar) {
        JSONArray b = C2390i.m29912b(jSONObject, "zones", (JSONArray) null, lVar);
        if (b != null) {
            Iterator<C2246b> it = lVar.m30238u().m30616b(b).iterator();
            while (it.hasNext()) {
                C2246b next = it.next();
                if (next.m30634e()) {
                    lVar.m30298X().preloadAds(next);
                } else {
                    lVar.m30299W().preloadAds(next);
                }
            }
            lVar.m30241r().m30025a(lVar.m30238u().m30623a());
            lVar.m30240s().m30025a(lVar.m30238u().m30623a());
        }
    }

    /* renamed from: e */
    public static String m29947e(C2341l lVar) {
        return m29959a((String) lVar.m30291a(C2251d.C2256e.f8664f0), "1.0/variable_config", lVar);
    }

    /* renamed from: e */
    public static void m29946e(JSONObject jSONObject, C2341l lVar) {
        JSONObject b = C2390i.m29911b(jSONObject, "variables", (JSONObject) null, lVar);
        if (b != null) {
            lVar.m30277a0().updateVariables(b);
        }
    }

    /* renamed from: f */
    public static String m29945f(C2341l lVar) {
        return m29959a((String) lVar.m30291a(C2251d.C2256e.f8670g0), "1.0/variable_config", lVar);
    }
}
