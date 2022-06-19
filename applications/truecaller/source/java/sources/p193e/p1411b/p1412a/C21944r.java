package p193e.p1411b.p1412a;

import android.os.Handler;
import android.os.Looper;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
/* renamed from: e.b.a.r */
/* loaded from: classes-dex2jar.jar:e/b/a/r.class */
public class C21944r<T> {

    /* renamed from: e */
    public static Executor f60930e = Executors.newCachedThreadPool();

    /* renamed from: a */
    public final Set<AbstractC21939m<T>> f60931a = new LinkedHashSet(1);

    /* renamed from: b */
    public final Set<AbstractC21939m<Throwable>> f60932b = new LinkedHashSet(1);

    /* renamed from: c */
    public final Handler f60933c = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    public volatile C21942p<T> f60934d = null;

    /* renamed from: e.b.a.r$a */
    /* loaded from: classes-dex2jar.jar:e/b/a/r$a.class */
    public class C21945a extends FutureTask<C21942p<T>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21945a(Callable<C21942p<T>> callable) {
            super(callable);
            C21944r.this = r4;
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            if (isCancelled()) {
                return;
            }
            try {
                C21944r.this.m8875c(get());
            } catch (InterruptedException | ExecutionException e) {
                C21944r.this.m8875c(new C21942p<>(e));
            }
        }
    }

    public C21944r(Callable<C21942p<T>> callable) {
        f60930e.execute(new C21945a(callable));
    }

    /* renamed from: a */
    public C21944r<T> m8877a(AbstractC21939m<Throwable> abstractC21939m) {
        synchronized (this) {
            if (this.f60934d != null && this.f60934d.f60928b != null) {
                abstractC21939m.onResult(this.f60934d.f60928b);
            }
            this.f60932b.add(abstractC21939m);
        }
        return this;
    }

    /* renamed from: b */
    public C21944r<T> m8876b(AbstractC21939m<T> abstractC21939m) {
        synchronized (this) {
            if (this.f60934d != null && this.f60934d.f60927a != null) {
                abstractC21939m.onResult(this.f60934d.f60927a);
            }
            this.f60931a.add(abstractC21939m);
        }
        return this;
    }

    /* renamed from: c */
    public final void m8875c(C21942p<T> c21942p) {
        if (this.f60934d == null) {
            this.f60934d = c21942p;
            this.f60933c.post(new RunnableC21943q(this));
            return;
        }
        throw new IllegalStateException("A task may only be set once.");
    }
}
