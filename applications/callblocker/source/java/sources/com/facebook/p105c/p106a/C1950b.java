package com.facebook.p105c.p106a;

import com.facebook.p105c.p107b.C1963f;
import com.facebook.p105c.p107b.C1968h;
import com.facebook.p105c.p107b.C1972j;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.c.a.b */
/* loaded from: classes-dex2jar.jar:com/facebook/c/a/b.class */
public final class C1950b {

    /* renamed from: com.facebook.c.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/c/a/b$a.class */
    public interface AbstractC1951a {
        /* renamed from: a */
        JSONObject mo15768a(C1972j c1972j);
    }

    /* renamed from: a */
    public static Object m15776a(Object obj, AbstractC1951a abstractC1951a) {
        JSONObject jSONObject;
        if (obj == null) {
            jSONObject = JSONObject.NULL;
        } else {
            jSONObject = obj;
            if (!(obj instanceof String)) {
                jSONObject = obj;
                if (!(obj instanceof Boolean)) {
                    jSONObject = obj;
                    if (!(obj instanceof Double)) {
                        jSONObject = obj;
                        if (!(obj instanceof Float)) {
                            jSONObject = obj;
                            if (!(obj instanceof Integer)) {
                                jSONObject = obj;
                                if (!(obj instanceof Long)) {
                                    if (obj instanceof C1972j) {
                                        jSONObject = abstractC1951a != null ? abstractC1951a.mo15768a((C1972j) obj) : null;
                                    } else if (obj instanceof C1968h) {
                                        jSONObject = m15777a((C1968h) obj, abstractC1951a);
                                    } else if (!(obj instanceof List)) {
                                        throw new IllegalArgumentException("Invalid object found for JSON serialization: " + obj.toString());
                                    } else {
                                        jSONObject = m15775a((List) obj, abstractC1951a);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    private static JSONArray m15775a(List list, AbstractC1951a abstractC1951a) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : list) {
            jSONArray.put(m15776a(obj, abstractC1951a));
        }
        return jSONArray;
    }

    /* renamed from: a */
    public static JSONObject m15778a(C1963f c1963f, AbstractC1951a abstractC1951a) {
        JSONObject jSONObject = new JSONObject();
        for (String str : c1963f.m15735c()) {
            jSONObject.put(str, m15776a(c1963f.m15738a(str), abstractC1951a));
        }
        return jSONObject;
    }

    /* renamed from: a */
    private static JSONObject m15777a(C1968h c1968h, AbstractC1951a abstractC1951a) {
        JSONObject jSONObject = new JSONObject();
        for (String str : c1968h.m15735c()) {
            jSONObject.put(str, m15776a(c1968h.m15738a(str), abstractC1951a));
        }
        return jSONObject;
    }
}
