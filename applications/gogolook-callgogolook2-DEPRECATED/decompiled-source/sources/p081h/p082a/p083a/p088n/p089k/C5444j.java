package p081h.p082a.p083a.p088n.p089k;

import java.util.List;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p084l.p086c.C5399o;
import p081h.p082a.p083a.p088n.C5406d;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p088n.p089k.C5454n;
/* renamed from: h.a.a.n.k.j */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/j.class */
public class C5444j extends AbstractC5456o<C5406d, C5406d> {

    /* renamed from: h.a.a.n.k.j$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/j$a.class */
    public static final class C5445a {
        /* renamed from: a */
        public static C5444j m25460a(JSONObject jSONObject, C5341e eVar) {
            if (jSONObject != null && jSONObject.has("x")) {
                eVar.m25648a("Lottie doesn't support expressions.");
            }
            C5454n.C5455a a = C5454n.m25442a(jSONObject, 1.0f, eVar, C5446b.f13577a).m25445a();
            return new C5444j(a.f13593a, (C5406d) a.f13594b);
        }
    }

    /* renamed from: h.a.a.n.k.j$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/j$b.class */
    public static class C5446b implements AbstractC5452m.AbstractC5453a<C5406d> {

        /* renamed from: a */
        public static final C5446b f13577a = new C5446b();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a
        /* renamed from: a */
        public C5406d mo25373a(Object obj, float f) {
            return C5406d.C5407a.m25494a((JSONObject) obj);
        }
    }

    public C5444j(List<C5358a<C5406d>> list, C5406d dVar) {
        super(list, dVar);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m
    /* renamed from: a */
    public C5399o mo25446a() {
        return new C5399o(this.f13595a);
    }
}
