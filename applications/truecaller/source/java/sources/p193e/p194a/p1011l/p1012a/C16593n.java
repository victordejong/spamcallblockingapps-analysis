package p193e.p194a.p1011l.p1012a;

import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p613c0.C10912h;
import s1.z.c.l;
/* renamed from: e.a.l.a.n */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/n.class */
public final class C16593n {

    /* renamed from: a */
    public final C10912h f46620a;

    /* renamed from: b */
    public final AbstractC19223c0 f46621b;

    /* renamed from: c */
    public final AbstractC16832c2 f46622c;

    /* renamed from: d */
    public final AbstractC19494d f46623d;

    @Inject
    public C16593n(C10912h c10912h, AbstractC19223c0 abstractC19223c0, AbstractC16832c2 abstractC16832c2, AbstractC19494d abstractC19494d) {
        l.e(c10912h, "experimentRegistry");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(abstractC19494d, "firebaseAnalytics");
        this.f46620a = c10912h;
        this.f46621b = abstractC19223c0;
        this.f46622c = abstractC16832c2;
        this.f46623d = abstractC19494d;
    }
}
