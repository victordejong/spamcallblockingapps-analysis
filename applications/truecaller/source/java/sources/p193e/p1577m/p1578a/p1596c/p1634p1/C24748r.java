package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.content.Context;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l;
/* renamed from: e.m.a.c.p1.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/r.class */
public final class C24748r implements AbstractC24739l.AbstractC24740a {

    /* renamed from: a */
    public final Context f69382a;

    /* renamed from: b */
    public final AbstractC24697f0 f69383b;

    /* renamed from: c */
    public final AbstractC24739l.AbstractC24740a f69384c;

    public C24748r(Context context, String str, AbstractC24697f0 abstractC24697f0) {
        C24750t c24750t = new C24750t(str, abstractC24697f0);
        this.f69382a = context.getApplicationContext();
        this.f69383b = abstractC24697f0;
        this.f69384c = c24750t;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l.AbstractC24740a
    /* renamed from: a */
    public AbstractC24739l mo4656a() {
        C24747q c24747q = new C24747q(this.f69382a, this.f69384c.mo4656a());
        AbstractC24697f0 abstractC24697f0 = this.f69383b;
        if (abstractC24697f0 != null) {
            c24747q.mo4669c(abstractC24697f0);
        }
        return c24747q;
    }
}
