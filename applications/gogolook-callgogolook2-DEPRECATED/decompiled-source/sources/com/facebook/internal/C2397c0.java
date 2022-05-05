package com.facebook.internal;

import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.c0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/c0.class */
public class C2397c0 {

    /* renamed from: a */
    public static final ConcurrentHashMap<String, JSONObject> f2973a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static JSONObject m34906a(String str) {
        return f2973a.get(str);
    }

    /* renamed from: a */
    public static void m34905a(String str, JSONObject jSONObject) {
        f2973a.put(str, jSONObject);
    }
}
