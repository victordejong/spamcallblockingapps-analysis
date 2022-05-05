package p081h.p082a.p083a.p088n.p089k;

import android.graphics.Path;
import java.util.List;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5396l;
import p081h.p082a.p083a.p084l.p086c.C5398n;
import p081h.p082a.p083a.p088n.p089k.C5454n;
import p081h.p082a.p083a.p088n.p090l.C5486l;
import p081h.p082a.p083a.p092o.C5529e;
/* renamed from: h.a.a.n.k.h */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/h.class */
public class C5440h extends AbstractC5456o<C5486l, Path> {

    /* renamed from: c */
    public final Path f13574c;

    /* renamed from: h.a.a.n.k.h$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/h$b.class */
    public static final class C5442b {
        /* renamed from: a */
        public static C5440h m25461a(JSONObject jSONObject, C5341e eVar) {
            C5454n.C5455a a = C5454n.m25442a(jSONObject, eVar.m25643c(), eVar, C5486l.C5488b.f13663a).m25445a();
            return new C5440h(a.f13593a, (C5486l) a.f13594b);
        }
    }

    public C5440h(List<C5358a<C5486l>> list, C5486l lVar) {
        super(list, lVar);
        this.f13574c = new Path();
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Path mo25440a(C5486l lVar) {
        this.f13574c.reset();
        C5529e.m25257a(lVar, this.f13574c);
        return this.f13574c;
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m
    /* renamed from: a */
    public AbstractC5382a<C5486l, Path> mo25446a() {
        return !m25438c() ? new C5398n(mo25440a((C5486l) this.f13596b)) : new C5396l(this.f13595a);
    }
}
