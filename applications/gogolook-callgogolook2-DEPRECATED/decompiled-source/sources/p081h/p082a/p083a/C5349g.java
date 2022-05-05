package p081h.p082a.p083a;

import com.criteo.publisher.model.C2052w;
import org.json.JSONObject;
/* renamed from: h.a.a.g */
/* loaded from: classes-dex2jar.jar:h/a/a/g.class */
public class C5349g {

    /* renamed from: a */
    public final String f13370a;

    /* renamed from: b */
    public final String f13371b;

    /* renamed from: h.a.a.g$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/g$b.class */
    public static class C5351b {
        /* renamed from: a */
        public static C5349g m25576a(JSONObject jSONObject) {
            return new C5349g(jSONObject.optInt(C2052w.f2268l), jSONObject.optInt("h"), jSONObject.optString("id"), jSONObject.optString("p"));
        }
    }

    public C5349g(int i, int i2, String str, String str2) {
        this.f13370a = str;
        this.f13371b = str2;
    }

    /* renamed from: a */
    public String m25578a() {
        return this.f13371b;
    }

    /* renamed from: b */
    public String m25577b() {
        return this.f13370a;
    }
}
