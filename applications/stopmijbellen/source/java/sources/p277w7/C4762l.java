package p277w7;

import android.os.Looper;
import java.util.Objects;
import p148k7.C3343h;
import p170m7.AbstractC3656d;
import p181n7.C3759h;
import p277w7.C4766p;
/* renamed from: w7.l */
/* loaded from: classes2-dex2jar.jar:w7/l.class */
public class C4762l implements AbstractC3656d<C3759h> {

    /* renamed from: a */
    public final /* synthetic */ C4766p.C4767a f14658a;

    /* renamed from: b */
    public final /* synthetic */ C4766p f14659b;

    public C4762l(C4766p c4766p, C4766p.C4767a c4767a) {
        this.f14659b = c4766p;
        this.f14658a = c4767a;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, C3759h c3759h) {
        C3759h c3759h2 = c3759h;
        if (exc != null) {
            this.f14658a.m1914p(exc, null, null);
            return;
        }
        Objects.requireNonNull(this.f14658a);
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            C3343h.m2358h(C4749e.f14630i, new RunnableC4761k(this, c3759h2));
        } else {
            this.f14659b.m493i(c3759h2, this.f14658a);
        }
    }
}
