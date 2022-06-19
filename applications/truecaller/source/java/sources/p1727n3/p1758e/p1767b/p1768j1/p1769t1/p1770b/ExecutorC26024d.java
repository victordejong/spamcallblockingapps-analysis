package p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1770b;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* renamed from: n3.e.b.j1.t1.b.d */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/d.class */
public final class ExecutorC26024d implements Executor {

    /* renamed from: b */
    public final Executor f72680b;

    /* renamed from: a */
    public final Deque<Runnable> f72679a = new ArrayDeque();

    /* renamed from: c */
    public final RunnableC26026b f72681c = new RunnableC26026b();

    /* renamed from: d */
    public EnumC26027c f72682d = EnumC26027c.IDLE;

    /* renamed from: e */
    public long f72683e = 0;

    /* renamed from: n3.e.b.j1.t1.b.d$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/d$a.class */
    public class RunnableC26025a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f72684a;

        public RunnableC26025a(ExecutorC26024d executorC26024d, Runnable runnable) {
            this.f72684a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f72684a.run();
        }
    }

    /* renamed from: n3.e.b.j1.t1.b.d$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/d$b.class */
    public final class RunnableC26026b implements Runnable {
        public RunnableC26026b() {
            ExecutorC26024d.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x007c, code lost:
            if (r8 == false) goto L66;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x007f, code lost:
            java.lang.Thread.currentThread().interrupt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0089, code lost:
            r0 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0091, code lost:
            r8 = r8 | java.lang.Thread.interrupted();
            r9 = r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0097, code lost:
            r0.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00a0, code lost:
            r7 = r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00a4, code lost:
            r12 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00af, code lost:
            r0 = new java.lang.StringBuilder();
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00b6, code lost:
            r0.append("Exception while executing runnable ");
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00c0, code lost:
            r0.append(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00ca, code lost:
            p1727n3.p1758e.p1767b.C26103y0.m2723b("SequentialExecutor", r0.toString(), r12);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00d8, code lost:
            r7 = r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
            return;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m2787a() {
            /*
                Method dump skipped, instructions count: 245
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1770b.ExecutorC26024d.RunnableC26026b.m2787a():void");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m2787a();
            } catch (Error e) {
                synchronized (ExecutorC26024d.this.f72679a) {
                    ExecutorC26024d.this.f72682d = EnumC26027c.IDLE;
                    throw e;
                }
            }
        }
    }

    /* renamed from: n3.e.b.j1.t1.b.d$c */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/d$c.class */
    public enum EnumC26027c {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    public ExecutorC26024d(Executor executor) {
        Objects.requireNonNull(executor);
        this.f72680b = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        EnumC26027c enumC26027c = EnumC26027c.QUEUING;
        Objects.requireNonNull(runnable);
        synchronized (this.f72679a) {
            EnumC26027c enumC26027c2 = this.f72682d;
            if (enumC26027c2 != EnumC26027c.RUNNING) {
                EnumC26027c enumC26027c3 = EnumC26027c.QUEUED;
                if (enumC26027c2 != enumC26027c3) {
                    long j = this.f72683e;
                    RunnableC26025a runnableC26025a = new RunnableC26025a(this, runnable);
                    this.f72679a.add(runnableC26025a);
                    this.f72682d = enumC26027c;
                    boolean z = true;
                    try {
                        this.f72680b.execute(this.f72681c);
                        if (this.f72682d == enumC26027c) {
                            z = false;
                        }
                        if (z) {
                            return;
                        }
                        synchronized (this.f72679a) {
                            if (this.f72683e == j && this.f72682d == enumC26027c) {
                                this.f72682d = enumC26027c3;
                            }
                        }
                        return;
                    } catch (Error | RuntimeException e) {
                        synchronized (this.f72679a) {
                            EnumC26027c enumC26027c4 = this.f72682d;
                            boolean z2 = (enumC26027c4 == EnumC26027c.IDLE || enumC26027c4 == enumC26027c) && this.f72679a.removeLastOccurrence(runnableC26025a);
                            if (!(e instanceof RejectedExecutionException) || z2) {
                                throw e;
                            }
                        }
                        return;
                    }
                }
            }
            this.f72679a.add(runnable);
        }
    }
}
