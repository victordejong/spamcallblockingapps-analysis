package p193e.p194a.p1011l.p1025p2;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p997k3.p998j.AbstractC16480g;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.l.p2.k */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/k.class */
public final class C17119k {

    /* renamed from: a */
    public final String f48052a = ",";

    /* renamed from: b */
    public final AbstractC16480g f48053b;

    /* renamed from: c */
    public final AbstractC16832c2 f48054c;

    /* renamed from: d */
    public final f f48055d;

    @Inject
    public C17119k(AbstractC16480g abstractC16480g, AbstractC16832c2 abstractC16832c2, @Named("IO") f fVar) {
        l.e(abstractC16480g, "localContactSearcher");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(fVar, "asyncContext");
        this.f48053b = abstractC16480g;
        this.f48054c = abstractC16832c2;
        this.f48055d = fVar;
    }
}
