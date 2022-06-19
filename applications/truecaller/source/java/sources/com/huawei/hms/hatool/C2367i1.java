package com.huawei.hms.hatool;

import android.content.Context;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.hatool.i1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/i1.class */
public final class C2367i1 {

    /* renamed from: c */
    public static C2367i1 f7528c;

    /* renamed from: a */
    public Context f7529a;

    /* renamed from: b */
    public final Object f7530b = new Object();

    /* renamed from: a */
    public static C2367i1 m37670a() {
        if (f7528c == null) {
            m37664b();
        }
        return f7528c;
    }

    /* renamed from: b */
    public static void m37664b() {
        synchronized (C2367i1.class) {
            try {
                if (f7528c == null) {
                    f7528c = new C2367i1();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final JSONObject m37665a(Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        if (map != null) {
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            } catch (JSONException e) {
                C2398y.m37476b("hmsSdk", "Exception occured when transferring bundle to json");
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public void m37669a(Context context) {
        synchronized (this.f7530b) {
            if (this.f7529a != null) {
                return;
            }
            this.f7529a = context;
            C2364h0.m37688a().m37687a(context);
        }
    }

    /* renamed from: a */
    public void m37668a(String str, int i) {
        C2364h0.m37688a().m37686a(str, i);
    }

    /* renamed from: a */
    public void m37667a(String str, int i, String str2, LinkedHashMap<String, String> linkedHashMap) {
        C2364h0.m37688a().m37685a(str, i, str2, m37665a(linkedHashMap));
    }

    /* renamed from: a */
    public void m37666a(String str, Context context, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_constants", str3);
            C2364h0.m37688a().m37685a(str, 0, str2, jSONObject);
        } catch (JSONException e) {
            C2398y.m37469f("hmsSdk", "onEvent():JSON structure Exception!");
        }
    }
}
