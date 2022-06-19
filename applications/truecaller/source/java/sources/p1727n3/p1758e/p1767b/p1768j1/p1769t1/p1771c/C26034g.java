package p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import n3.h.a.f;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26039h;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.b.j1.t1.c.g */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/g.class */
public final class C26034g {

    /* renamed from: a */
    public static final AbstractC25640a<?, ?> f72698a = new C26035a();

    /* renamed from: n3.e.b.j1.t1.c.g$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/g$a.class */
    public class C26035a implements AbstractC25640a<Object, Object> {
        @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
        public Object apply(Object obj) {
            return obj;
        }
    }

    /* renamed from: n3.e.b.j1.t1.c.g$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/g$b.class */
    public class C26036b implements AbstractC26030d<I> {

        /* renamed from: a */
        public final /* synthetic */ C26247b f72699a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC25640a f72700b;

        public C26036b(C26247b c26247b, AbstractC25640a abstractC25640a) {
            this.f72699a = c26247b;
            this.f72700b = abstractC25640a;
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        /* renamed from: a */
        public void mo2689a(Throwable th) {
            this.f72699a.m2256c(th);
        }

        @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26030d
        public void onSuccess(I i) {
            try {
                this.f72699a.m2258a(this.f72700b.apply(i));
            } catch (Throwable th) {
                this.f72699a.m2256c(th);
            }
        }
    }

    /* renamed from: n3.e.b.j1.t1.c.g$c */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/g$c.class */
    public class RunnableC26037c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ListenableFuture f72701a;

        public RunnableC26037c(ListenableFuture listenableFuture) {
            this.f72701a = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f72701a.cancel(true);
        }
    }

    /* renamed from: n3.e.b.j1.t1.c.g$d */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/c/g$d.class */
    public static final class RunnableC26038d<V> implements Runnable {

        /* renamed from: a */
        public final Future<V> f72702a;

        /* renamed from: b */
        public final AbstractC26030d<? super V> f72703b;

        public RunnableC26038d(Future<V> future, AbstractC26030d<? super V> abstractC26030d) {
            this.f72702a = future;
            this.f72703b = abstractC26030d;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable e;
            try {
                this.f72703b.onSuccess(C26034g.m2783a(this.f72702a));
            } catch (Error e2) {
                e = e2;
                this.f72703b.mo2689a(e);
            } catch (RuntimeException e3) {
                e = e3;
                this.f72703b.mo2689a(e);
            } catch (ExecutionException e4) {
                this.f72703b.mo2689a(e4.getCause());
            }
        }

        public String toString() {
            return RunnableC26038d.class.getSimpleName() + "," + this.f72703b;
        }
    }

    /* renamed from: a */
    public static <V> V m2783a(Future<V> future) throws ExecutionException {
        boolean isDone = future.isDone();
        MediaSessionCompat.m43187x(isDone, "Future was expected to be done, " + future);
        return (V) m2782b(future);
    }

    /* renamed from: b */
    public static <V> V m2782b(Future<V> future) throws ExecutionException {
        boolean z;
        V v;
        boolean z2 = false;
        while (true) {
            try {
                z = z2;
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z2 = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    /* renamed from: c */
    public static <V> ListenableFuture<V> m2781c(V v) {
        return v == null ? AbstractC26039h.c.b : new AbstractC26039h.c(v);
    }

    /* renamed from: d */
    public static <V> ListenableFuture<V> m2780d(final ListenableFuture<V> listenableFuture) {
        Objects.requireNonNull(listenableFuture);
        return listenableFuture.isDone() ? listenableFuture : MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.b.j1.t1.c.a
            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public final Object mo2255a(C26247b c26247b) {
                ListenableFuture listenableFuture2 = ListenableFuture.this;
                C26034g.m2778f(false, listenableFuture2, C26034g.f72698a, c26247b, MediaSessionCompat.m43268U());
                return "nonCancellationPropagating[" + listenableFuture2 + "]";
            }
        });
    }

    /* renamed from: e */
    public static <V> void m2779e(ListenableFuture<V> listenableFuture, C26247b<V> c26247b) {
        m2778f(true, listenableFuture, f72698a, c26247b, MediaSessionCompat.m43268U());
    }

    /* renamed from: f */
    public static <I, O> void m2778f(boolean z, ListenableFuture<I> listenableFuture, AbstractC25640a<? super I, ? extends O> abstractC25640a, C26247b<O> c26247b, Executor executor) {
        Objects.requireNonNull(listenableFuture);
        Objects.requireNonNull(abstractC25640a);
        Objects.requireNonNull(c26247b);
        Objects.requireNonNull(executor);
        listenableFuture.addListener(new RunnableC26038d(listenableFuture, new C26036b(c26247b, abstractC25640a)), executor);
        if (z) {
            RunnableC26037c runnableC26037c = new RunnableC26037c(listenableFuture);
            Executor m43268U = MediaSessionCompat.m43268U();
            f<Void> fVar = c26247b.f73171c;
            if (fVar == null) {
                return;
            }
            fVar.addListener(runnableC26037c, m43268U);
        }
    }

    /* renamed from: g */
    public static <V> ListenableFuture<List<V>> m2777g(Collection<? extends ListenableFuture<? extends V>> collection) {
        return new C26040i(new ArrayList(collection), false, MediaSessionCompat.m43268U());
    }
}
