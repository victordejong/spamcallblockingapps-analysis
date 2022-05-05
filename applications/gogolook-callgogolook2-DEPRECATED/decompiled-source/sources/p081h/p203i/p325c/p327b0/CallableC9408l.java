package p081h.p203i.p325c.p327b0;

import java.util.concurrent.Callable;
/* renamed from: h.i.c.b0.l */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/l.class */
public final /* synthetic */ class CallableC9408l implements Callable {

    /* renamed from: a */
    public final C9410n f21455a;

    public CallableC9408l(C9410n nVar) {
        this.f21455a = nVar;
    }

    /* renamed from: a */
    public static Callable m15288a(C9410n nVar) {
        return new CallableC9408l(nVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.f21455a.m15285a();
    }
}
