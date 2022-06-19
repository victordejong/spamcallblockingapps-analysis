package p193e.p194a.p1341w3;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.w3.h */
/* loaded from: classes9-dex2jar.jar:e/a/w3/h.class */
public final class C21198h implements AbstractC21195f {

    /* renamed from: a */
    public final AbstractC21631b f59390a;

    /* renamed from: b */
    public final f f59391b;

    /* renamed from: c */
    public final f f59392c;

    @Inject
    public C21198h(AbstractC21631b abstractC21631b, @Named("Async") f fVar, @Named("UI") f fVar2) {
        l.e(abstractC21631b, "flashManager");
        l.e(fVar, "asyncContext");
        l.e(fVar2, "parentContext");
        this.f59390a = abstractC21631b;
        this.f59391b = fVar;
        this.f59392c = fVar2;
    }
}
