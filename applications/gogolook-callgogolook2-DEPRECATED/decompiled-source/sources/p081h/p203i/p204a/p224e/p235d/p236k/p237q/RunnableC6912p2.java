package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import java.util.concurrent.locks.Lock;
/* renamed from: h.i.a.e.d.k.q.p2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/p2.class */
public final class RunnableC6912p2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C6908o2 f16940a;

    public RunnableC6912p2(C6908o2 o2Var) {
        this.f16940a = o2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        Lock lock2;
        lock = this.f16940a.f16927m;
        lock.lock();
        try {
            this.f16940a.m21604f();
        } finally {
            lock2 = this.f16940a.f16927m;
            lock2.unlock();
        }
    }
}
