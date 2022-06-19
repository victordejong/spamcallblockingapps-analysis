package p080e5;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* renamed from: e5.f */
/* loaded from: classes-dex2jar.jar:e5/f.class */
public class C2549f {

    /* renamed from: a */
    public final Executor f8919a;

    /* renamed from: b */
    public Task<Void> f8920b = Tasks.forResult(null);

    /* renamed from: c */
    public final Object f8921c = new Object();

    /* renamed from: d */
    public final ThreadLocal<Boolean> f8922d = new ThreadLocal<>();

    /* renamed from: e5.f$a */
    /* loaded from: classes-dex2jar.jar:e5/f$a.class */
    public class RunnableC2550a implements Runnable {
        public RunnableC2550a() {
            C2549f.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2549f.this.f8922d.set(Boolean.TRUE);
        }
    }

    public C2549f(Executor executor) {
        this.f8919a = executor;
        executor.execute(new RunnableC2550a());
    }

    /* renamed from: a */
    public void m3440a() {
        if (Boolean.TRUE.equals(this.f8922d.get())) {
            return;
        }
        throw new IllegalStateException("Not running on background worker thread as intended.");
    }

    /* renamed from: b */
    public <T> Task<T> m3439b(Callable<T> callable) {
        Task<T> task;
        synchronized (this.f8921c) {
            task = (Task<T>) this.f8920b.continueWith(this.f8919a, new C2552g(this, callable));
            this.f8920b = task.continueWith(this.f8919a, new C2554h(this));
        }
        return task;
    }

    /* renamed from: c */
    public <T> Task<T> m3438c(Callable<Task<T>> callable) {
        Task<T> task;
        synchronized (this.f8921c) {
            task = (Task<T>) this.f8920b.continueWithTask(this.f8919a, new C2552g(this, callable));
            this.f8920b = task.continueWith(this.f8919a, new C2554h(this));
        }
        return task;
    }
}
