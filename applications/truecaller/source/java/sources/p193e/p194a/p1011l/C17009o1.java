package p193e.p194a.p1011l;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1012a.C16605z;
import p193e.p194a.p1313v3.p1314c.AbstractC21012a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.l.o1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/o1.class */
public final class C17009o1 {

    /* renamed from: a */
    public final C16605z f47712a;

    /* renamed from: b */
    public final AbstractC8541a f47713b;

    /* renamed from: c */
    public final AbstractC21012a f47714c;

    /* renamed from: d */
    public final f f47715d;

    @Inject
    public C17009o1(C16605z c16605z, AbstractC8541a abstractC8541a, AbstractC21012a abstractC21012a, @Named("IO") f fVar) {
        l.e(c16605z, "premiumReporter");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC21012a, "feedbackNetworkHelper");
        l.e(fVar, "asyncContext");
        this.f47712a = c16605z;
        this.f47713b = abstractC8541a;
        this.f47714c = abstractC21012a;
        this.f47715d = fVar;
    }
}
