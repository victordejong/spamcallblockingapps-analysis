package p081h.p082a.p083a.p088n.p089k;

import android.graphics.PointF;
import java.util.List;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5394j;
import p081h.p082a.p083a.p084l.p086c.C5398n;
import p081h.p082a.p083a.p088n.C5414i;
import p081h.p082a.p083a.p088n.p089k.C5454n;
/* renamed from: h.a.a.n.k.f */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/f.class */
public class C5434f extends AbstractC5456o<PointF, PointF> {

    /* renamed from: h.a.a.n.k.f$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/f$b.class */
    public static final class C5436b {
        /* renamed from: a */
        public static C5434f m25465a(JSONObject jSONObject, C5341e eVar) {
            C5454n.C5455a a = C5454n.m25442a(jSONObject, eVar.m25643c(), eVar, C5414i.f13564a).m25445a();
            return new C5434f(a.f13593a, (PointF) a.f13594b);
        }
    }

    public C5434f(List<C5358a<PointF>> list, PointF pointF) {
        super(list, pointF);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m
    /* renamed from: a */
    public AbstractC5382a<PointF, PointF> mo25446a() {
        return !m25438c() ? new C5398n(this.f13596b) : new C5394j(this.f13595a);
    }
}
