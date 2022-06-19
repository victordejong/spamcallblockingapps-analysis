package p000;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: e10 */
/* loaded from: classes-dex2jar.jar:e10.class */
public class e10 implements Executor {

    /* renamed from: a */
    public final Executor f6220a;

    /* renamed from: b */
    public final ArrayDeque<Runnable> f6221b = new ArrayDeque<>();

    /* renamed from: c */
    public Runnable f6222c;

    /* renamed from: e10$a */
    /* loaded from: classes-dex2jar.jar:e10$a.class */
    public class RunnableC1338a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f6223a;

        public RunnableC1338a(Runnable runnable) {
            e10.this = r4;
            this.f6223a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f6223a.run();
            } finally {
                e10.this.m2299a();
            }
        }
    }

    public e10(Executor executor) {
        this.f6220a = executor;
    }

    /* renamed from: a */
    public void m2299a() {
        synchronized (this) {
            Runnable poll = this.f6221b.poll();
            this.f6222c = poll;
            if (poll != null) {
                this.f6220a.execute(poll);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this) {
            this.f6221b.offer(new RunnableC1338a(runnable));
            if (this.f6222c == null) {
                m2299a();
            }
        }
    }
}
