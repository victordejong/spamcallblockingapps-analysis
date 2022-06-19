package p220r4;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import p291y.C4951d;
/* renamed from: r4.d */
/* loaded from: classes-dex2jar.jar:r4/d.class */
public final class C4195d {
    /* renamed from: a */
    public static <ResultT> ResultT m1299a(C4206o c4206o) throws ExecutionException, InterruptedException {
        boolean z;
        C4951d.m187p(c4206o, "Task must not be null");
        synchronized (c4206o.f13198a) {
            z = c4206o.f13200c;
        }
        if (z) {
            return (ResultT) m1298b(c4206o);
        }
        C4207p c4207p = new C4207p();
        Executor executor = C4194c.f13179b;
        c4206o.m1292a(executor, c4207p);
        c4206o.f13199b.m1296a(new C4198g(executor, c4207p));
        c4206o.m1287f();
        c4207p.f13203a.await();
        return (ResultT) m1298b(c4206o);
    }

    /* renamed from: b */
    public static Object m1298b(C4206o c4206o) throws ExecutionException {
        Exception exc;
        if (c4206o.m1290c()) {
            return c4206o.m1291b();
        }
        synchronized (c4206o.f13198a) {
            exc = c4206o.f13202e;
        }
        throw new ExecutionException(exc);
    }
}
