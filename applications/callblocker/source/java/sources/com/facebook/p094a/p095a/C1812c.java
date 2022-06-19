package com.facebook.p094a.p095a;

import com.facebook.p094a.C1932p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.a.c */
/* loaded from: classes-dex2jar.jar:com/facebook/a/a/c.class */
final class C1812c {

    /* renamed from: a */
    private static final String f5504a = C1812c.class.getCanonicalName();

    /* renamed from: b */
    private static List<C1812c> f5505b = new ArrayList();

    /* renamed from: c */
    private String f5506c;

    /* renamed from: d */
    private List<String> f5507d;

    /* renamed from: e */
    private String f5508e;

    private C1812c(String str, List<String> list, String str2) {
        this.f5506c = str;
        this.f5507d = list;
        this.f5508e = str2;
    }

    /* renamed from: a */
    public static List<C1812c> m16220a() {
        return new ArrayList(f5505b);
    }

    /* renamed from: a */
    public static void m16219a(String str) {
        try {
            f5505b.clear();
            m16218a(new JSONObject(str));
            m16214e();
        } catch (JSONException e) {
        }
    }

    /* renamed from: a */
    private static void m16218a(JSONObject jSONObject) {
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (jSONObject.get(next) instanceof JSONObject) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    if (jSONObject2.has("k") && jSONObject2.has("v") && !jSONObject2.getString("k").isEmpty() && !jSONObject2.getString("v").isEmpty()) {
                        f5505b.add(new C1812c(next, Arrays.asList(jSONObject2.getString("k").split(",")), jSONObject2.getString("v")));
                    }
                }
            }
        } catch (JSONException e) {
        }
    }

    /* renamed from: e */
    private static void m16214e() {
        Map<String, String> m15832c = C1932p.m15832c();
        if (m15832c.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (C1812c c1812c : f5505b) {
            hashSet.add(c1812c.m16217b());
        }
        ArrayList arrayList = new ArrayList();
        for (String str : m15832c.keySet()) {
            if (!hashSet.contains(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        C1932p.m15836a(arrayList);
    }

    /* renamed from: b */
    public String m16217b() {
        return this.f5506c;
    }

    /* renamed from: c */
    public List<String> m16216c() {
        return new ArrayList(this.f5507d);
    }

    /* renamed from: d */
    public String m16215d() {
        return this.f5508e;
    }
}
