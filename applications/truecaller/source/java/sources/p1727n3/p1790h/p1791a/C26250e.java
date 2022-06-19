package p1727n3.p1790h.p1791a;

import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p1727n3.p1790h.p1791a.AbstractC26236a;
/* renamed from: n3.h.a.e */
/* loaded from: classes-dex2jar.jar:n3/h/a/e.class */
public final class C26250e<T> implements ListenableFuture<T> {

    /* renamed from: a */
    public final WeakReference<C26247b<T>> f73173a;

    /* renamed from: b */
    public final AbstractC26236a<T> f73174b = new a(this);

    public C26250e(C26247b<T> c26247b) {
        this.f73173a = new WeakReference<>(c26247b);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        this.f73174b.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        C26247b<T> c26247b = this.f73173a.get();
        boolean cancel = this.f73174b.cancel(z);
        if (cancel && c26247b != null) {
            c26247b.f73169a = null;
            c26247b.f73170b = null;
            c26247b.f73171c.h((Object) null);
        }
        return cancel;
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        return this.f73174b.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f73174b.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f73174b.f73149a instanceof AbstractC26236a.C26239c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f73174b.isDone();
    }

    public String toString() {
        return this.f73174b.toString();
    }
}
