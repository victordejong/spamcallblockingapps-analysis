package p081h.p203i.p325c.p327b0.p328p;

import java.util.concurrent.Callable;
/* renamed from: h.i.c.b0.p.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/a.class */
public final /* synthetic */ class CallableC9412a implements Callable {

    /* renamed from: a */
    public final C9416e f21469a;

    /* renamed from: b */
    public final C9419f f21470b;

    public CallableC9412a(C9416e eVar, C9419f fVar) {
        this.f21469a = eVar;
        this.f21470b = fVar;
    }

    /* renamed from: a */
    public static Callable m15273a(C9416e eVar, C9419f fVar) {
        return new CallableC9412a(eVar, fVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        Void a;
        a = this.f21469a.f21479b.m15188a(this.f21470b);
        return a;
    }
}
