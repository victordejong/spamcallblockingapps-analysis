package p193e.p194a.p1275v.p1276a;

import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1275v.p1309p.AbstractC20938l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.details_view.ui.DetailsPresenter$onRefreshRequested$1", f = "DetailsPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.v.a.n */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/n.class */
public final class C20801n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C20826q f58456e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20801n(C20826q c20826q, d dVar) {
        super(2, dVar);
        this.f58456e = c20826q;
    }

    /* renamed from: i */
    public final d<s> m10685i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20801n(this.f58456e, dVar);
    }

    /* renamed from: k */
    public final Object m10684k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C20826q c20826q = this.f58456e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        Integer num = c20826q.f58507e;
        Objects.requireNonNull(num, "Search type is null");
        c20826q.f58522t.mo10488a(num.intValue(), C20826q.m10653Ij(c20826q), true);
        AbstractC20758g abstractC20758g = (AbstractC20758g) c20826q.f57683a;
        if (abstractC20758g != null) {
            abstractC20758g.mo10753E();
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m10683s(Object obj) {
        C25225a.m3932a3(obj);
        Integer num = this.f58456e.f58507e;
        Objects.requireNonNull(num, "Search type is null");
        int intValue = num.intValue();
        C20826q c20826q = this.f58456e;
        AbstractC20938l abstractC20938l = c20826q.f58522t;
        C20847s c20847s = c20826q.f58506d;
        if (c20847s == null) {
            l.l("detailsViewModel");
            throw null;
        }
        abstractC20938l.mo10488a(intValue, c20847s, true);
        AbstractC20758g abstractC20758g = (AbstractC20758g) this.f58456e.f57683a;
        if (abstractC20758g != null) {
            abstractC20758g.mo10753E();
        }
        return s.a;
    }
}
