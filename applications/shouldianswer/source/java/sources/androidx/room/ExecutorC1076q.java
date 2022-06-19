package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.q */
/* loaded from: classes-dex2jar.jar:androidx/room/q.class */
public class ExecutorC1076q implements Executor {

    /* renamed from: a */
    private final Executor f3383a;

    /* renamed from: b */
    private final ArrayDeque<Runnable> f3384b = new ArrayDeque<>();

    /* renamed from: c */
    private Runnable f3385c;

    public ExecutorC1076q(Executor executor) {
        this.f3383a = executor;
    }

    /* renamed from: a */
    void m4391a() {
        synchronized (this) {
            Runnable poll = this.f3384b.poll();
            this.f3385c = poll;
            if (poll != null) {
                this.f3383a.execute(this.f3385c);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        synchronized (this) {
            this.f3384b.offer(new Runnable() { // from class: androidx.room.q.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        ExecutorC1076q.this.m4391a();
                    }
                }
            });
            if (this.f3385c == null) {
                m4391a();
            }
        }
    }
}
