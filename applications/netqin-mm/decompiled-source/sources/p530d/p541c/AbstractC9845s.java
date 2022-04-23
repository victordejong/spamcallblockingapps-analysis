package p530d.p541c;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.TimeUnit;
import p530d.p541c.p543b0.p555g.C9783e;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.s */
/* loaded from: classes2-dex2jar.jar:d/c/s.class */
public abstract class AbstractC9845s {

    /* renamed from: a */
    public static final long f37067a = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    /* renamed from: d.c.s$a */
    /* loaded from: classes2-dex2jar.jar:d/c/s$a.class */
    public static final class RunnableC9846a implements AbstractC9861b, Runnable {

        /* renamed from: a */
        public final Runnable f37068a;

        /* renamed from: b */
        public final AbstractC9848c f37069b;

        /* renamed from: c */
        public Thread f37070c;

        public RunnableC9846a(Runnable runnable, AbstractC9848c cVar) {
            this.f37068a = runnable;
            this.f37069b = cVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (this.f37070c == Thread.currentThread()) {
                AbstractC9848c cVar = this.f37069b;
                if (cVar instanceof C9783e) {
                    ((C9783e) cVar).m2036a();
                    return;
                }
            }
            this.f37069b.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f37069b.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f37070c = Thread.currentThread();
            try {
                this.f37068a.run();
            } finally {
                dispose();
                this.f37070c = null;
            }
        }
    }

    /* renamed from: d.c.s$b */
    /* loaded from: classes2-dex2jar.jar:d/c/s$b.class */
    public static final class RunnableC9847b implements AbstractC9861b, Runnable {

        /* renamed from: a */
        public final Runnable f37071a;

        /* renamed from: b */
        public final AbstractC9848c f37072b;

        /* renamed from: c */
        public volatile boolean f37073c;

        public RunnableC9847b(Runnable runnable, AbstractC9848c cVar) {
            this.f37071a = runnable;
            this.f37072b = cVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f37073c = true;
            this.f37072b.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f37073c;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f37073c) {
                try {
                    this.f37071a.run();
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.f37072b.dispose();
                    throw ExceptionHelper.m222b(th);
                }
            }
        }
    }

    /* renamed from: d.c.s$c */
    /* loaded from: classes2-dex2jar.jar:d/c/s$c.class */
    public static abstract class AbstractC9848c implements AbstractC9861b {

        /* renamed from: d.c.s$c$a */
        /* loaded from: classes2-dex2jar.jar:d/c/s$c$a.class */
        public final class RunnableC9849a implements Runnable {

            /* renamed from: a */
            public final Runnable f37074a;

            /* renamed from: b */
            public final SequentialDisposable f37075b;

            /* renamed from: c */
            public final long f37076c;

            /* renamed from: d */
            public long f37077d;

            /* renamed from: e */
            public long f37078e;

            /* renamed from: f */
            public long f37079f;

            public RunnableC9849a(long j, Runnable runnable, long j2, SequentialDisposable sequentialDisposable, long j3) {
                this.f37074a = runnable;
                this.f37075b = sequentialDisposable;
                this.f37076c = j3;
                this.f37078e = j2;
                this.f37079f = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                long j;
                this.f37074a.run();
                if (!this.f37075b.isDisposed()) {
                    long a = AbstractC9848c.this.m1849a(TimeUnit.NANOSECONDS);
                    long j2 = AbstractC9845s.f37067a;
                    long j3 = this.f37078e;
                    if (a + j2 >= j3) {
                        long j4 = this.f37076c;
                        if (a < j3 + j4 + j2) {
                            long j5 = this.f37079f;
                            long j6 = this.f37077d + 1;
                            this.f37077d = j6;
                            j = j5 + (j6 * j4);
                            this.f37078e = a;
                            this.f37075b.replace(AbstractC9848c.this.mo1832a(this, j - a, TimeUnit.NANOSECONDS));
                        }
                    }
                    long j7 = this.f37076c;
                    j = a + j7;
                    long j8 = this.f37077d + 1;
                    this.f37077d = j8;
                    this.f37079f = j - (j7 * j8);
                    this.f37078e = a;
                    this.f37075b.replace(AbstractC9848c.this.mo1832a(this, j - a, TimeUnit.NANOSECONDS));
                }
            }
        }

        /* renamed from: a */
        public long m1849a(TimeUnit timeUnit) {
            return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        /* renamed from: a */
        public AbstractC9861b mo1851a(Runnable runnable) {
            return mo1832a(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        /* renamed from: a */
        public AbstractC9861b m1850a(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable a = C9815a.m1928a(runnable);
            long nanos = timeUnit.toNanos(j2);
            long a2 = m1849a(TimeUnit.NANOSECONDS);
            AbstractC9861b a3 = mo1832a(new RunnableC9849a(a2 + timeUnit.toNanos(j), a, a2, sequentialDisposable2, nanos), j, timeUnit);
            if (a3 == EmptyDisposable.INSTANCE) {
                return a3;
            }
            sequentialDisposable.replace(a3);
            return sequentialDisposable2;
        }

        /* renamed from: a */
        public abstract AbstractC9861b mo1832a(Runnable runnable, long j, TimeUnit timeUnit);
    }

    /* renamed from: a */
    public long m1852a(TimeUnit timeUnit) {
        return timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public abstract AbstractC9848c mo1834a();

    /* renamed from: a */
    public AbstractC9861b mo1854a(Runnable runnable) {
        return mo1833a(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    /* renamed from: a */
    public AbstractC9861b mo1853a(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        AbstractC9848c a = mo1834a();
        RunnableC9847b bVar = new RunnableC9847b(C9815a.m1928a(runnable), a);
        AbstractC9861b a2 = a.m1850a(bVar, j, j2, timeUnit);
        return a2 == EmptyDisposable.INSTANCE ? a2 : bVar;
    }

    /* renamed from: a */
    public AbstractC9861b mo1833a(Runnable runnable, long j, TimeUnit timeUnit) {
        AbstractC9848c a = mo1834a();
        RunnableC9846a aVar = new RunnableC9846a(C9815a.m1928a(runnable), a);
        a.mo1832a(aVar, j, timeUnit);
        return aVar;
    }
}
