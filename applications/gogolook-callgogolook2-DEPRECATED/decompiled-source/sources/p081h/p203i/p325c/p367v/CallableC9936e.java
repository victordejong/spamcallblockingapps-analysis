package p081h.p203i.p325c.p367v;

import java.util.concurrent.Callable;
/* renamed from: h.i.c.v.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/e.class */
public final /* synthetic */ class CallableC9936e implements Callable {

    /* renamed from: a */
    public final C9938g f22479a;

    public CallableC9936e(C9938g gVar) {
        this.f22479a = gVar;
    }

    /* renamed from: a */
    public static Callable m13926a(C9938g gVar) {
        return new CallableC9936e(gVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        Void d;
        d = this.f22479a.m13909d();
        return d;
    }
}
