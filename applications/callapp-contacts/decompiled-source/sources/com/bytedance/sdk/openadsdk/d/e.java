package com.bytedance.sdk.openadsdk.d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.c.c;
import com.bytedance.sdk.openadsdk.core.e.d;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.s;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.h;
import com.bytedance.sdk.openadsdk.utils.q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/e.class */
public class e {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/e$a.class */
    public static class a {
        public static void a(int i, int i2, i iVar) {
            try {
                String a2 = af.a(iVar);
                if (a2 != null) {
                    String str = a2 + "_landingpage";
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("all_times", i2);
                    jSONObject.put("hit_times", i);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    e.d(n.a(), iVar, str, "local_res_hit_rate", jSONObject2);
                }
            } catch (Throwable th) {
            }
        }

        public static void a(String str, JSONObject jSONObject, i iVar) {
            try {
                String a2 = af.a(iVar);
                if (a2 != null) {
                    String str2 = a2 + "_landingpage";
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    e.d(n.a(), iVar, str2, str, jSONObject2);
                }
            } catch (Throwable th) {
            }
        }
    }

    public static void a(Context context, i iVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("render_type", "h5");
            jSONObject2.putOpt("render_type_2", 0);
            jSONObject.putOpt("ad_extra_data", jSONObject2);
        } catch (Exception e) {
        }
        b(context, iVar, "landingpage", "open_url_h5", jSONObject);
    }

    public static void a(Context context, i iVar, String str) {
        b(context, iVar, str, "click_close");
    }

    public static void a(Context context, i iVar, String str, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt("render_type", "h5");
            jSONObject2.putOpt("render_type_2", 0);
            jSONObject.putOpt("ad_extra_data", jSONObject2);
            jSONObject.put(VastIconXmlManager.DURATION, j);
        } catch (Exception e) {
        }
        b(context, iVar, str, "load", jSONObject);
    }

    public static void a(Context context, i iVar, String str, String str2) {
        b(context, iVar, str, str2);
    }

    public static void a(Context context, i iVar, String str, String str2, long j, int i, Map<String, Object> map) {
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
        d(context, iVar, str, str2, jSONObject);
    }

    public static void a(Context context, i iVar, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                q.b(th.toString());
            }
        }
        jSONObject2.put("ad_extra_data", jSONObject.toString());
        d(context, iVar, str, str2, jSONObject2);
    }

    public static void a(Context context, i iVar, String str, String str2, JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("ad_extra_data", jSONObject.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            d(context, iVar, str, str2, jSONObject2);
            return;
        }
        b(context, iVar, str, str2);
    }

    public static void a(Context context, i iVar, String str, Map<String, Object> map) {
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("device", h.f(context2).toString());
            jSONObject2.put("is_cache", iVar.Z() ? 1 : 0);
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
            }
            jSONObject.put("ad_extra_data", jSONObject2.toString());
            jSONObject.putOpt("log_extra", iVar.S());
            float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - af.g(iVar.S())).floatValue();
            if (floatValue <= BitmapDescriptorFactory.HUE_RED) {
                floatValue = BitmapDescriptorFactory.HUE_RED;
            }
            jSONObject.putOpt("show_time", Float.valueOf(floatValue));
            jSONObject.putOpt("ua_policy", Integer.valueOf(iVar.y()));
            String i = iVar.i();
            if (!TextUtils.isEmpty(i) && !TextUtils.isEmpty(i)) {
                jSONObject.put("ttdsp_price", Float.parseFloat(i) * 100000.0f);
            }
        } catch (JSONException e) {
        }
        n.c().a(com.bytedance.sdk.openadsdk.d.a.a(context2, str, "show", iVar.P(), jSONObject));
        if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.i.a(n.a()))) {
            n.g().a(com.bytedance.sdk.openadsdk.m.e.a(iVar.J(), true));
        }
        if (q.c()) {
            q.c("AdEvent", "show " + iVar.P());
        }
        s.a();
    }

    public static void a(Context context, String str, long j) {
        c.a(context, str, j);
    }

    public static void a(Context context, String str, i iVar, d dVar, String str2, boolean z, Map<String, Object> map) {
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        JSONObject jSONObject = new JSONObject();
        if (dVar != null) {
            try {
                JSONObject a2 = dVar.a();
                a2.put("device", h.f(context2).toString());
                a2.put("is_valid", z);
                if (map != null) {
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        a2.put(entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.put("ad_extra_data", a2.toString());
            } catch (JSONException e) {
            }
        }
        jSONObject.putOpt("log_extra", iVar.S());
        float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - af.g(iVar.S())).floatValue();
        if (floatValue <= BitmapDescriptorFactory.HUE_RED) {
            floatValue = BitmapDescriptorFactory.HUE_RED;
        }
        jSONObject.putOpt("show_time", Float.valueOf(floatValue));
        jSONObject.putOpt("ua_policy", Integer.valueOf(iVar.y()));
        n.c().a(com.bytedance.sdk.openadsdk.d.a.a(context2, str2, str, iVar.P(), jSONObject));
        if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.i.a(n.a())) && "click".equals(str)) {
            n.g().a(com.bytedance.sdk.openadsdk.m.e.a(iVar.K(), true));
        }
        if (q.c()) {
            q.c("AdEvent", str + StringUtils.SPACE + iVar.P());
        }
    }

    public static void a(i iVar) {
    }

    public static void a(i iVar, String str, String str2, String str3, long j, long j2, JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                String optString = jSONObject.optString("ad_extra_data", null);
                if (optString != null) {
                    jSONObject2 = new JSONObject(optString);
                }
                jSONObject2.put("device", h.f(n.a()).toString());
                jSONObject.put("ad_extra_data", jSONObject2.toString());
                jSONObject.put("tag", str2);
                if ("click".equals(str3)) {
                    float floatValue = Double.valueOf((System.currentTimeMillis() / 1000) - af.g(jSONObject.optString("log_extra"))).floatValue();
                    if (floatValue <= BitmapDescriptorFactory.HUE_RED) {
                        floatValue = BitmapDescriptorFactory.HUE_RED;
                    }
                    jSONObject.putOpt("show_time", Float.valueOf(floatValue));
                    if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.i.a(n.a())) && iVar != null) {
                        n.g().a(com.bytedance.sdk.openadsdk.m.e.a(iVar.K(), true));
                    }
                }
            } catch (JSONException e) {
            }
        }
        n.c().a(com.bytedance.sdk.openadsdk.d.a.a(str, str2, str3, j, j2, jSONObject));
        if (q.c()) {
            q.c("AdEvent", "sendJsAdEvent");
        }
    }

    public static void a(i iVar, String str, Map<String, Object> map) {
        Context a2 = n.a();
        JSONObject jSONObject = new JSONObject();
        if (map == null || map.size() <= 0) {
            b(a2, iVar, str, "load_ad_duration");
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("device", h.f(a2).toString());
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
        d(a2, iVar, str, "load_ad_duration", jSONObject);
    }

    public static void a(i iVar, List<FilterWord> list) {
        com.bytedance.sdk.openadsdk.dislike.a.a().a(iVar, list);
        if (q.c()) {
            q.c("AdEvent", "tt_dislike_icon " + iVar.P());
        }
    }

    public static void a(String str, i iVar, String str2) {
        if (iVar != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(VastIconXmlManager.DURATION, str);
            } catch (Exception e) {
                e.printStackTrace();
            }
            d(n.a(), iVar, str2, "ad_show_time", jSONObject);
        }
    }

    private static void b(Context context, i iVar, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("log_extra", iVar.S());
            jSONObject.putOpt("ua_policy", Integer.valueOf(iVar.y()));
        } catch (JSONException e) {
        }
        n.c().a(com.bytedance.sdk.openadsdk.d.a.a(context, str, str2, iVar.P(), jSONObject));
        if (q.c()) {
            q.c("AdEvent", "tag: " + str + "label: " + str2 + StringUtils.SPACE + iVar.P());
        }
    }

    public static void b(Context context, i iVar, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                q.b(th.toString());
            }
        }
        jSONObject2.put("ad_extra_data", jSONObject.toString());
        d(context, iVar, str, str2, jSONObject2);
    }

    public static void b(Context context, i iVar, String str, String str2, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        d(context, iVar, str, str2, jSONObject2);
    }

    public static void c(Context context, i iVar, String str, String str2, Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (Throwable th) {
                q.b(th.toString());
            }
        }
        jSONObject2.put("ad_extra_data", jSONObject.toString());
        d(context, iVar, str, str2, jSONObject2);
    }

    public static void d(Context context, i iVar, String str, String str2, Map<String, Object> map) {
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
        d(context, iVar, str, str2, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, i iVar, String str, String str2, JSONObject jSONObject) {
        if (iVar != null) {
            if (jSONObject != null) {
                try {
                    jSONObject.putOpt("log_extra", iVar.S());
                    jSONObject.putOpt("ua_policy", Integer.valueOf(iVar.y()));
                } catch (JSONException e) {
                }
            }
            n.c().a(com.bytedance.sdk.openadsdk.d.a.a(context, str, str2, iVar.P(), jSONObject));
            if (q.c()) {
                q.c("AdEvent", "tag: " + str + "label: " + str2 + StringUtils.SPACE + iVar.P());
            }
        }
    }

    public static void e(Context context, i iVar, String str, String str2, Map<String, Object> map) {
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
        d(context, iVar, str, str2, jSONObject);
    }

    public static void f(Context context, i iVar, String str, String str2, Map<String, Object> map) {
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
        d(context, iVar, str, str2, jSONObject);
    }

    public static void g(Context context, i iVar, String str, String str2, Map<String, Object> map) {
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
        d(context, iVar, str, str2, jSONObject);
    }
}
