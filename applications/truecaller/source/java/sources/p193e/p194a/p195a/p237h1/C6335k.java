package p193e.p194a.p195a.p237h1;

import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p712e4.AbstractC13497p;
import q3.a.p1;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.h1.k */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/k.class */
public final class C6335k implements AbstractC6330i {

    /* renamed from: a */
    public p1 f21160a;

    /* renamed from: b */
    public final C20592g f21161b;

    /* renamed from: c */
    public final a<AbstractC8621z> f21162c;

    /* renamed from: d */
    public final a<AbstractC5854d> f21163d;

    /* renamed from: e */
    public final a<AbstractC13497p> f21164e;

    /* renamed from: f */
    public final a<AbstractC6248w> f21165f;

    /* renamed from: g */
    public final a<AbstractC6708t> f21166g;

    /* renamed from: h */
    public final AbstractC19223c0 f21167h;

    /* renamed from: i */
    public final f f21168i;

    /* renamed from: j */
    public final f f21169j;

    @Inject
    public C6335k(C20592g c20592g, a<AbstractC8621z> aVar, a<AbstractC5854d> aVar2, a<AbstractC13497p> aVar3, a<AbstractC6248w> aVar4, a<AbstractC6708t> aVar5, AbstractC19223c0 abstractC19223c0, @Named("IO") f fVar, @Named("UI") f fVar2) {
        l.e(c20592g, "featuresRegistry");
        l.e(aVar, "phoneNumberHelper");
        l.e(aVar2, "draftSender");
        l.e(aVar3, "multiSimManager");
        l.e(aVar4, "readMessageStorage");
        l.e(aVar5, "transportManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        this.f21161b = c20592g;
        this.f21162c = aVar;
        this.f21163d = aVar2;
        this.f21164e = aVar3;
        this.f21165f = aVar4;
        this.f21166g = aVar5;
        this.f21167h = abstractC19223c0;
        this.f21168i = fVar;
        this.f21169j = fVar2;
    }
}
