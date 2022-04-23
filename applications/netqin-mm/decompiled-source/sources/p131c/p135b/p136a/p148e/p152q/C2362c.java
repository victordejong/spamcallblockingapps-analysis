package p131c.p135b.p136a.p148e.p152q;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* renamed from: c.b.a.e.q.c */
/* loaded from: classes-dex2jar.jar:c/b/a/e/q/c.class */
public class C2362c {

    /* renamed from: a */
    public static final Object f9192a = new Object();

    /* renamed from: a */
    public static JSONObject m30155a(String str, Context context) {
        JSONObject b = m30153b(context);
        JSONObject jSONObject = b;
        if (b == null) {
            jSONObject = new JSONObject();
        }
        if (!jSONObject.has(str)) {
            try {
                jSONObject.put(str, new JSONObject());
            } catch (JSONException e) {
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static void m30157a(int i, String str, Context context) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (f9192a) {
                String d = AbstractC2426r.m29776d(str);
                JSONObject a = m30155a(d, context);
                String num = Integer.toString(i);
                JSONObject optJSONObject = a.optJSONObject(d);
                try {
                    optJSONObject.put(num, optJSONObject.optInt(num) + 1);
                } catch (JSONException e) {
                }
                try {
                    a.put(d, optJSONObject);
                } catch (JSONException e2) {
                }
                m30154a(a, context);
            }
        }
    }

    /* renamed from: a */
    public static void m30156a(Context context) {
        synchronized (f9192a) {
            C2251d.C2259h.m30576a((C2251d.C2258g) C2251d.C2258g.f8808r, context);
        }
    }

    /* renamed from: a */
    public static void m30154a(JSONObject jSONObject, Context context) {
        C2251d.C2259h.m30574a(C2251d.C2258g.f8808r, jSONObject.toString(), context);
    }

    /* renamed from: b */
    public static JSONObject m30153b(Context context) {
        JSONObject jSONObject;
        synchronized (f9192a) {
            try {
                jSONObject = new JSONObject((String) C2251d.C2259h.m30567b(C2251d.C2258g.f8808r, "{}", context));
            } catch (JSONException e) {
                return new JSONObject();
            }
        }
        return jSONObject;
    }
}
