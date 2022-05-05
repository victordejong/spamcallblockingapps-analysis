package p081h.p082a.p083a.p088n.p089k;

import java.util.List;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5385c;
import p081h.p082a.p083a.p084l.p086c.C5398n;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p088n.p089k.C5454n;
import p081h.p082a.p083a.p092o.C5524b;
/* renamed from: h.a.a.n.k.b */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/b.class */
public class C5420b extends AbstractC5456o<Float, Float> {

    /* renamed from: h.a.a.n.k.b$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/b$b.class */
    public static final class C5422b {
        /* renamed from: a */
        public static C5420b m25478a() {
            return new C5420b();
        }

        /* renamed from: a */
        public static C5420b m25477a(JSONObject jSONObject, C5341e eVar) {
            return m25476a(jSONObject, eVar, true);
        }

        /* renamed from: a */
        public static C5420b m25476a(JSONObject jSONObject, C5341e eVar, boolean z) {
            float c = z ? eVar.m25643c() : 1.0f;
            if (jSONObject != null && jSONObject.has("x")) {
                eVar.m25648a("Lottie doesn't support expressions.");
            }
            C5454n.C5455a a = C5454n.m25442a(jSONObject, c, eVar, C5423c.f13568a).m25445a();
            return new C5420b(a.f13593a, (Float) a.f13594b);
        }
    }

    /* renamed from: h.a.a.n.k.b$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/b$c.class */
    public static class C5423c implements AbstractC5452m.AbstractC5453a<Float> {

        /* renamed from: a */
        public static final C5423c f13568a = new C5423c();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a
        /* renamed from: a */
        public Float mo25373a(Object obj, float f) {
            return Float.valueOf(C5524b.m25280a(obj) * f);
        }
    }

    public C5420b() {
        super(Float.valueOf(0.0f));
    }

    public C5420b(List<C5358a<Float>> list, Float f) {
        super(list, f);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m
    /* renamed from: a */
    public AbstractC5382a<Float, Float> mo25446a() {
        return !m25438c() ? new C5398n(this.f13596b) : new C5385c(this.f13595a);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5456o
    /* renamed from: b */
    public Float mo25439b() {
        return (Float) this.f13596b;
    }
}
