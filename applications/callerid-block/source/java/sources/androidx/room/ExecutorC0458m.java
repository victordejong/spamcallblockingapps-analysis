package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.m */
/* loaded from: classes-dex2jar.jar:androidx/room/m.class */
public class ExecutorC0458m implements Executor {

    /* renamed from: b */
    private final Executor f2508b;

    /* renamed from: c */
    private final ArrayDeque<Runnable> f2509c = new ArrayDeque<>();

    /* renamed from: d */
    private Runnable f2510d;

    /* renamed from: androidx.room.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/m$a.class */
    class RunnableC0459a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Runnable f2511b;

        RunnableC0459a(Runnable runnable) {
            ExecutorC0458m.this = r4;
            this.f2511b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2511b.run();
            } finally {
                ExecutorC0458m.this.m12248b();
            }
        }
    }

    public ExecutorC0458m(Executor executor) {
        this.f2508b = executor;
    }

    /* renamed from: b */
    void m12248b() {
        synchronized (this) {
            Runnable poll = this.f2509c.poll();
            this.f2510d = poll;
            if (poll != null) {
                this.f2508b.execute(poll);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this) {
            this.f2509c.offer(new RunnableC0459a(runnable));
            if (this.f2510d == null) {
                m12248b();
            }
        }
    }
}
