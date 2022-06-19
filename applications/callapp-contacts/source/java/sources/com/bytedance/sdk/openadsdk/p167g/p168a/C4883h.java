package com.bytedance.sdk.openadsdk.p167g.p168a;

import java.lang.reflect.Type;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/h.class */
public class C4883h {

    /* renamed from: a */
    private AbstractC4890l f17846a;

    private C4883h(AbstractC4890l abstractC4890l) {
        this.f17846a = abstractC4890l;
    }

    /* renamed from: a */
    public static C4883h m33662a(AbstractC4890l abstractC4890l) {
        return new C4883h(abstractC4890l);
    }

    /* renamed from: a */
    private static void m33660a(String str) {
        if (!str.startsWith("{") || !str.endsWith("}")) {
            C4884i.m33658a(new IllegalArgumentException("Param is not allowed to be List or JSONArray, rawString:\n ".concat(String.valueOf(str))));
        }
    }

    /* renamed from: a */
    public <T> T m33659a(String str, Type type) throws JSONException {
        m33660a(str);
        return (type.equals(JSONObject.class) || ((type instanceof Class) && JSONObject.class.isAssignableFrom((Class) type))) ? (T) new JSONObject(str) : (T) this.f17846a.mo33637a(str, type);
    }

    /* renamed from: a */
    public <T> String m33661a(T t) {
        if (t == null) {
            return "{}";
        }
        String obj = ((t instanceof JSONObject) || (t instanceof JSONArray)) ? t.toString() : this.f17846a.mo33638a(t);
        m33660a(obj);
        return obj;
    }
}
