package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g.class */
public final class g implements Executor {

    /* renamed from: b  reason: collision with root package name */
    private final Executor f6182b;

    /* renamed from: d  reason: collision with root package name */
    private volatile Runnable f6184d;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque<a> f6181a = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final Object f6183c = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g$a.class */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final g f6185a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f6186b;

        a(g gVar, Runnable runnable) {
            this.f6185a = gVar;
            this.f6186b = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f6186b.run();
            } finally {
                this.f6185a.a();
            }
        }
    }

    public g(Executor executor) {
        this.f6182b = executor;
    }

    final void a() {
        synchronized (this.f6183c) {
            a poll = this.f6181a.poll();
            this.f6184d = poll;
            if (poll != null) {
                this.f6182b.execute(this.f6184d);
            }
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this.f6183c) {
            z = !this.f6181a.isEmpty();
        }
        return z;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f6183c) {
            this.f6181a.add(new a(this, runnable));
            if (this.f6184d == null) {
                a();
            }
        }
    }
}
