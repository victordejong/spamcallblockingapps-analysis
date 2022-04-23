package p530d.p541c.p543b0.p555g;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.schedulers.RxThreadFactory;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p544a.C9649b;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
/* renamed from: d.c.b0.g.a */
/* loaded from: classes2-dex2jar.jar:d/c/b0/g/a.class */
public final class C9773a extends AbstractC9845s {

    /* renamed from: d */
    public static final C9775b f36924d;

    /* renamed from: e */
    public static final RxThreadFactory f36925e;

    /* renamed from: f */
    public static final int f36926f = m2050a(Runtime.getRuntime().availableProcessors(), Integer.getInteger("rx2.computation-threads", 0).intValue());

    /* renamed from: g */
    public static final C9776c f36927g;

    /* renamed from: b */
    public final ThreadFactory f36928b;

    /* renamed from: c */
    public final AtomicReference<C9775b> f36929c;

    /* renamed from: d.c.b0.g.a$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/a$a.class */
    public static final class C9774a extends AbstractC9845s.AbstractC9848c {

        /* renamed from: a */
        public final C9649b f36930a = new C9649b();

        /* renamed from: b */
        public final C9860a f36931b = new C9860a();

        /* renamed from: c */
        public final C9649b f36932c;

        /* renamed from: d */
        public final C9776c f36933d;

        /* renamed from: e */
        public volatile boolean f36934e;

        public C9774a(C9776c cVar) {
            this.f36933d = cVar;
            C9649b bVar = new C9649b();
            this.f36932c = bVar;
            bVar.mo1828b(this.f36930a);
            this.f36932c.mo1828b(this.f36931b);
        }

        @Override // p530d.p541c.AbstractC9845s.AbstractC9848c
        /* renamed from: a */
        public AbstractC9861b mo1851a(Runnable runnable) {
            return this.f36934e ? EmptyDisposable.INSTANCE : this.f36933d.m2035a(runnable, 0L, TimeUnit.MILLISECONDS, this.f36930a);
        }

        @Override // p530d.p541c.AbstractC9845s.AbstractC9848c
        /* renamed from: a */
        public AbstractC9861b mo1832a(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.f36934e ? EmptyDisposable.INSTANCE : this.f36933d.m2035a(runnable, j, timeUnit, this.f36931b);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (!this.f36934e) {
                this.f36934e = true;
                this.f36932c.dispose();
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36934e;
        }
    }

    /* renamed from: d.c.b0.g.a$b */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/a$b.class */
    public static final class C9775b {

        /* renamed from: a */
        public final int f36935a;

        /* renamed from: b */
        public final C9776c[] f36936b;

        /* renamed from: c */
        public long f36937c;

        public C9775b(int i, ThreadFactory threadFactory) {
            this.f36935a = i;
            this.f36936b = new C9776c[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.f36936b[i2] = new C9776c(threadFactory);
            }
        }

        /* renamed from: a */
        public C9776c m2048a() {
            int i = this.f36935a;
            if (i == 0) {
                return C9773a.f36927g;
            }
            C9776c[] cVarArr = this.f36936b;
            long j = this.f36937c;
            this.f36937c = 1 + j;
            return cVarArr[(int) (j % i)];
        }

        /* renamed from: b */
        public void m2047b() {
            for (C9776c cVar : this.f36936b) {
                cVar.dispose();
            }
        }
    }

    /* renamed from: d.c.b0.g.a$c */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/g/a$c.class */
    public static final class C9776c extends C9783e {
        public C9776c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        C9776c cVar = new C9776c(new RxThreadFactory("RxComputationShutdown"));
        f36927g = cVar;
        cVar.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        f36925e = rxThreadFactory;
        C9775b bVar = new C9775b(0, rxThreadFactory);
        f36924d = bVar;
        bVar.m2047b();
    }

    public C9773a() {
        this(f36925e);
    }

    public C9773a(ThreadFactory threadFactory) {
        this.f36928b = threadFactory;
        this.f36929c = new AtomicReference<>(f36924d);
        m2049b();
    }

    /* renamed from: a */
    public static int m2050a(int i, int i2) {
        int i3 = i;
        if (i2 > 0) {
            i3 = i2 > i ? i : i2;
        }
        return i3;
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9845s.AbstractC9848c mo1834a() {
        return new C9774a(this.f36929c.get().m2048a());
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9861b mo1853a(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.f36929c.get().m2048a().m2034b(runnable, j, j2, timeUnit);
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9861b mo1833a(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.f36929c.get().m2048a().m2033b(runnable, j, timeUnit);
    }

    /* renamed from: b */
    public void m2049b() {
        C9775b bVar = new C9775b(f36926f, this.f36928b);
        if (!this.f36929c.compareAndSet(f36924d, bVar)) {
            bVar.m2047b();
        }
    }
}
