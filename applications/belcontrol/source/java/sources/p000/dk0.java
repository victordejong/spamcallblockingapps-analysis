package p000;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: dk0 */
/* loaded from: classes-dex2jar.jar:dk0.class */
public final class dk0 {

    /* renamed from: d */
    public static List<dk0> f6055d = new ArrayList();

    /* renamed from: a */
    public String f6056a;

    /* renamed from: b */
    public List<String> f6057b;

    /* renamed from: c */
    public String f6058c;

    public dk0(String str, List<String> list, String str2) {
        this.f6056a = str;
        this.f6057b = list;
        this.f6058c = str2;
    }

    /* renamed from: a */
    public static void m2516a(JSONObject jSONObject) {
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (jSONObject.get(next) instanceof JSONObject) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    if (jSONObject2.has("k") && jSONObject2.has("v") && !jSONObject2.getString("k").isEmpty() && !jSONObject2.getString("v").isEmpty()) {
                        f6055d.add(new dk0(next, Arrays.asList(jSONObject2.getString("k").split(",")), jSONObject2.getString("v")));
                    }
                }
            }
        } catch (JSONException e) {
        }
    }

    /* renamed from: d */
    public static List<dk0> m2513d() {
        return new ArrayList(f6055d);
    }

    /* renamed from: f */
    public static void m2511f() {
        Map<String, String> m7087e = ak0.m7087e();
        if (m7087e.isEmpty()) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (dk0 dk0Var : f6055d) {
            hashSet.add(dk0Var.m2514c());
        }
        ArrayList arrayList = new ArrayList();
        for (String str : m7087e.keySet()) {
            if (!hashSet.contains(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        ak0.m7083i(arrayList);
    }

    /* renamed from: g */
    public static void m2510g(String str) {
        try {
            f6055d.clear();
            m2516a(new JSONObject(str));
            m2511f();
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    public List<String> m2515b() {
        return new ArrayList(this.f6057b);
    }

    /* renamed from: c */
    public String m2514c() {
        return this.f6056a;
    }

    /* renamed from: e */
    public String m2512e() {
        return this.f6058c;
    }
}
