package p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.j1.t1.c.e */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/e.class */
public class C26031e<V> implements ListenableFuture<V> {

    /* renamed from: a */
    public final ListenableFuture<V> f72694a;

    /* renamed from: b */
    public C26247b<V> f72695b;

    /* renamed from: n3.e.b.j1.t1.c.e$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/e$a.class */
    public class C26032a implements AbstractC26249d<V> {
        public C26032a() {
            C26031e.this = r4;
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26249d
        /* renamed from: a */
        public Object mo2255a(C26247b<V> c26247b) {
            MediaSessionCompat.m43187x(C26031e.this.f72695b == null, "The result can only set once!");
            C26031e.this.f72695b = c26247b;
            StringBuilder m8728C = C22128a.m8728C("FutureChain[");
            m8728C.append(C26031e.this);
            m8728C.append("]");
            return m8728C.toString();
        }
    }

    public C26031e() {
        this.f72694a = MediaSessionCompat.m43231i0(new C26032a());
    }

    public C26031e(ListenableFuture<V> listenableFuture) {
        Objects.requireNonNull(listenableFuture);
        this.f72694a = listenableFuture;
    }

    /* renamed from: a */
    public static <V> C26031e<V> m2786a(ListenableFuture<V> listenableFuture) {
        return listenableFuture instanceof C26031e ? (C26031e) listenableFuture : new C26031e<>(listenableFuture);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        this.f72694a.addListener(runnable, executor);
    }

    /* renamed from: b */
    public boolean m2785b(Throwable th) {
        C26247b<V> c26247b = this.f72695b;
        if (c26247b != null) {
            return c26247b.m2256c(th);
        }
        return false;
    }

    /* renamed from: c */
    public final <T> C26031e<T> m2784c(AbstractC26029b<? super V, T> abstractC26029b, Executor executor) {
        c cVar = new c(abstractC26029b, this);
        this.f72694a.addListener(cVar, executor);
        return cVar;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f72694a.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() throws InterruptedException, ExecutionException {
        return this.f72694a.get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f72694a.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f72694a.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f72694a.isDone();
    }
}
