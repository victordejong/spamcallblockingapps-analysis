package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.u */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/u.class */
class C2076u {

    /* renamed from: a */
    private static final ConcurrentHashMap<String, JSONObject> f6108a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static JSONObject m15500a(String str) {
        return f6108a.get(str);
    }

    /* renamed from: a */
    public static void m15499a(String str, JSONObject jSONObject) {
        f6108a.put(str, jSONObject);
    }
}
