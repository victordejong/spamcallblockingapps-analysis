package com.facebook.p094a.p100e;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.internal.C2039j;
import com.facebook.internal.C2079x;
import com.facebook.p094a.p101f.C1901a;
import com.facebook.p094a.p102g.C1909d;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.e.b */
/* loaded from: classes-dex2jar.jar:com/facebook/a/e/b.class */
public final class C1891b {

    /* renamed from: b */
    private static SharedPreferences f5737b;

    /* renamed from: a */
    private static final ConcurrentMap<String, C1886a> f5736a = new ConcurrentHashMap();

    /* renamed from: c */
    private static final String[] f5738c = {"version_id", "asset_uri", "use_case", "thresholds", "rules_uri"};

    /* renamed from: a */
    public static File m15975a(String str) {
        return !f5736a.containsKey(str) ? null : f5736a.get(str).m15990a();
    }

    /* renamed from: a */
    public static String m15974a(String str, float[] fArr, String str2) {
        return !f5736a.containsKey(str) ? null : f5736a.get(str).m15985a(fArr, str2);
    }

    /* renamed from: a */
    public static void m15976a() {
        m15971b();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0024 -> B:6:0x001c). Please submit an issue!!! */
    /* renamed from: a */
    private static float[] m15973a(JSONArray jSONArray) {
        float[] fArr = new float[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                fArr[i] = Float.parseFloat(jSONArray.getString(i));
            } catch (JSONException e) {
            }
        }
        return fArr;
    }

    /* renamed from: b */
    public static void m15971b() {
        f5737b = C2095j.m15360h().getSharedPreferences("com.facebook.internal.MODEL_STORE", 0);
        m15962h();
    }

    /* renamed from: b */
    public static void m15970b(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                C1886a m15966d = m15966d(jSONObject.getJSONObject(next));
                if (m15966d != null) {
                    f5736a.put(next, m15966d);
                }
            } catch (JSONException e) {
                return;
            }
        }
    }

    /* renamed from: c */
    private static JSONObject m15968c(JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3 = new JSONObject();
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("data");
            int i = 0;
            while (true) {
                jSONObject2 = jSONObject3;
                if (i >= jSONArray.length()) {
                    break;
                }
                JSONObject jSONObject4 = jSONArray.getJSONObject(i);
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("version_id", jSONObject4.getString("version_id"));
                jSONObject5.put("use_case", jSONObject4.getString("use_case"));
                jSONObject5.put("thresholds", jSONObject4.getJSONArray("thresholds"));
                jSONObject5.put("asset_uri", jSONObject4.getString("asset_uri"));
                if (jSONObject4.has("rules_uri")) {
                    jSONObject5.put("rules_uri", jSONObject4.getString("rules_uri"));
                }
                jSONObject3.put(jSONObject4.getString("use_case"), jSONObject5);
                i++;
            }
        } catch (JSONException e) {
            jSONObject2 = new JSONObject();
        }
        return jSONObject2;
    }

    /* renamed from: c */
    public static void m15969c() {
        if (!f5736a.containsKey("DATA_DETECTION_ADDRESS")) {
            return;
        }
        C2039j.m15624a(C2039j.EnumC2043b.PIIFiltering, new C2039j.AbstractC2042a() { // from class: com.facebook.a.e.b.3
            @Override // com.facebook.internal.C2039j.AbstractC2042a
            /* renamed from: a */
            public void mo15345a(boolean z) {
                if (!z) {
                    return;
                }
                ((C1886a) C1891b.f5736a.get("DATA_DETECTION_ADDRESS")).m15987a(new Runnable() { // from class: com.facebook.a.e.b.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C1901a.m15942a();
                    }
                });
            }
        });
    }

    /* renamed from: d */
    private static C1886a m15966d(JSONObject jSONObject) {
        C1886a c1886a;
        try {
            c1886a = new C1886a(jSONObject.getString("use_case"), Integer.parseInt(jSONObject.getString("version_id")), jSONObject.getString("asset_uri"), jSONObject.optString("rules_uri", null), m15973a(jSONObject.getJSONArray("thresholds")));
        } catch (JSONException e) {
            c1886a = null;
        }
        return c1886a;
    }

    /* renamed from: h */
    private static void m15962h() {
        C2079x.m15473a(new Runnable() { // from class: com.facebook.a.e.b.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject m15961i = C1891b.m15961i();
                    if (m15961i != null) {
                        C1891b.f5737b.edit().putString("models", m15961i.toString()).apply();
                    } else {
                        m15961i = new JSONObject(C1891b.f5737b.getString("models", ""));
                    }
                    C1891b.m15970b(m15961i);
                    C1891b.m15960j();
                    C1891b.m15969c();
                } catch (Exception e) {
                }
            }
        });
    }

    /* renamed from: i */
    public static JSONObject m15961i() {
        JSONObject jSONObject = null;
        ArrayList arrayList = new ArrayList(Arrays.asList(f5738c));
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", arrayList));
        C2102k m15338a = C2102k.m15338a((C1803a) null, String.format("%s/model_asset", C2095j.m15356l()), (C2102k.AbstractC2108b) null);
        m15338a.m15316a(true);
        m15338a.m15341a(bundle);
        JSONObject m14980b = m15338a.m15293i().m14980b();
        if (m14980b != null) {
            jSONObject = m15968c(m14980b);
        }
        return jSONObject;
    }

    /* renamed from: j */
    public static void m15960j() {
        if (!f5736a.containsKey("SUGGEST_EVENT")) {
            return;
        }
        Locale m15453b = C2079x.m15453b();
        if (m15453b != null && !m15453b.getLanguage().contains("en")) {
            return;
        }
        C2039j.m15624a(C2039j.EnumC2043b.SuggestedEvents, new C2039j.AbstractC2042a() { // from class: com.facebook.a.e.b.2
            @Override // com.facebook.internal.C2039j.AbstractC2042a
            /* renamed from: a */
            public void mo15345a(boolean z) {
                if (!z) {
                    return;
                }
                ((C1886a) C1891b.f5736a.get("SUGGEST_EVENT")).m15987a(new Runnable() { // from class: com.facebook.a.e.b.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C1909d.m15905a();
                    }
                });
            }
        });
    }
}
