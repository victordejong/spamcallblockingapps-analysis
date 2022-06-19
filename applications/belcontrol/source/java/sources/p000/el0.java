package p000;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.GraphRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import km0;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: el0 */
/* loaded from: classes-dex2jar.jar:el0.class */
public final class el0 {

    /* renamed from: b */
    public static SharedPreferences f6367b;

    /* renamed from: a */
    public static final ConcurrentMap<String, dl0> f6366a = new ConcurrentHashMap();

    /* renamed from: c */
    public static final String[] f6368c = {"version_id", "asset_uri", "use_case", "thresholds", "rules_uri"};

    /* renamed from: el0$a */
    /* loaded from: classes-dex2jar.jar:el0$a.class */
    public static final class RunnableC1370a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                JSONObject m2119j = el0.m2119j();
                if (m2119j != null) {
                    el0.f6367b.edit().putString("models", m2119j.toString()).apply();
                } else {
                    m2119j = new JSONObject(el0.f6367b.getString("models", ""));
                }
                el0.m2123f(m2119j);
                el0.m2120i();
                el0.m2121h();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: f */
    public static void m2123f(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                dl0 m2115n = m2115n(jSONObject.getJSONObject(next));
                if (m2115n != null) {
                    f6366a.put(next, m2115n);
                }
            } catch (JSONException e) {
                return;
            }
        }
    }

    /* renamed from: g */
    public static void m2122g() {
        m2117l();
    }

    /* renamed from: h */
    public static void m2121h() {
        if (!f6366a.containsKey("DATA_DETECTION_ADDRESS")) {
            return;
        }
        km0.a(km0.d.l, new c());
    }

    /* renamed from: i */
    public static void m2120i() {
        if (!f6366a.containsKey("SUGGEST_EVENT")) {
            return;
        }
        Locale C = fn0.C();
        if (C != null && !C.getLanguage().contains("en")) {
            return;
        }
        km0.a(km0.d.k, new b());
    }

    /* renamed from: j */
    public static JSONObject m2119j() {
        ArrayList arrayList = new ArrayList(Arrays.asList(f6368c));
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", arrayList));
        GraphRequest m5191J = GraphRequest.m5191J(null, String.format("%s/model_asset", ui0.f()), null);
        m5191J.m5173a0(true);
        m5191J.m5175Z(bundle);
        JSONObject m7095h = m5191J.m5162g().m7095h();
        if (m7095h == null) {
            return null;
        }
        return m2113p(m7095h);
    }

    /* renamed from: k */
    public static File m2118k(String str) {
        ConcurrentMap<String, dl0> concurrentMap = f6366a;
        if (!concurrentMap.containsKey(str)) {
            return null;
        }
        return concurrentMap.get(str).m2502f();
    }

    /* renamed from: l */
    public static void m2117l() {
        f6367b = ui0.e().getSharedPreferences("com.facebook.internal.MODEL_STORE", 0);
        m2116m();
    }

    /* renamed from: m */
    public static void m2116m() {
        fn0.o0(new RunnableC1370a());
    }

    /* renamed from: n */
    public static dl0 m2115n(JSONObject jSONObject) {
        try {
            return new dl0(jSONObject.getString("use_case"), Integer.parseInt(jSONObject.getString("version_id")), jSONObject.getString("asset_uri"), jSONObject.optString("rules_uri", null), m2114o(jSONObject.getJSONArray("thresholds")));
        } catch (JSONException e) {
            return null;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0024 -> B:6:0x001c). Please submit an issue!!! */
    /* renamed from: o */
    public static float[] m2114o(JSONArray jSONArray) {
        float[] fArr = new float[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                fArr[i] = Float.parseFloat(jSONArray.getString(i));
            } catch (JSONException e) {
            }
        }
        return fArr;
    }

    /* renamed from: p */
    public static JSONObject m2113p(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("data");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("version_id", jSONObject3.getString("version_id"));
                jSONObject4.put("use_case", jSONObject3.getString("use_case"));
                jSONObject4.put("thresholds", jSONObject3.getJSONArray("thresholds"));
                jSONObject4.put("asset_uri", jSONObject3.getString("asset_uri"));
                if (jSONObject3.has("rules_uri")) {
                    jSONObject4.put("rules_uri", jSONObject3.getString("rules_uri"));
                }
                jSONObject2.put(jSONObject3.getString("use_case"), jSONObject4);
            }
            return jSONObject2;
        } catch (JSONException e) {
            return new JSONObject();
        }
    }

    /* renamed from: q */
    public static String m2112q(String str, float[] fArr, String str2) {
        ConcurrentMap<String, dl0> concurrentMap = f6366a;
        if (!concurrentMap.containsKey(str)) {
            return null;
        }
        return concurrentMap.get(str).m2499i(fArr, str2);
    }
}
