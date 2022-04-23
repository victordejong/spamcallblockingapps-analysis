package com.bytedance.sdk.openadsdk.g.a;

import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private l f9531a;

    private h(l lVar) {
        this.f9531a = lVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(l lVar) {
        return new h(lVar);
    }

    private static void a(String str) {
        if (!str.startsWith("{") || !str.endsWith("}")) {
            i.a(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n ".concat(String.valueOf(str))));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T a(String str, Type type) throws JSONException {
        a(str);
        return (type.equals(JSONObject.class) || ((type instanceof Class) && JSONObject.class.isAssignableFrom((Class) type))) ? (T) new JSONObject(str) : (T) this.f9531a.a(str, type);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> String a(T t) {
        if (t == null) {
            return "{}";
        }
        String obj = ((t instanceof JSONObject) || (t instanceof JSONArray)) ? t.toString() : this.f9531a.a(t);
        a(obj);
        return obj;
    }
}
