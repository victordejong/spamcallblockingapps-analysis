package p083e8;

import java.util.Objects;
import p148k7.AbstractC3360m;
import p170m7.AbstractC3656d;
import p170m7.AbstractFutureC3655c;
import p181n7.C3732a;
import p181n7.C3759h;
import p212q7.AbstractC4165a;
import p277w7.AbstractC4768q;
import p277w7.C4749e;
/* renamed from: e8.f */
/* loaded from: classes2-dex2jar.jar:e8/f.class */
public class C2615f extends C2623k {

    /* renamed from: e8.f$a */
    /* loaded from: classes2-dex2jar.jar:e8/f$a.class */
    public class C2616a implements AbstractC4165a {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3656d f9050a;

        public C2616a(C2615f c2615f, AbstractC3656d abstractC3656d) {
            this.f9050a = abstractC3656d;
        }
    }

    @Override // p083e8.C2623k, p277w7.AbstractC4768q
    /* renamed from: c */
    public AbstractFutureC3655c<AbstractC3360m> mo485c(C4749e c4749e, C3759h c3759h, AbstractC3656d<AbstractC4768q.C4769a> abstractC3656d) {
        if (c3759h.f12186c.getScheme() == null || !c3759h.f12186c.getScheme().startsWith("http")) {
            return null;
        }
        C3732a c3732a = c4749e.f14636a;
        C2616a c2616a = new C2616a(this, abstractC3656d);
        Objects.requireNonNull(c3732a);
        C3732a.C3736d c3736d = new C3732a.C3736d(c3732a, null);
        c3732a.m1833c(c3759h, 0, c3736d, c2616a);
        return c3736d;
    }
}
