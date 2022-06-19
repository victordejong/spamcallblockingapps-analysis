package p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1790h.p1791a.C26250e;
/* renamed from: n3.e.b.j1.t1.c.i */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/i.class */
public class C26040i<V> implements ListenableFuture<List<V>> {

    /* renamed from: a */
    public List<? extends ListenableFuture<? extends V>> f72704a;

    /* renamed from: b */
    public List<V> f72705b;

    /* renamed from: c */
    public final boolean f72706c;

    /* renamed from: d */
    public final AtomicInteger f72707d;

    /* renamed from: e */
    public final ListenableFuture<List<V>> f72708e;

    /* renamed from: f */
    public C26247b<List<V>> f72709f;

    /* renamed from: n3.e.b.j1.t1.c.i$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/i$a.class */
    public class C26041a implements AbstractC26249d<List<V>> {
        public C26041a() {
            C26040i.this = r4;
        }

        @Override // p1727n3.p1790h.p1791a.AbstractC26249d
        /* renamed from: a */
        public Object mo2255a(C26247b<List<V>> c26247b) {
            MediaSessionCompat.m43187x(C26040i.this.f72709f == null, "The result can only set once!");
            C26040i.this.f72709f = c26247b;
            return "ListFuture[" + this + "]";
        }
    }

    public C26040i(List<? extends ListenableFuture<? extends V>> list, boolean z, Executor executor) {
        this.f72704a = list;
        this.f72705b = new ArrayList(list.size());
        this.f72706c = z;
        this.f72707d = new AtomicInteger(list.size());
        ListenableFuture<List<V>> m43231i0 = MediaSessionCompat.m43231i0(new C26041a());
        this.f72708e = m43231i0;
        ((C26250e) m43231i0).f73174b.addListener(new RunnableC26042j(this), MediaSessionCompat.m43268U());
        if (this.f72704a.isEmpty()) {
            this.f72709f.m2258a(new ArrayList(this.f72705b));
            return;
        }
        for (int i = 0; i < this.f72704a.size(); i++) {
            this.f72705b.add(null);
        }
        List<? extends ListenableFuture<? extends V>> list2 = this.f72704a;
        for (int i2 = 0; i2 < list2.size(); i2++) {
            ListenableFuture<? extends V> listenableFuture = list2.get(i2);
            listenableFuture.addListener(new RunnableC26043k(this, i2, listenableFuture), executor);
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        this.f72708e.addListener(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        List<? extends ListenableFuture<? extends V>> list = this.f72704a;
        if (list != null) {
            for (ListenableFuture<? extends V> listenableFuture : list) {
                listenableFuture.cancel(z);
            }
        }
        return this.f72708e.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public Object get() throws ExecutionException, InterruptedException {
        List<? extends ListenableFuture<? extends V>> list = this.f72704a;
        if (list != null && !isDone()) {
            loop0: for (ListenableFuture<? extends V> listenableFuture : list) {
                while (!listenableFuture.isDone()) {
                    try {
                        listenableFuture.get();
                    } catch (Error e) {
                        throw e;
                    } catch (InterruptedException e2) {
                        throw e2;
                    } catch (Throwable th) {
                        if (this.f72706c) {
                            break loop0;
                        }
                    }
                }
            }
        }
        return this.f72708e.get();
    }

    @Override // java.util.concurrent.Future
    public Object get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.f72708e.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f72708e.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f72708e.isDone();
    }
}
