package p193e.p194a.p1011l.p1013c.p1014a;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1193r5.AbstractC19954i0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.f3 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/f3.class */
public final class C16667f3 {

    /* renamed from: a */
    public final AbstractC19954i0 f46796a;

    /* renamed from: b */
    public final AbstractC17197v0 f46797b;

    /* renamed from: c */
    public final AbstractC19223c0 f46798c;

    /* renamed from: d */
    public final f f46799d;

    @Inject
    public C16667f3(AbstractC19954i0 abstractC19954i0, AbstractC17197v0 abstractC17197v0, AbstractC19223c0 abstractC19223c0, @Named("IO") f fVar) {
        l.e(abstractC19954i0, "whoViewedMeManager");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(fVar, "asyncContext");
        this.f46796a = abstractC19954i0;
        this.f46797b = abstractC17197v0;
        this.f46798c = abstractC19223c0;
        this.f46799d = fVar;
    }

    /* renamed from: a */
    public final boolean m17140a() {
        return this.f46796a.mo11761b();
    }
}
