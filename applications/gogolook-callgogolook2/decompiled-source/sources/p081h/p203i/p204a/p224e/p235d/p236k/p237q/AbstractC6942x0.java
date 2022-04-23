package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import java.util.concurrent.locks.Lock;
/* renamed from: h.i.a.e.d.k.q.x0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/x0.class */
public abstract class AbstractC6942x0 {

    /* renamed from: a */
    public final AbstractC6934v0 f17021a;

    public AbstractC6942x0(AbstractC6934v0 v0Var) {
        this.f17021a = v0Var;
    }

    /* renamed from: a */
    public abstract void mo21471a();

    /* renamed from: a */
    public final void m21490a(C6938w0 w0Var) {
        Lock lock;
        Lock lock2;
        AbstractC6934v0 v0Var;
        lock = w0Var.f16997a;
        lock.lock();
        try {
            v0Var = w0Var.f17007k;
            if (v0Var == this.f17021a) {
                mo21471a();
            }
        } finally {
            lock2 = w0Var.f16997a;
            lock2.unlock();
        }
    }
}
