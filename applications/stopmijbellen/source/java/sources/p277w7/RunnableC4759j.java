package p277w7;

import android.content.Context;
import java.util.Iterator;
import p170m7.AbstractC3656d;
import p170m7.C3661g;
import p181n7.C3759h;
import p277w7.AbstractC4744c;
/* renamed from: w7.j */
/* loaded from: classes2-dex2jar.jar:w7/j.class */
public class RunnableC4759j implements Runnable {

    /* renamed from: a */
    public C3759h f14651a;

    /* renamed from: b */
    public Runnable f14652b = this;

    /* renamed from: c */
    public final /* synthetic */ C3661g f14653c;

    /* renamed from: d */
    public final /* synthetic */ C4766p f14654d;

    /* renamed from: w7.j$a */
    /* loaded from: classes2-dex2jar.jar:w7/j$a.class */
    public class C4760a implements AbstractC3656d<C3759h> {
        public C4760a() {
            RunnableC4759j.this = r4;
        }

        @Override // p170m7.AbstractC3656d
        /* renamed from: a */
        public void mo99a(Exception exc, C3759h c3759h) {
            C3759h c3759h2 = c3759h;
            if (exc != null) {
                RunnableC4759j.this.f14653c.m1914p(exc, null, null);
                return;
            }
            RunnableC4759j runnableC4759j = RunnableC4759j.this;
            runnableC4759j.f14651a = c3759h2;
            runnableC4759j.f14652b.run();
        }
    }

    public RunnableC4759j(C4766p c4766p, C3759h c3759h, C3661g c3661g) {
        this.f14654d = c4766p;
        this.f14653c = c3661g;
        this.f14651a = c3759h;
    }

    @Override // java.lang.Runnable
    public void run() {
        C3661g c3661g;
        C4766p c4766p = this.f14654d;
        C3759h c3759h = this.f14651a;
        Iterator<AbstractC4768q> it2 = c4766p.f14666a.f14638c.iterator();
        while (true) {
            if (!it2.hasNext()) {
                c3661g = null;
                break;
            }
            c3661g = it2.next().mo486b((Context) ((AbstractC4744c.AbstractC4746b) c4766p.f14667b).get(), c4766p.f14666a, c3759h);
            if (c3661g != null) {
                break;
            }
        }
        if (c3661g == null) {
            this.f14653c.m1913q(this.f14651a);
            return;
        }
        c3661g.m1919k(new C4760a());
    }
}
