package com.bytedance.sdk.openadsdk.p164d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.C4590i;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4650s;
import com.bytedance.sdk.openadsdk.core.p152c.C4521c;
import com.bytedance.sdk.openadsdk.core.p154e.C4548d;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.dislike.C4851a;
import com.bytedance.sdk.openadsdk.p186m.C5064e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5461h;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.d.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/e.class */
public class C4811e {

    /* renamed from: com.bytedance.sdk.openadsdk.d.e$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/e$a.class */
    public static class C4812a {
        /* renamed from: a */
        public static void m33859a(int i, int i2, C4557i c4557i) {
            try {
                String m32306a = C5438af.m32306a(c4557i);
                if (m32306a == null) {
                    return;
                }
                String str = m32306a + "_landingpage";
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("all_times", i2);
                jSONObject.put("hit_times", i);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("ad_extra_data", jSONObject.toString());
                C4811e.m33863d(C4600n.m34815a(), c4557i, str, "local_res_hit_rate", jSONObject2);
            } catch (Throwable th) {
            }
        }

        /* renamed from: a */
        public static void m33858a(String str, JSONObject jSONObject, C4557i c4557i) {
            try {
                String m32306a = C5438af.m32306a(c4557i);
                if (m32306a == null) {
                    return;
                }
                String str2 = m32306a + "_landingpage";
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("ad_extra_data", jSONObject.toString());
                C4811e.m33863d(C4600n.m34815a(), c4557i, str2, str, jSONObject2);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static void m33884a(Context context, C4557i c4557i) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("render_type", "h5");
            jSONObject2.putOpt("render_type_2", 0);
            jSONObject.putOpt("ad_extra_data", jSONObject2);
        } catch (Exception e) {
        }
        m33867b(context, c4557i, "landingpage", "open_url_h5", jSONObject);
    }

    /* renamed from: a */
    public static void m33883a(Context context, C4557i c4557i, String str) {
        m33869b(context, c4557i, str, "click_close");
    }

    /* renamed from: a */
    public static void m33882a(Context context, C4557i c4557i, String str, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("render_type", "h5");
            jSONObject2.putOpt("render_type_2", 0);
            jSONObject.putOpt("ad_extra_data", jSONObject2);
            jSONObject.put(VastIconXmlManager.DURATION, j);
        } catch (Exception e) {
        }
        m33867b(context, c4557i, str, "load", jSONObject);
    }

    /* renamed from: a */
    public static void m33881a(Context context, C4557i c4557i, String str, String str2) {
        m33869b(context, c4557i, str, str2);
    }

    /* renamed from: a */
    public static void m33880a(Context context, C4557i c4557i, String str, String str2, long j, int i, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject.put(VastIconXmlManager.DURATION, j);
            jSONObject.put("percent", i);
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
            }
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m33863d(context, c4557i, str, str2, jSONObject);
    }

    /* renamed from: a */
    public static void m33879a(Context context, C4557i c4557i, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                C5478q.m32113b(th.toString());
            }
        }
        jSONObject2.put("ad_extra_data", jSONObject.toString());
        m33863d(context, c4557i, str, str2, jSONObject2);
    }

    /* renamed from: a */
    public static void m33878a(Context context, C4557i c4557i, String str, String str2, JSONObject jSONObject) {
        if (jSONObject == null) {
            m33869b(context, c4557i, str, str2);
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("ad_extra_data", jSONObject.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m33863d(context, c4557i, str, str2, jSONObject2);
    }

    /* renamed from: a */
    public static void m33877a(Context context, C4557i c4557i, String str, Map<String, Object> map) {
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("device", C5461h.m32152f(context2).toString());
            jSONObject2.put("is_cache", c4557i.m35221Z() ? 1 : 0);
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
            }
            jSONObject.put("ad_extra_data", jSONObject2.toString());
            jSONObject.putOpt("log_extra", c4557i.m35228S());
            float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - C5438af.m32265g(c4557i.m35228S())).floatValue();
            if (floatValue <= BitmapDescriptorFactory.HUE_RED) {
                floatValue = 0.0f;
            }
            jSONObject.putOpt("show_time", Float.valueOf(floatValue));
            jSONObject.putOpt("ua_policy", Integer.valueOf(c4557i.m35135y()));
            String m35166i = c4557i.m35166i();
            if (!TextUtils.isEmpty(m35166i) && !TextUtils.isEmpty(m35166i)) {
                jSONObject.put("ttdsp_price", Float.parseFloat(m35166i) * 100000.0f);
            }
        } catch (JSONException e) {
        }
        C4600n.m34810c().mo33797a(C4805a.m33897a(context2, str, "show", c4557i.m35231P(), jSONObject));
        if (!TextUtils.isEmpty(C4590i.m34846a(C4600n.m34815a()))) {
            C4600n.m34806g().mo33138a(C5064e.m33133a(c4557i.m35237J(), true));
        }
        if (C5478q.m32110c()) {
            C5478q.m32109c("AdEvent", "show " + c4557i.m35231P());
        }
        C4650s.m34625a();
    }

    /* renamed from: a */
    public static void m33876a(Context context, String str, long j) {
        C4521c.m35395a(context, str, j);
    }

    /* renamed from: a */
    public static void m33875a(Context context, String str, C4557i c4557i, C4548d c4548d, String str2, boolean z, Map<String, Object> map) {
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        JSONObject jSONObject = new JSONObject();
        if (c4548d != null) {
            try {
                JSONObject m35315a = c4548d.m35315a();
                m35315a.put("device", C5461h.m32152f(context2).toString());
                m35315a.put("is_valid", z);
                if (map != null) {
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        m35315a.put(entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.put("ad_extra_data", m35315a.toString());
            } catch (JSONException e) {
            }
        }
        jSONObject.putOpt("log_extra", c4557i.m35228S());
        float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - C5438af.m32265g(c4557i.m35228S())).floatValue();
        if (floatValue <= BitmapDescriptorFactory.HUE_RED) {
            floatValue = 0.0f;
        }
        jSONObject.putOpt("show_time", Float.valueOf(floatValue));
        jSONObject.putOpt("ua_policy", Integer.valueOf(c4557i.m35135y()));
        C4600n.m34810c().mo33797a(C4805a.m33897a(context2, str2, str, c4557i.m35231P(), jSONObject));
        if (!TextUtils.isEmpty(C4590i.m34846a(C4600n.m34815a())) && "click".equals(str)) {
            C4600n.m34806g().mo33138a(C5064e.m33133a(c4557i.m35236K(), true));
        }
        if (C5478q.m32110c()) {
            C5478q.m32109c("AdEvent", str + StringUtils.SPACE + c4557i.m35231P());
        }
    }

    /* renamed from: a */
    public static void m33874a(C4557i c4557i) {
    }

    /* renamed from: a */
    public static void m33873a(C4557i c4557i, String str, String str2, String str3, long j, long j2, JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                String optString = jSONObject.optString("ad_extra_data", null);
                if (optString != null) {
                    jSONObject2 = new JSONObject(optString);
                }
                jSONObject2.put("device", C5461h.m32152f(C4600n.m34815a()).toString());
                jSONObject.put("ad_extra_data", jSONObject2.toString());
                jSONObject.put("tag", str2);
                if ("click".equals(str3)) {
                    float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - C5438af.m32265g(jSONObject.optString("log_extra"))).floatValue();
                    if (floatValue <= BitmapDescriptorFactory.HUE_RED) {
                        floatValue = 0.0f;
                    }
                    jSONObject.putOpt("show_time", Float.valueOf(floatValue));
                    if (!TextUtils.isEmpty(C4590i.m34846a(C4600n.m34815a())) && c4557i != null) {
                        C4600n.m34806g().mo33138a(C5064e.m33133a(c4557i.m35236K(), true));
                    }
                }
            } catch (JSONException e) {
            }
        }
        C4600n.m34810c().mo33797a(C4805a.m33895a(str, str2, str3, j, j2, jSONObject));
        if (C5478q.m32110c()) {
            C5478q.m32109c("AdEvent", "sendJsAdEvent");
        }
    }

    /* renamed from: a */
    public static void m33872a(C4557i c4557i, String str, Map<String, Object> map) {
        Context m34815a = C4600n.m34815a();
        JSONObject jSONObject = new JSONObject();
        if (map == null || map.size() <= 0) {
            m33869b(m34815a, c4557i, str, "load_ad_duration");
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("device", C5461h.m32152f(m34815a).toString());
            Object remove = map.remove("total_time");
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                jSONObject2.put(entry.getKey(), entry.getValue());
            }
            if (remove instanceof Long) {
                jSONObject.put(VastIconXmlManager.DURATION, remove);
            } else {
                jSONObject.put(VastIconXmlManager.DURATION, 0);
            }
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (Exception e) {
        }
        m33863d(m34815a, c4557i, str, "load_ad_duration", jSONObject);
    }

    /* renamed from: a */
    public static void m33871a(C4557i c4557i, List<FilterWord> list) {
        C4851a.m33740a().m33739a(c4557i, list);
        if (C5478q.m32110c()) {
            C5478q.m32109c("AdEvent", "tt_dislike_icon " + c4557i.m35231P());
        }
    }

    /* renamed from: a */
    public static void m33870a(String str, C4557i c4557i, String str2) {
        if (c4557i == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(VastIconXmlManager.DURATION, str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        m33863d(C4600n.m34815a(), c4557i, str2, "ad_show_time", jSONObject);
    }

    /* renamed from: b */
    private static void m33869b(Context context, C4557i c4557i, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("log_extra", c4557i.m35228S());
            jSONObject.putOpt("ua_policy", Integer.valueOf(c4557i.m35135y()));
        } catch (JSONException e) {
        }
        C4600n.m34810c().mo33797a(C4805a.m33897a(context, str, str2, c4557i.m35231P(), jSONObject));
        if (C5478q.m32110c()) {
            C5478q.m32109c("AdEvent", "tag: " + str + "label: " + str2 + StringUtils.SPACE + c4557i.m35231P());
        }
    }

    /* renamed from: b */
    public static void m33868b(Context context, C4557i c4557i, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                C5478q.m32113b(th.toString());
            }
        }
        jSONObject2.put("ad_extra_data", jSONObject.toString());
        m33863d(context, c4557i, str, str2, jSONObject2);
    }

    /* renamed from: b */
    public static void m33867b(Context context, C4557i c4557i, String str, String str2, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        m33863d(context, c4557i, str, str2, jSONObject2);
    }

    /* renamed from: c */
    public static void m33866c(Context context, C4557i c4557i, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                C5478q.m32113b(th.toString());
            }
        }
        jSONObject2.put("ad_extra_data", jSONObject.toString());
        m33863d(context, c4557i, str, str2, jSONObject2);
    }

    /* renamed from: d */
    public static void m33864d(Context context, C4557i c4557i, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        jSONObject.put("ad_extra_data", jSONObject2.toString());
        m33863d(context, c4557i, str, str2, jSONObject);
    }

    /* renamed from: d */
    public static void m33863d(Context context, C4557i c4557i, String str, String str2, JSONObject jSONObject) {
        if (c4557i == null) {
            return;
        }
        if (jSONObject != null) {
            try {
                jSONObject.putOpt("log_extra", c4557i.m35228S());
                jSONObject.putOpt("ua_policy", Integer.valueOf(c4557i.m35135y()));
            } catch (JSONException e) {
            }
        }
        C4600n.m34810c().mo33797a(C4805a.m33897a(context, str, str2, c4557i.m35231P(), jSONObject));
        if (!C5478q.m32110c()) {
            return;
        }
        C5478q.m32109c("AdEvent", "tag: " + str + "label: " + str2 + StringUtils.SPACE + c4557i.m35231P());
    }

    /* renamed from: e */
    public static void m33862e(Context context, C4557i c4557i, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        jSONObject.put("ad_extra_data", jSONObject2.toString());
        m33863d(context, c4557i, str, str2, jSONObject);
    }

    /* renamed from: f */
    public static void m33861f(Context context, C4557i c4557i, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
            }
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (Exception e) {
        }
        m33863d(context, c4557i, str, str2, jSONObject);
    }

    /* renamed from: g */
    public static void m33860g(Context context, C4557i c4557i, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
            }
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m33863d(context, c4557i, str, str2, jSONObject);
    }
}
