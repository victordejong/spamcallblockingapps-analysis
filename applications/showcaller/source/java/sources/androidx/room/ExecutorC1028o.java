package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.o */
/* loaded from: classes-dex2jar.jar:androidx/room/o.class */
public class ExecutorC1028o implements Executor {

    /* renamed from: d */
    private final Executor f4530d;

    /* renamed from: e */
    private final ArrayDeque<Runnable> f4531e = new ArrayDeque<>();

    /* renamed from: f */
    private Runnable f4532f;

    /* renamed from: androidx.room.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/o$a.class */
    class RunnableC1029a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Runnable f4533d;

        RunnableC1029a(Runnable runnable) {
            ExecutorC1028o.this = r4;
            this.f4533d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f4533d.run();
            } finally {
                ExecutorC1028o.this.m31214b();
            }
        }
    }

    public ExecutorC1028o(Executor executor) {
        this.f4530d = executor;
    }

    /* renamed from: b */
    void m31214b() {
        synchronized (this) {
            Runnable poll = this.f4531e.poll();
            this.f4532f = poll;
            if (poll != null) {
                this.f4530d.execute(poll);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this) {
            this.f4531e.offer(new RunnableC1029a(runnable));
            if (this.f4532f == null) {
                m31214b();
            }
        }
    }
}
