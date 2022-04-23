package p131c.p161d.p282e.p289l.p290d.p293h;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* renamed from: c.d.e.l.d.h.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h.class */
public class C5224h {

    /* renamed from: a */
    public final Executor f17914a;

    /* renamed from: b */
    public Task<Void> f17915b = Tasks.m8591a((Object) null);

    /* renamed from: c */
    public final Object f17916c = new Object();

    /* renamed from: d */
    public ThreadLocal<Boolean> f17917d = new ThreadLocal<>();

    /* renamed from: c.d.e.l.d.h.h$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h$a.class */
    public class RunnableC5225a implements Runnable {
        public RunnableC5225a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C5224h.this.f17917d.set(true);
        }
    }

    /* renamed from: c.d.e.l.d.h.h$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h$b.class */
    public class CallableC5226b implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Runnable f17919a;

        public CallableC5226b(C5224h hVar, Runnable runnable) {
            this.f17919a = runnable;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            this.f17919a.run();
            return null;
        }
    }

    /* renamed from: c.d.e.l.d.h.h$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h$c.class */
    public class C5227c implements Continuation<Void, T> {

        /* renamed from: a */
        public final /* synthetic */ Callable f17920a;

        public C5227c(C5224h hVar, Callable callable) {
            this.f17920a = callable;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // com.google.android.gms.tasks.Continuation
        /* renamed from: a */
        public T mo8621a(Task<Void> task) throws Exception {
            return this.f17920a.call();
        }
    }

    /* renamed from: c.d.e.l.d.h.h$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/h$d.class */
    public class C5228d implements Continuation<T, Void> {
        public C5228d(C5224h hVar) {
        }

        @Override // com.google.android.gms.tasks.Continuation
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Void mo8621a(Task<T> task) throws Exception {
            return null;
        }
    }

    public C5224h(Executor executor) {
        this.f17914a = executor;
        executor.execute(new RunnableC5225a());
    }

    /* renamed from: a */
    public final <T> Continuation<Void, T> m24236a(Callable<T> callable) {
        return new C5227c(this, callable);
    }

    /* renamed from: a */
    public final <T> Task<Void> m24238a(Task<T> task) {
        return task.mo8611a(this.f17914a, new C5228d(this));
    }

    /* renamed from: a */
    public Task<Void> m24237a(Runnable runnable) {
        return m24234b(new CallableC5226b(this, runnable));
    }

    /* renamed from: a */
    public void m24240a() {
        if (!m24233c()) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
    }

    /* renamed from: b */
    public <T> Task<T> m24234b(Callable<T> callable) {
        Task<T> a;
        synchronized (this.f17916c) {
            a = this.f17915b.mo8611a(this.f17914a, (Continuation<Void, TContinuationResult>) m24236a(callable));
            this.f17915b = m24238a(a);
        }
        return a;
    }

    /* renamed from: b */
    public Executor m24235b() {
        return this.f17914a;
    }

    /* renamed from: c */
    public <T> Task<T> m24232c(Callable<Task<T>> callable) {
        Task<T> b;
        synchronized (this.f17916c) {
            b = this.f17915b.mo8604b(this.f17914a, m24236a(callable));
            this.f17915b = m24238a(b);
        }
        return b;
    }

    /* renamed from: c */
    public final boolean m24233c() {
        return Boolean.TRUE.equals(this.f17917d.get());
    }
}
