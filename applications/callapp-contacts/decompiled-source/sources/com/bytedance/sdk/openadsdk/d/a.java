package com.bytedance.sdk.openadsdk.d;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.utils.t;
import java.util.Iterator;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/a.class */
public class a implements j {

    /* renamed from: a  reason: collision with root package name */
    public final String f9395a;

    /* renamed from: b  reason: collision with root package name */
    public final JSONObject f9396b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, JSONObject jSONObject) {
        this.f9395a = str;
        this.f9396b = jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(Context context, String str, String str2, String str3, JSONObject jSONObject) {
        return new a(UUID.randomUUID().toString(), b(context, str, str2, str3, jSONObject));
    }

    public static a a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("localId", null);
            JSONObject optJSONObject = jSONObject.optJSONObject("event");
            if (TextUtils.isEmpty(optString) || optJSONObject == null) {
                return null;
            }
            return new a(optString, optJSONObject);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(String str, String str2, String str3, long j, long j2, JSONObject jSONObject) {
        return new a(UUID.randomUUID().toString(), b(str, str2, str3, j, j2, jSONObject));
    }

    private static JSONObject b(Context context, String str, String str2, String str3, JSONObject jSONObject) {
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
            jSONObject2.putOpt("nt", Integer.valueOf(t.c(context)));
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

    private static JSONObject b(String str, String str2, String str3, long j, long j2, JSONObject jSONObject) {
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

    public String a() {
        if (TextUtils.isEmpty(this.f9395a) || this.f9396b == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.f9395a);
            jSONObject.put("event", this.f9396b);
        } catch (Throwable th) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.d.j
    public String b() {
        return this.f9395a;
    }
}
