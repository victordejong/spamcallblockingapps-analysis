package com.bytedance.sdk.openadsdk.p164d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.d.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/a.class */
public class C4805a implements AbstractC4821j {

    /* renamed from: a */
    public final String f17658a;

    /* renamed from: b */
    public final JSONObject f17659b;

    public C4805a(String str, JSONObject jSONObject) {
        this.f17658a = str;
        this.f17659b = jSONObject;
    }

    /* renamed from: a */
    public static C4805a m33897a(Context context, String str, String str2, String str3, JSONObject jSONObject) {
        return new C4805a(UUID.randomUUID().toString(), m33894b(context, str, str2, str3, jSONObject));
    }

    /* renamed from: a */
    public static C4805a m33896a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("localId", null);
            JSONObject optJSONObject = jSONObject.optJSONObject("event");
            if (!TextUtils.isEmpty(optString) && optJSONObject != null) {
                return new C4805a(optString, optJSONObject);
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static C4805a m33895a(String str, String str2, String str3, long j, long j2, JSONObject jSONObject) {
        return new C4805a(UUID.randomUUID().toString(), m33893b(str, str2, str3, j, j2, jSONObject));
    }

    /* renamed from: b */
    private static JSONObject m33894b(Context context, String str, String str2, String str3, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("event_ts", System.currentTimeMillis());
            jSONObject2.putOpt("tag", str);
            jSONObject2.putOpt("label", str2);
            jSONObject2.putOpt("category", "app_union");
            try {
                jSONObject2.putOpt("value", Long.valueOf(Long.parseLong(str3)));
            } catch (NumberFormatException e) {
                jSONObject2.putOpt("value", 0L);
            }
            jSONObject2.putOpt("is_ad_event", "1");
            jSONObject2.putOpt("nt", Integer.valueOf(C5482t.m32088c(context)));
            if (jSONObject != null) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject2.putOpt(next, jSONObject.opt(next));
                }
            }
        } catch (Exception e2) {
        }
        return jSONObject2;
    }

    /* renamed from: b */
    private static JSONObject m33893b(String str, String str2, String str3, long j, long j2, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("event_ts", System.currentTimeMillis());
            jSONObject2.putOpt("tag", str2);
            jSONObject2.putOpt("label", str3);
            jSONObject2.putOpt("category", str);
            jSONObject2.putOpt("value", Long.valueOf(j));
            jSONObject2.putOpt("is_ad_event", "1");
            jSONObject2.putOpt("ext_value", Long.valueOf(j2));
            if (jSONObject != null) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject2.putOpt(next, jSONObject.opt(next));
                }
            }
        } catch (Exception e) {
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public String m33898a() {
        if (TextUtils.isEmpty(this.f17658a) || this.f17659b == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.f17658a);
            jSONObject.put("event", this.f17659b);
        } catch (Throwable th) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4821j
    /* renamed from: b */
    public String mo33496b() {
        return this.f17658a;
    }
}
