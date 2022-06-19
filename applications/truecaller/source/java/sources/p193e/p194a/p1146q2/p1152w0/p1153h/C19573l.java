package p193e.p194a.p1146q2.p1152w0.p1153h;

import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p717f.p733y.C13794x;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.q2.w0.h.l */
/* loaded from: classes5-dex2jar.jar:e/a/q2/w0/h/l.class */
public final class C19573l implements AbstractC19572k {

    /* renamed from: a */
    public final f f54398a;

    /* renamed from: b */
    public final AbstractC19222c f54399b;

    /* renamed from: c */
    public final AbstractC19569h f54400c;

    /* renamed from: d */
    public final a<AbstractC19563b> f54401d;

    @Inject
    public C19573l(@Named("IO") f fVar, AbstractC19222c abstractC19222c, AbstractC19569h abstractC19569h, a<AbstractC19563b> aVar) {
        l.e(fVar, "asyncContext");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19569h, "initPointProvider");
        l.e(aVar, "contactHelper");
        this.f54398a = fVar;
        this.f54399b = abstractC19222c;
        this.f54400c = abstractC19569h;
        this.f54401d = aVar;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19572k
    /* renamed from: a */
    public AbstractC19571j mo13153a(C13794x c13794x) {
        l.e(c13794x, "phoneCall");
        return new C19574m(this.f54398a, c13794x, this.f54399b, this.f54400c, this.f54401d);
    }
}
