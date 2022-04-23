package p530d.p541c.p543b0.p555g;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9862c;
/* renamed from: d.c.b0.g.i */
/* loaded from: classes2-dex2jar.jar:d/c/b0/g/i.class */
public final class C9790i extends AbstractC9845s {

    /* renamed from: b */
    public static final C9790i f36978b = new C9790i();

    /* renamed from: d.c.b0.g.i$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/i$a.class */
    public static final class RunnableC9791a implements Runnable {

        /* renamed from: a */
        public final Runnable f36979a;

        /* renamed from: b */
        public final C9793c f36980b;

        /* renamed from: c */
        public final long f36981c;

        public RunnableC9791a(Runnable runnable, C9793c cVar, long j) {
            this.f36979a = runnable;
            this.f36980b = cVar;
            this.f36981c = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f36980b.f36989d) {
                long a = this.f36980b.m1849a(TimeUnit.MILLISECONDS);
                long j = this.f36981c;
                if (j > a) {
                    try {
                        Thread.sleep(j - a);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        C9815a.m1923b(e);
                        return;
                    }
                }
                if (!this.f36980b.f36989d) {
                    this.f36979a.run();
                }
            }
        }
    }

    /* renamed from: d.c.b0.g.i$b */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/i$b.class */
    public static final class C9792b implements Comparable<C9792b> {

        /* renamed from: a */
        public final Runnable f36982a;

        /* renamed from: b */
        public final long f36983b;

        /* renamed from: c */
        public final int f36984c;

        /* renamed from: d */
        public volatile boolean f36985d;

        public C9792b(Runnable runnable, Long l, int i) {
            this.f36982a = runnable;
            this.f36983b = l.longValue();
            this.f36984c = i;
        }

        /* renamed from: a */
        public int compareTo(C9792b bVar) {
            int a = C9650a.m2098a(this.f36983b, bVar.f36983b);
            return a == 0 ? C9650a.m2100a(this.f36984c, bVar.f36984c) : a;
        }
    }

    /* renamed from: d.c.b0.g.i$c */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/i$c.class */
    public static final class C9793c extends AbstractC9845s.AbstractC9848c implements AbstractC9861b {

        /* renamed from: a */
        public final PriorityBlockingQueue<C9792b> f36986a = new PriorityBlockingQueue<>();

        /* renamed from: b */
        public final AtomicInteger f36987b = new AtomicInteger();

        /* renamed from: c */
        public final AtomicInteger f36988c = new AtomicInteger();

        /* renamed from: d */
        public volatile boolean f36989d;

        /* renamed from: d.c.b0.g.i$c$a */
        /* loaded from: classes2-dex2jar.jar:d/c/b0/g/i$c$a.class */
        public final class RunnableC9794a implements Runnable {

            /* renamed from: a */
            public final C9792b f36990a;

            public RunnableC9794a(C9792b bVar) {
                this.f36990a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f36990a.f36985d = true;
                C9793c.this.f36986a.remove(this.f36990a);
            }
        }

        @Override // p530d.p541c.AbstractC9845s.AbstractC9848c
        /* renamed from: a */
        public AbstractC9861b mo1851a(Runnable runnable) {
            return m2024a(runnable, m1849a(TimeUnit.MILLISECONDS));
        }

        /* renamed from: a */
        public AbstractC9861b m2024a(Runnable runnable, long j) {
            if (this.f36989d) {
                return EmptyDisposable.INSTANCE;
            }
            C9792b bVar = new C9792b(runnable, Long.valueOf(j), this.f36988c.incrementAndGet());
            this.f36986a.add(bVar);
            if (this.f36987b.getAndIncrement() != 0) {
                return C9862c.m1825a(new RunnableC9794a(bVar));
            }
            int i = 1;
            while (!this.f36989d) {
                C9792b poll = this.f36986a.poll();
                if (poll == null) {
                    int addAndGet = this.f36987b.addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return EmptyDisposable.INSTANCE;
                    }
                } else if (!poll.f36985d) {
                    poll.f36982a.run();
                }
            }
            this.f36986a.clear();
            return EmptyDisposable.INSTANCE;
        }

        @Override // p530d.p541c.AbstractC9845s.AbstractC9848c
        /* renamed from: a */
        public AbstractC9861b mo1832a(Runnable runnable, long j, TimeUnit timeUnit) {
            long a = m1849a(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j);
            return m2024a(new RunnableC9791a(runnable, this, a), a);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f36989d = true;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36989d;
        }
    }

    /* renamed from: b */
    public static C9790i m2026b() {
        return f36978b;
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9845s.AbstractC9848c mo1834a() {
        return new C9793c();
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9861b mo1854a(Runnable runnable) {
        C9815a.m1928a(runnable).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9861b mo1833a(Runnable runnable, long j, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j);
            C9815a.m1928a(runnable).run();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            C9815a.m1923b(e);
        }
        return EmptyDisposable.INSTANCE;
    }
}
