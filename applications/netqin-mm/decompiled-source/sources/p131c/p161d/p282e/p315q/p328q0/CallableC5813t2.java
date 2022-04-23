package p131c.p161d.p282e.p315q.p328q0;

import java.util.concurrent.Callable;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.e.q.q0.t2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/t2.class */
public final /* synthetic */ class CallableC5813t2 implements Callable {

    /* renamed from: a */
    public final C5819u2 f19071a;

    /* renamed from: b */
    public final AbstractC6376v0 f19072b;

    public CallableC5813t2(C5819u2 u2Var, AbstractC6376v0 v0Var) {
        this.f19071a = u2Var;
        this.f19072b = v0Var;
    }

    /* renamed from: a */
    public static Callable m22977a(C5819u2 u2Var, AbstractC6376v0 v0Var) {
        return new CallableC5813t2(u2Var, v0Var);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return C5819u2.m22970a(this.f19071a, this.f19072b);
    }
}
