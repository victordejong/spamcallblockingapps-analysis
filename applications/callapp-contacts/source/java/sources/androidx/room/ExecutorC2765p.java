package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.p */
/* loaded from: classes-dex2jar.jar:androidx/room/p.class */
public final class ExecutorC2765p implements Executor {

    /* renamed from: a */
    private final Executor f10483a;

    /* renamed from: b */
    private final ArrayDeque<Runnable> f10484b = new ArrayDeque<>();

    /* renamed from: c */
    private Runnable f10485c;

    public ExecutorC2765p(Executor executor) {
        this.f10483a = executor;
    }

    /* renamed from: a */
    final void m39939a() {
        synchronized (this) {
            Runnable poll = this.f10484b.poll();
            this.f10485c = poll;
            if (poll != null) {
                this.f10483a.execute(poll);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(final Runnable runnable) {
        synchronized (this) {
            this.f10484b.offer(new Runnable() { // from class: androidx.room.p.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        runnable.run();
                    } finally {
                        ExecutorC2765p.this.m39939a();
                    }
                }
            });
            if (this.f10485c == null) {
                m39939a();
            }
        }
    }
}
