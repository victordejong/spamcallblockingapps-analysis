package p193e.p1451f.p1452a.p1457n.p1460o;

import android.os.Process;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.p1460o.C22385q;
/* renamed from: e.f.a.n.o.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/a.class */
public final class C22294a {

    /* renamed from: a */
    public final boolean f61943a;

    /* renamed from: b */
    public final Executor f61944b;

    /* renamed from: c */
    public final Map<AbstractC22263f, C22297b> f61945c = new HashMap();

    /* renamed from: d */
    public final ReferenceQueue<C22385q<?>> f61946d = new ReferenceQueue<>();

    /* renamed from: e */
    public C22385q.AbstractC22386a f61947e;

    /* renamed from: e.f.a.n.o.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/a$a.class */
    public class ThreadFactoryC22295a implements ThreadFactory {

        /* renamed from: e.f.a.n.o.a$a$a */
        /* loaded from: classes-dex2jar.jar:e/f/a/n/o/a$a$a.class */
        public class RunnableC22296a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Runnable f61948a;

            public RunnableC22296a(ThreadFactoryC22295a threadFactoryC22295a, Runnable runnable) {
                this.f61948a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.f61948a.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(new RunnableC22296a(this, runnable), "glide-active-resources");
        }
    }

    /* renamed from: e.f.a.n.o.a$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/a$b.class */
    public static final class C22297b extends WeakReference<C22385q<?>> {

        /* renamed from: a */
        public final AbstractC22263f f61949a;

        /* renamed from: b */
        public final boolean f61950b;

        /* renamed from: c */
        public AbstractC22394w<?> f61951c;

        public C22297b(AbstractC22263f abstractC22263f, C22385q<?> c22385q, ReferenceQueue<? super C22385q<?>> referenceQueue, boolean z) {
            super(c22385q, referenceQueue);
            AbstractC22394w<?> abstractC22394w;
            Objects.requireNonNull(abstractC22263f, "Argument must not be null");
            this.f61949a = abstractC22263f;
            if (!c22385q.f62195a || !z) {
                abstractC22394w = null;
            } else {
                abstractC22394w = c22385q.f62197c;
                Objects.requireNonNull(abstractC22394w, "Argument must not be null");
            }
            this.f61951c = abstractC22394w;
            this.f61950b = c22385q.f62195a;
        }
    }

    public C22294a(boolean z) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactoryC22295a());
        this.f61943a = z;
        this.f61944b = newSingleThreadExecutor;
        newSingleThreadExecutor.execute(new RunnableC22299b(this));
    }

    /* renamed from: a */
    public void m8349a(AbstractC22263f abstractC22263f, C22385q<?> c22385q) {
        synchronized (this) {
            C22297b put = this.f61945c.put(abstractC22263f, new C22297b(abstractC22263f, c22385q, this.f61946d, this.f61943a));
            if (put != null) {
                put.f61951c = null;
                put.clear();
            }
        }
    }

    /* renamed from: b */
    public void m8348b(C22297b c22297b) {
        AbstractC22394w<?> abstractC22394w;
        synchronized (this) {
            this.f61945c.remove(c22297b.f61949a);
            if (!c22297b.f61950b || (abstractC22394w = c22297b.f61951c) == null) {
                return;
            }
            this.f61947e.mo8257a(c22297b.f61949a, new C22385q<>(abstractC22394w, true, false, c22297b.f61949a, this.f61947e));
        }
    }
}
