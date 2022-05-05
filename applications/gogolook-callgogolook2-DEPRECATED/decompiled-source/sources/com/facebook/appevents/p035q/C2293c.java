package com.facebook.appevents.p035q;

import androidx.annotation.RestrictTo;
import com.facebook.appevents.C2288p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.q.c */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/q/c.class */
public final class C2293c {

    /* renamed from: d */
    public static List<C2293c> f2723d = new ArrayList();

    /* renamed from: a */
    public String f2724a;

    /* renamed from: b */
    public List<String> f2725b;

    /* renamed from: c */
    public String f2726c;

    public C2293c(String str, List<String> list, String str2) {
        this.f2724a = str;
        this.f2725b = list;
        this.f2726c = str2;
    }

    /* renamed from: a */
    public static void m35258a(String str) {
        try {
            f2723d.clear();
            m35257a(new JSONObject(str));
            m35253e();
        } catch (JSONException e) {
        }
    }

    /* renamed from: a */
    public static void m35257a(JSONObject jSONObject) {
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (jSONObject.get(next) instanceof JSONObject) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    if (jSONObject2.has("k") && jSONObject2.has("v") && !jSONObject2.getString("k").isEmpty() && !jSONObject2.getString("v").isEmpty()) {
                        f2723d.add(new C2293c(next, Arrays.asList(jSONObject2.getString("k").split(",")), jSONObject2.getString("v")));
                    }
                }
            }
        } catch (JSONException e) {
        }
    }

    /* renamed from: d */
    public static List<C2293c> m35254d() {
        return new ArrayList(f2723d);
    }

    /* renamed from: e */
    public static void m35253e() {
        Map<String, String> e = C2288p.m35272e();
        if (!e.isEmpty()) {
            HashSet hashSet = new HashSet();
            for (C2293c cVar : f2723d) {
                hashSet.add(cVar.m35256b());
            }
            ArrayList arrayList = new ArrayList();
            for (String str : e.keySet()) {
                if (!hashSet.contains(str)) {
                    arrayList.add(str);
                }
            }
            if (!arrayList.isEmpty()) {
                C2288p.m35278a(arrayList);
            }
        }
    }

    /* renamed from: a */
    public List<String> m35259a() {
        return new ArrayList(this.f2725b);
    }

    /* renamed from: b */
    public String m35256b() {
        return this.f2724a;
    }

    /* renamed from: c */
    public String m35255c() {
        return this.f2726c;
    }
}
