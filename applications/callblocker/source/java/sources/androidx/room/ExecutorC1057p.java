package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.p */
/* loaded from: classes-dex2jar.jar:androidx/room/p.class */
public class ExecutorC1057p implements Executor {

    /* renamed from: a */
    private final Executor f3593a;

    /* renamed from: b */
    private final ArrayDeque<Runnable> f3594b = new ArrayDeque<>();

    /* renamed from: c */
    private Runnable f3595c;

    public ExecutorC1057p(Executor executor) {
        this.f3593a = executor;
    }

    /* renamed from: a */
    void m18236a() {
        synchronized (this) {
            Runnable poll = this.f3594b.poll();
            this.f3595c = poll;
            if (poll != null) {
                this.f3593a.execute(this.f3595c);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        synchronized (this) {
            this.f3594b.offer(new Runnable() { // from class: androidx.room.p.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        ExecutorC1057p.this.m18236a();
                    }
                }
            });
            if (this.f3595c == null) {
                m18236a();
            }
        }
    }
}
