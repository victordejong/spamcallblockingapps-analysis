package p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.b.j1.t1.c.c$a */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/c$a.class */
public class c$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ListenableFuture f72692a;

    /* renamed from: b */
    public final /* synthetic */ c f72693b;

    public c$a(c cVar, ListenableFuture listenableFuture) {
        this.f72693b = cVar;
        this.f72692a = listenableFuture;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                c cVar = this.f72693b;
                Object m2782b = C26034g.m2782b(this.f72692a);
                C26247b<V> c26247b = cVar.f72695b;
                if (c26247b != 0) {
                    c26247b.m2258a(m2782b);
                }
            } catch (CancellationException e) {
                this.f72693b.cancel(false);
                this.f72693b.g = null;
                return;
            } catch (ExecutionException e2) {
                this.f72693b.m2785b(e2.getCause());
            }
            this.f72693b.g = null;
        } catch (Throwable th) {
            this.f72693b.g = null;
            throw th;
        }
    }
}
