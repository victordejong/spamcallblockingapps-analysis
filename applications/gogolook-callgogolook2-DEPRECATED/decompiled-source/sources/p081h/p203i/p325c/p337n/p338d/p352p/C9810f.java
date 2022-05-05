package p081h.p203i.p325c.p337n.p338d.p352p;

import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9612s;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9818f;
/* renamed from: h.i.c.n.d.p.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/p/f.class */
public class C9810f {

    /* renamed from: a */
    public final AbstractC9612s f22257a;

    public C9810f(AbstractC9612s sVar) {
        this.f22257a = sVar;
    }

    /* renamed from: a */
    public static AbstractC9811g m14145a(int i) {
        return i != 3 ? new C9805b() : new C9812h();
    }

    /* renamed from: a */
    public C9818f m14144a(JSONObject jSONObject) throws JSONException {
        return m14145a(jSONObject.getInt("settings_version")).mo14141a(this.f22257a, jSONObject);
    }
}
