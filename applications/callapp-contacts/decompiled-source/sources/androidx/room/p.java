package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/room/p.class */
final class p implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f5600a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<Runnable> f5601b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private Runnable f5602c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Executor executor) {
        this.f5600a = executor;
    }

    final void a() {
        synchronized (this) {
            Runnable poll = this.f5601b.poll();
            this.f5602c = poll;
            if (poll != null) {
                this.f5600a.execute(poll);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(final Runnable runnable) {
        synchronized (this) {
            this.f5601b.offer(new Runnable() { // from class: androidx.room.p.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        runnable.run();
                    } finally {
                        p.this.a();
                    }
                }
            });
            if (this.f5602c == null) {
                a();
            }
        }
    }
}
