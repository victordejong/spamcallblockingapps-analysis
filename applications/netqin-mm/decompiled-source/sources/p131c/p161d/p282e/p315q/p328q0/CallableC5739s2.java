package p131c.p161d.p282e.p315q.p328q0;

import java.util.concurrent.Callable;
import p131c.p161d.p367h.AbstractC6275a;
/* renamed from: c.d.e.q.q0.s2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s2.class */
public final /* synthetic */ class CallableC5739s2 implements Callable {

    /* renamed from: a */
    public final C5819u2 f18914a;

    /* renamed from: b */
    public final AbstractC6275a f18915b;

    public CallableC5739s2(C5819u2 u2Var, AbstractC6275a aVar) {
        this.f18914a = u2Var;
        this.f18915b = aVar;
    }

    /* renamed from: a */
    public static Callable m23106a(C5819u2 u2Var, AbstractC6275a aVar) {
        return new CallableC5739s2(u2Var, aVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        C5819u2 u2Var = this.f18914a;
        AbstractC6275a aVar = this.f18915b;
        C5819u2.m22971a(u2Var, aVar);
        return aVar;
    }
}
