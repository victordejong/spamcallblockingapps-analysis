package p081h.p203i.p325c.p327b0;

import java.util.concurrent.Callable;
/* renamed from: h.i.c.b0.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/d.class */
public final /* synthetic */ class CallableC9398d implements Callable {

    /* renamed from: a */
    public final C9400f f21438a;

    /* renamed from: b */
    public final C9405k f21439b;

    public CallableC9398d(C9400f fVar, C9405k kVar) {
        this.f21438a = fVar;
        this.f21439b = kVar;
    }

    /* renamed from: a */
    public static Callable m15317a(C9400f fVar, C9405k kVar) {
        return new CallableC9398d(fVar, kVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.f21438a.f21449i.m15201a(this.f21439b);
    }
}
