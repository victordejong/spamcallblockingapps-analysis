package p083e8;

import java.io.File;
import java.net.URI;
import p148k7.AbstractC3360m;
import p148k7.C3365q;
import p170m7.AbstractC3656d;
import p170m7.AbstractFutureC3655c;
import p170m7.C3661g;
import p181n7.C3759h;
import p277w7.AbstractC4768q;
import p277w7.C4749e;
/* renamed from: e8.e */
/* loaded from: classes2-dex2jar.jar:e8/e.class */
public class C2612e extends C2624l {

    /* renamed from: e8.e$a */
    /* loaded from: classes2-dex2jar.jar:e8/e$a.class */
    public class RunnableC2613a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C3759h f9046a;

        /* renamed from: b */
        public final /* synthetic */ C4749e f9047b;

        /* renamed from: c */
        public final /* synthetic */ C2614b f9048c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC3656d f9049d;

        public RunnableC2613a(C2612e c2612e, C3759h c3759h, C4749e c4749e, C2614b c2614b, AbstractC3656d abstractC3656d) {
            this.f9046a = c3759h;
            this.f9047b = c4749e;
            this.f9048c = c2614b;
            this.f9049d = abstractC3656d;
        }

        @Override // java.lang.Runnable
        public void run() {
            File file = new File(URI.create(this.f9046a.f12186c.toString()));
            C3365q c3365q = new C3365q(this.f9047b.f14636a.f12125d, file);
            this.f9048c.m1914p(null, c3365q, null);
            this.f9049d.mo99a(null, new AbstractC4768q.C4769a(c3365q, (int) file.length(), 2, null, this.f9046a));
        }
    }

    /* renamed from: e8.e$b */
    /* loaded from: classes2-dex2jar.jar:e8/e$b.class */
    public static final class C2614b extends C3661g<AbstractC3360m> {
        public C2614b(RunnableC2611d runnableC2611d) {
        }
    }

    @Override // p083e8.C2623k, p277w7.AbstractC4768q
    /* renamed from: c */
    public AbstractFutureC3655c<AbstractC3360m> mo485c(C4749e c4749e, C3759h c3759h, AbstractC3656d<AbstractC4768q.C4769a> abstractC3656d) {
        if (c3759h.f12186c.getScheme() == null || !c3759h.f12186c.getScheme().startsWith("file")) {
            return null;
        }
        C2614b c2614b = new C2614b(null);
        c4749e.f14636a.f12125d.m2357i(new RunnableC2613a(this, c3759h, c4749e, c2614b, abstractC3656d), 0L);
        return c2614b;
    }
}
