package p081h.p082a.p083a.p088n.p089k;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5390h;
import p081h.p082a.p083a.p084l.p086c.C5393i;
import p081h.p082a.p083a.p084l.p086c.C5398n;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p092o.C5524b;
/* renamed from: h.a.a.n.k.e */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/e.class */
public class C5432e implements AbstractC5452m<PointF, PointF> {

    /* renamed from: a */
    public final List<C5390h> f13571a;

    /* renamed from: b */
    public PointF f13572b;

    /* renamed from: h.a.a.n.k.e$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/e$a.class */
    public static class C5433a implements AbstractC5452m.AbstractC5453a<PointF> {

        /* renamed from: a */
        public static final AbstractC5452m.AbstractC5453a<PointF> f13573a = new C5433a();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a
        /* renamed from: a */
        public PointF mo25373a(Object obj, float f) {
            return C5524b.m25279a((JSONArray) obj, f);
        }
    }

    public C5432e() {
        this.f13571a = new ArrayList();
        this.f13572b = new PointF(0.0f, 0.0f);
    }

    public C5432e(Object obj, C5341e eVar) {
        this.f13571a = new ArrayList();
        if (m25469a(obj)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                this.f13571a.add(C5390h.C5392b.m25519a(jSONArray.optJSONObject(i), eVar, C5433a.f13573a));
            }
            C5358a.m25567a(this.f13571a);
            return;
        }
        this.f13572b = C5524b.m25279a((JSONArray) obj, eVar.m25643c());
    }

    /* renamed from: a */
    public static AbstractC5452m<PointF, PointF> m25468a(JSONObject jSONObject, C5341e eVar) {
        return jSONObject.has("k") ? new C5432e(jSONObject.opt("k"), eVar) : new C5443i(C5420b.C5422b.m25477a(jSONObject.optJSONObject("x"), eVar), C5420b.C5422b.m25477a(jSONObject.optJSONObject("y"), eVar));
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m
    /* renamed from: a */
    public AbstractC5382a<PointF, PointF> mo25446a() {
        return !m25467b() ? new C5398n(this.f13572b) : new C5393i(this.f13571a);
    }

    /* renamed from: a */
    public final boolean m25469a(Object obj) {
        if (!(obj instanceof JSONArray)) {
            return false;
        }
        Object opt = ((JSONArray) obj).opt(0);
        boolean z = false;
        if (opt instanceof JSONObject) {
            z = false;
            if (((JSONObject) opt).has("t")) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public boolean m25467b() {
        return !this.f13571a.isEmpty();
    }

    public String toString() {
        return "initialPoint=" + this.f13572b;
    }
}
