package p193e.p1482g.p1483a;

import java.security.AccessController;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.g.a.q */
/* loaded from: classes-dex2jar.jar:e/g/a/q.class */
public final class C22662q implements AbstractC22658n {

    /* renamed from: b */
    public static final C22662q f62718b = new C22662q();

    /* renamed from: a */
    public final AtomicLong f62719a;

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    public C22662q() {
        if (C22648j.f62697a == null) {
            try {
                C22648j.f62697a = (String) AccessController.doPrivileged(new C22647i());
            } catch (SecurityException e) {
                C22648j.f62697a = C22648j.f62698b;
                Logger.getLogger(C22648j.class.getName()).log(Level.INFO, "Failed to read 'tests.seed' property for initial random seed.", (Throwable) e);
            }
        }
        String str = C22648j.f62697a;
        this.f62719a = new AtomicLong(C26232y.m2336k1(str != C22648j.f62698b ? str.hashCode() : System.nanoTime() ^ System.identityHashCode(new Object())));
    }

    @Override // p193e.p1482g.p1483a.AbstractC22658n
    /* renamed from: clone */
    public AbstractC22658n mo49518clone() {
        return this;
    }

    @Override // p193e.p1482g.p1483a.AbstractC22658n
    /* renamed from: clone */
    public Object mo49518clone() throws CloneNotSupportedException {
        return this;
    }

    @Override // p193e.p1482g.p1483a.AbstractC22658n
    /* renamed from: d */
    public int mo7983d(int i) {
        return (int) C26232y.m2336k1(this.f62719a.incrementAndGet());
    }
}
