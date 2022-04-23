package p081h.p082a.p083a.p088n.p089k;

import java.util.List;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5384b;
import p081h.p082a.p083a.p084l.p086c.C5398n;
import p081h.p082a.p083a.p088n.C5403a;
import p081h.p082a.p083a.p088n.p089k.C5454n;
/* renamed from: h.a.a.n.k.a */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/a.class */
public class C5417a extends AbstractC5456o<Integer, Integer> {

    /* renamed from: h.a.a.n.k.a$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/a$b.class */
    public static final class C5419b {
        /* renamed from: a */
        public static C5417a m25479a(JSONObject jSONObject, C5341e eVar) {
            C5454n.C5455a a = C5454n.m25442a(jSONObject, 1.0f, eVar, C5403a.f13538a).m25445a();
            return new C5417a(a.f13593a, (Integer) a.f13594b);
        }
    }

    public C5417a(List<C5358a<Integer>> list, Integer num) {
        super(list, num);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m
    /* renamed from: a */
    public AbstractC5382a<Integer, Integer> mo25446a() {
        return !m25438c() ? new C5398n(this.f13596b) : new C5384b(this.f13595a);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5456o
    public String toString() {
        return "AnimatableColorValue{initialValue=" + this.f13596b + '}';
    }
}
