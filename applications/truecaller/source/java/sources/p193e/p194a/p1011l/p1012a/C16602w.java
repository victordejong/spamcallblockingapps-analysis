package p193e.p194a.p1011l.p1012a;

import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.l.a.w */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/w.class */
public final class C16602w {

    /* renamed from: a */
    public final AbstractC16832c2 f46635a;

    /* renamed from: b */
    public final AbstractC17197v0 f46636b;

    @Inject
    public C16602w(AbstractC16832c2 abstractC16832c2, AbstractC17197v0 abstractC17197v0) {
        l.e(abstractC16832c2, "premiumSettings");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f46635a = abstractC16832c2;
        this.f46636b = abstractC17197v0;
    }

    /* renamed from: a */
    public final boolean m17199a() {
        return !this.f46636b.mo16408H() && this.f46635a.mo16904U() && new b(this.f46635a.mo16883i2()).D(3).i(new b());
    }
}
