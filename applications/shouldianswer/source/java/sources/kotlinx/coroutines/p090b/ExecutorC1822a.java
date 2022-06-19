package kotlinx.coroutines.p090b;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.C1775o;
import kotlin.C1776p;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p084f.C1713d;
import kotlinx.coroutines.C1789ag;
import kotlinx.coroutines.C1884cj;
import kotlinx.coroutines.internal.C1923u;
import kotlinx.coroutines.internal.C1924v;
/* renamed from: kotlinx.coroutines.b.a */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/a.class */
public final class ExecutorC1822a implements Closeable, Executor {
    private volatile int _isTerminated;

    /* renamed from: c */
    private final C1829e f4529c;
    volatile long controlState;

    /* renamed from: d */
    private final Semaphore f4530d;

    /* renamed from: f */
    private final C1824b[] f4531f;

    /* renamed from: g */
    private final Random f4532g;

    /* renamed from: i */
    private final int f4533i;

    /* renamed from: j */
    private final int f4534j;

    /* renamed from: k */
    private final long f4535k;

    /* renamed from: l */
    private final String f4536l;
    private volatile long parkedWorkersStack;

    /* renamed from: b */
    public static final C1823a f4521b = new C1823a(null);

    /* renamed from: m */
    private static final int f4524m = C1924v.m2586a("kotlinx.coroutines.scheduler.spins", 1000, 1, 0, 8, (Object) null);

    /* renamed from: n */
    private static final int f4525n = f4524m + C1924v.m2586a("kotlinx.coroutines.scheduler.yields", 0, 0, 0, 8, (Object) null);

    /* renamed from: o */
    private static final int f4526o = (int) TimeUnit.SECONDS.toNanos(1);

    /* renamed from: p */
    private static final int f4527p = (int) C1713d.m3077b(C1713d.m3079a(C1837m.f4573a / 4, 10), f4526o);

    /* renamed from: q */
    private static final C1923u f4528q = new C1923u("NOT_IN_STACK");

    /* renamed from: e */
    private static final AtomicLongFieldUpdater f4522e = AtomicLongFieldUpdater.newUpdater(ExecutorC1822a.class, "parkedWorkersStack");

    /* renamed from: a */
    static final AtomicLongFieldUpdater f4520a = AtomicLongFieldUpdater.newUpdater(ExecutorC1822a.class, "controlState");

    /* renamed from: h */
    private static final AtomicIntegerFieldUpdater f4523h = AtomicIntegerFieldUpdater.newUpdater(ExecutorC1822a.class, "_isTerminated");

    /* renamed from: kotlinx.coroutines.b.a$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/a$a.class */
    public static final class C1823a {
        private C1823a() {
        }

        public /* synthetic */ C1823a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: kotlinx.coroutines.b.a$b */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/a$b.class */
    public final class C1824b extends Thread {

        /* renamed from: c */
        private static final AtomicIntegerFieldUpdater f4537c = AtomicIntegerFieldUpdater.newUpdater(C1824b.class, "terminationState");

        /* renamed from: b */
        private final C1839o f4539b;

        /* renamed from: d */
        private long f4540d;

        /* renamed from: e */
        private long f4541e;

        /* renamed from: f */
        private int f4542f;

        /* renamed from: g */
        private int f4543g;

        /* renamed from: h */
        private int f4544h;
        private volatile int indexInArray;
        private volatile Object nextParkedWorker;
        private volatile int spins;
        private volatile EnumC1825c state;
        private volatile int terminationState;

        private C1824b() {
            ExecutorC1822a.this = r5;
            setDaemon(true);
            this.f4539b = new C1839o();
            this.state = EnumC1825c.RETIRING;
            this.terminationState = 0;
            this.nextParkedWorker = ExecutorC1822a.f4528q;
            this.f4542f = ExecutorC1822a.f4527p;
            this.f4543g = r5.f4532g.nextInt();
        }

        public C1824b(ExecutorC1822a executorC1822a, int i) {
            this();
            m2861a(i);
        }

        /* renamed from: a */
        private final void m2857a(EnumC1836l enumC1836l) {
            if (enumC1836l != EnumC1836l.NON_BLOCKING) {
                ExecutorC1822a.f4520a.addAndGet(ExecutorC1822a.this, -2097152L);
                EnumC1825c enumC1825c = this.state;
                if (enumC1825c == EnumC1825c.TERMINATED) {
                    return;
                }
                boolean z = enumC1825c == EnumC1825c.BLOCKING;
                if (!C1776p.f4451a || z) {
                    this.state = EnumC1825c.RETIRING;
                    return;
                }
                throw new AssertionError("Expected BLOCKING state, but has " + enumC1825c);
            }
        }

        /* renamed from: a */
        private final void m2856a(EnumC1836l enumC1836l, long j) {
            if (enumC1836l != EnumC1836l.NON_BLOCKING) {
                ExecutorC1822a.f4520a.addAndGet(ExecutorC1822a.this, 2097152L);
                if (!m2858a(EnumC1825c.BLOCKING)) {
                    return;
                }
                ExecutorC1822a.this.m2867i();
            } else if (ExecutorC1822a.this.f4530d.availablePermits() == 0) {
            } else {
                long mo2828a = C1837m.f4579g.mo2828a();
                if (mo2828a - j < C1837m.f4573a || mo2828a - this.f4541e < C1837m.f4573a * 5) {
                    return;
                }
                this.f4541e = mo2828a;
                ExecutorC1822a.this.m2867i();
            }
        }

        /* renamed from: a */
        private final boolean m2860a(long j) {
            ExecutorC1822a.this.m2891a(this);
            if (!m2840o()) {
                return false;
            }
            LockSupport.parkNanos(j);
            return true;
        }

        /* renamed from: b */
        private final void m2853b(EnumC1836l enumC1836l) {
            this.f4540d = 0L;
            this.f4544h = 0;
            if (this.state == EnumC1825c.PARKING) {
                boolean z = enumC1836l == EnumC1836l.PROBABLY_BLOCKING;
                if (C1776p.f4451a && !z) {
                    throw new AssertionError("Assertion failed");
                }
                this.state = EnumC1825c.BLOCKING;
                this.f4542f = ExecutorC1822a.f4527p;
            }
            this.spins = 0;
        }

        /* renamed from: l */
        private final void m2843l() {
            int i = this.spins;
            if (i <= ExecutorC1822a.f4525n) {
                this.spins = i + 1;
                if (i < ExecutorC1822a.f4524m) {
                    return;
                }
                Thread.yield();
                return;
            }
            if (this.f4542f < ExecutorC1822a.f4526o) {
                this.f4542f = C1713d.m3075d((this.f4542f * 3) >>> 1, ExecutorC1822a.f4526o);
            }
            m2858a(EnumC1825c.PARKING);
            m2860a(this.f4542f);
        }

        /* renamed from: m */
        private final void m2842m() {
            m2858a(EnumC1825c.PARKING);
            if (!m2840o()) {
                return;
            }
            this.terminationState = 0;
            if (this.f4540d == 0) {
                this.f4540d = System.nanoTime() + ExecutorC1822a.this.f4535k;
            }
            if (!m2860a(ExecutorC1822a.this.f4535k) || System.nanoTime() - this.f4540d < 0) {
                return;
            }
            this.f4540d = 0L;
            m2841n();
        }

        /* renamed from: n */
        private final void m2841n() {
            synchronized (ExecutorC1822a.this.f4531f) {
                if (ExecutorC1822a.this.m2869h()) {
                    return;
                }
                if (ExecutorC1822a.this.m2871g() <= ExecutorC1822a.this.f4533i) {
                    return;
                }
                if (!m2840o()) {
                    return;
                }
                if (!f4537c.compareAndSet(this, 0, 1)) {
                    return;
                }
                int i = this.indexInArray;
                m2861a(0);
                ExecutorC1822a.this.m2890a(this, i, 0);
                int andDecrement = (int) (ExecutorC1822a.f4520a.getAndDecrement(ExecutorC1822a.this) & 2097151);
                if (andDecrement != i) {
                    C1824b c1824b = ExecutorC1822a.this.f4531f[andDecrement];
                    if (c1824b == null) {
                        C1694h.m3124a();
                    }
                    ExecutorC1822a.this.f4531f[i] = c1824b;
                    c1824b.m2861a(i);
                    ExecutorC1822a.this.m2890a(c1824b, andDecrement, i);
                }
                ExecutorC1822a.this.f4531f[andDecrement] = null;
                C1775o c1775o = C1775o.f4450a;
                this.state = EnumC1825c.TERMINATED;
            }
        }

        /* renamed from: o */
        private final boolean m2840o() {
            AbstractRunnableC1833i m2833a = ExecutorC1822a.this.f4529c.m2833a(EnumC1836l.PROBABLY_BLOCKING);
            if (m2833a != null) {
                this.f4539b.m2822a(m2833a, ExecutorC1822a.this.f4529c);
                return false;
            }
            return true;
        }

        /* renamed from: p */
        private final AbstractRunnableC1833i m2839p() {
            AbstractRunnableC1833i c;
            AbstractRunnableC1833i m2833a;
            boolean z = m2854b(ExecutorC1822a.this.f4533i * 2) == 0;
            if (!z || (m2833a = ExecutorC1822a.this.f4529c.m2833a(EnumC1836l.NON_BLOCKING)) == null) {
                AbstractRunnableC1833i m2819b = this.f4539b.m2819b();
                return m2819b != null ? m2819b : (z || (c = ExecutorC1822a.this.f4529c.m2635c()) == null) ? m2838q() : c;
            }
            return m2833a;
        }

        /* renamed from: q */
        private final AbstractRunnableC1833i m2838q() {
            int m2871g = ExecutorC1822a.this.m2871g();
            if (m2871g < 2) {
                return null;
            }
            int i = this.f4544h;
            int i2 = i;
            if (i == 0) {
                i2 = m2854b(m2871g);
            }
            int i3 = i2 + 1;
            int i4 = i3;
            if (i3 > m2871g) {
                i4 = 1;
            }
            this.f4544h = i4;
            C1824b c1824b = ExecutorC1822a.this.f4531f[i4];
            if (c1824b != null && c1824b != this && this.f4539b.m2820a(c1824b.f4539b, ExecutorC1822a.this.f4529c)) {
                return this.f4539b.m2819b();
            }
            return null;
        }

        /* renamed from: a */
        public final int m2862a() {
            return this.indexInArray;
        }

        /* renamed from: a */
        public final void m2861a(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(ExecutorC1822a.this.f4536l);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        /* renamed from: a */
        public final void m2859a(Object obj) {
            this.nextParkedWorker = obj;
        }

        /* renamed from: a */
        public final boolean m2858a(EnumC1825c enumC1825c) {
            C1694h.m3117b(enumC1825c, "newState");
            EnumC1825c enumC1825c2 = this.state;
            boolean z = enumC1825c2 == EnumC1825c.CPU_ACQUIRED;
            if (z) {
                ExecutorC1822a.this.f4530d.release();
            }
            if (enumC1825c2 != enumC1825c) {
                this.state = enumC1825c;
            }
            return z;
        }

        /* renamed from: b */
        public final int m2854b(int i) {
            int i2 = this.f4543g;
            this.f4543g = i2 ^ (i2 << 13);
            int i3 = this.f4543g;
            this.f4543g = i3 ^ (i3 >> 17);
            int i4 = this.f4543g;
            this.f4543g = i4 ^ (i4 << 5);
            int i5 = i - 1;
            return (i5 & i) == 0 ? this.f4543g & i5 : (this.f4543g & Api.BaseClientBuilder.API_PRIORITY_OTHER) % i;
        }

        /* renamed from: b */
        public final ExecutorC1822a m2855b() {
            return ExecutorC1822a.this;
        }

        /* renamed from: c */
        public final C1839o m2852c() {
            return this.f4539b;
        }

        /* renamed from: d */
        public final EnumC1825c m2851d() {
            return this.state;
        }

        /* renamed from: e */
        public final boolean m2850e() {
            return this.state == EnumC1825c.PARKING;
        }

        /* renamed from: f */
        public final boolean m2849f() {
            return this.state == EnumC1825c.BLOCKING;
        }

        /* renamed from: g */
        public final Object m2848g() {
            return this.nextParkedWorker;
        }

        /* renamed from: h */
        public final boolean m2847h() {
            int i = this.terminationState;
            boolean z = false;
            if (i != -1) {
                if (i == 0) {
                    z = f4537c.compareAndSet(this, 0, -1);
                } else if (i != 1) {
                    throw new IllegalStateException(("Invalid terminationState = " + i).toString());
                } else {
                    z = false;
                }
            }
            return z;
        }

        /* renamed from: i */
        public final boolean m2846i() {
            boolean z = true;
            if (this.state != EnumC1825c.CPU_ACQUIRED) {
                if (ExecutorC1822a.this.f4530d.tryAcquire()) {
                    this.state = EnumC1825c.CPU_ACQUIRED;
                } else {
                    z = false;
                }
            }
            return z;
        }

        /* renamed from: j */
        public final void m2845j() {
            this.f4542f = ExecutorC1822a.f4527p;
            this.spins = 0;
        }

        /* renamed from: k */
        public final AbstractRunnableC1833i m2844k() {
            if (m2846i()) {
                return m2839p();
            }
            AbstractRunnableC1833i m2819b = this.f4539b.m2819b();
            if (m2819b == null) {
                m2819b = ExecutorC1822a.this.f4529c.m2833a(EnumC1836l.PROBABLY_BLOCKING);
            }
            return m2819b;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z = false;
            while (true) {
                boolean z2 = z;
                if (ExecutorC1822a.this.m2869h() || this.state == EnumC1825c.TERMINATED) {
                    break;
                }
                AbstractRunnableC1833i m2844k = m2844k();
                if (m2844k == null) {
                    if (this.state == EnumC1825c.CPU_ACQUIRED) {
                        m2843l();
                    } else {
                        m2842m();
                    }
                    z = true;
                } else {
                    EnumC1836l m2831j = m2844k.m2831j();
                    boolean z3 = z2;
                    if (z2) {
                        m2853b(m2831j);
                        z3 = false;
                    }
                    m2856a(m2831j, m2844k.f4567f);
                    ExecutorC1822a.this.m2884a(m2844k);
                    m2857a(m2831j);
                    z = z3;
                }
            }
            m2858a(EnumC1825c.TERMINATED);
        }
    }

    /* renamed from: kotlinx.coroutines.b.a$c */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/a$c.class */
    public enum EnumC1825c {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        RETIRING,
        TERMINATED
    }

    public ExecutorC1822a(int i, int i2, long j, String str) {
        C1694h.m3117b(str, "schedulerName");
        this.f4533i = i;
        this.f4534j = i2;
        this.f4535k = j;
        this.f4536l = str;
        if (!(this.f4533i >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + this.f4533i + " should be at least 1").toString());
        }
        if (!(this.f4534j >= this.f4533i)) {
            throw new IllegalArgumentException(("Max pool size " + this.f4534j + " should be greater than or equals to core pool size " + this.f4533i).toString());
        }
        if (!(this.f4534j <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + this.f4534j + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(this.f4535k > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + this.f4535k + " must be positive").toString());
        }
        this.f4529c = new C1829e();
        this.f4530d = new Semaphore(this.f4533i, false);
        this.parkedWorkersStack = 0L;
        this.f4531f = new C1824b[this.f4534j + 1];
        this.controlState = 0L;
        this.f4532g = new Random();
        this._isTerminated = 0;
    }

    /* renamed from: a */
    private final int m2883a(AbstractRunnableC1833i abstractRunnableC1833i, boolean z) {
        Thread currentThread = Thread.currentThread();
        Thread thread = currentThread;
        if (!(currentThread instanceof C1824b)) {
            thread = null;
        }
        C1824b c1824b = (C1824b) thread;
        if (c1824b == null || c1824b.m2855b() != this || c1824b.m2851d() == EnumC1825c.TERMINATED) {
            return 1;
        }
        int i = -1;
        if (abstractRunnableC1833i.m2831j() == EnumC1836l.NON_BLOCKING) {
            if (c1824b.m2849f()) {
                i = 0;
            } else {
                i = -1;
                if (!c1824b.m2846i()) {
                    return 1;
                }
            }
        }
        if ((z ? c1824b.m2852c().m2817b(abstractRunnableC1833i, this.f4529c) : c1824b.m2852c().m2822a(abstractRunnableC1833i, this.f4529c)) && c1824b.m2852c().m2827a() <= C1837m.f4574b) {
            return i;
        }
        return 0;
    }

    /* renamed from: a */
    public final void m2891a(C1824b c1824b) {
        long j;
        int m2862a;
        if (c1824b.m2848g() != f4528q) {
            return;
        }
        do {
            j = this.parkedWorkersStack;
            int i = (int) (2097151 & j);
            m2862a = c1824b.m2862a();
            boolean z = m2862a != 0;
            if (C1776p.f4451a && !z) {
                throw new AssertionError("Assertion failed");
            }
            c1824b.m2859a(this.f4531f[i]);
        } while (!f4522e.compareAndSet(this, j, m2862a | ((2097152 + j) & (-2097152))));
    }

    /* renamed from: a */
    public final void m2890a(C1824b c1824b, int i, int i2) {
        while (true) {
            long j = this.parkedWorkersStack;
            int i3 = (int) (2097151 & j);
            int i4 = i3;
            if (i3 == i) {
                i4 = i2 == 0 ? m2881b(c1824b) : i2;
            }
            if (i4 >= 0 && f4522e.compareAndSet(this, j, ((2097152 + j) & (-2097152)) | i4)) {
                return;
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m2888a(ExecutorC1822a executorC1822a, Runnable runnable, AbstractC1834j abstractC1834j, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            abstractC1834j = C1832h.f4565a;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        executorC1822a.m2892a(runnable, abstractC1834j, z);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x0010 -> B:3:0x0004). Please submit an issue!!! */
    /* renamed from: a */
    public final void m2884a(AbstractRunnableC1833i abstractRunnableC1833i) {
        try {
            abstractRunnableC1833i.run();
        } catch (Throwable th) {
            try {
                Thread currentThread = Thread.currentThread();
                C1694h.m3122a((Object) currentThread, "thread");
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
            } catch (Throwable th2) {
                C1884cj.m2695a().mo2698c();
                throw th2;
            }
        }
        C1884cj.m2695a().mo2698c();
    }

    /* renamed from: b */
    private final int m2881b(C1824b c1824b) {
        Object m2848g = c1824b.m2848g();
        while (true) {
            Object obj = m2848g;
            if (obj == f4528q) {
                return -1;
            }
            if (obj == null) {
                return 0;
            }
            C1824b c1824b2 = (C1824b) obj;
            int m2862a = c1824b2.m2862a();
            if (m2862a != 0) {
                return m2862a;
            }
            m2848g = c1824b2.m2848g();
        }
    }

    /* renamed from: f */
    private final C1824b m2873f() {
        while (true) {
            long j = this.parkedWorkersStack;
            C1824b c1824b = this.f4531f[(int) (2097151 & j)];
            if (c1824b != null) {
                int m2881b = m2881b(c1824b);
                if (m2881b >= 0 && f4522e.compareAndSet(this, j, m2881b | ((2097152 + j) & (-2097152)))) {
                    c1824b.m2859a(f4528q);
                    return c1824b;
                }
            } else {
                return null;
            }
        }
    }

    /* renamed from: g */
    public final int m2871g() {
        return (int) (this.controlState & 2097151);
    }

    /* renamed from: h */
    public final boolean m2869h() {
        return this._isTerminated != 0;
    }

    /* renamed from: i */
    public final void m2867i() {
        if (this.f4530d.availablePermits() == 0) {
            m2865j();
        } else if (m2865j()) {
        } else {
            long j = this.controlState;
            if (((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21)) < this.f4533i) {
                int m2863k = m2863k();
                if (m2863k == 1 && this.f4533i > 1) {
                    m2863k();
                }
                if (m2863k > 0) {
                    return;
                }
            }
            m2865j();
        }
    }

    /* renamed from: j */
    private final boolean m2865j() {
        while (true) {
            C1824b m2873f = m2873f();
            if (m2873f != null) {
                m2873f.m2845j();
                boolean m2850e = m2873f.m2850e();
                LockSupport.unpark(m2873f);
                if (m2850e && m2873f.m2847h()) {
                    return true;
                }
            } else {
                return false;
            }
        }
    }

    /* renamed from: k */
    private final int m2863k() {
        synchronized (this.f4531f) {
            if (m2869h()) {
                return -1;
            }
            long j = this.controlState;
            int i = (int) (j & 2097151);
            int i2 = i - ((int) ((j & 4398044413952L) >> 21));
            if (i2 >= this.f4533i) {
                return 0;
            }
            if (i < this.f4534j && this.f4530d.availablePermits() != 0) {
                int i3 = ((int) (this.controlState & 2097151)) + 1;
                if (!(i3 > 0 && this.f4531f[i3] == null)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                C1824b c1824b = new C1824b(this, i3);
                c1824b.start();
                boolean z = false;
                if (i3 == ((int) (2097151 & f4520a.incrementAndGet(this)))) {
                    z = true;
                }
                if (!z) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                this.f4531f[i3] = c1824b;
                return i2 + 1;
            }
            return 0;
        }
    }

    /* renamed from: a */
    public final AbstractRunnableC1833i m2893a(Runnable runnable, AbstractC1834j abstractC1834j) {
        C1694h.m3117b(runnable, "block");
        C1694h.m3117b(abstractC1834j, "taskContext");
        long mo2828a = C1837m.f4579g.mo2828a();
        if (runnable instanceof AbstractRunnableC1833i) {
            AbstractRunnableC1833i abstractRunnableC1833i = (AbstractRunnableC1833i) runnable;
            abstractRunnableC1833i.f4567f = mo2828a;
            abstractRunnableC1833i.f4568g = abstractC1834j;
            return abstractRunnableC1833i;
        }
        return new C1835k(runnable, mo2828a, abstractC1834j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f2, code lost:
        if (r8 != null) goto L42;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2894a(long r6) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.p090b.ExecutorC1822a.m2894a(long):void");
    }

    /* renamed from: a */
    public final void m2892a(Runnable runnable, AbstractC1834j abstractC1834j, boolean z) {
        C1694h.m3117b(runnable, "block");
        C1694h.m3117b(abstractC1834j, "taskContext");
        C1884cj.m2695a().mo2699b();
        AbstractRunnableC1833i m2893a = m2893a(runnable, abstractC1834j);
        int m2883a = m2883a(m2893a, z);
        if (m2883a != -1) {
            if (m2883a != 1) {
                m2867i();
            } else if (this.f4529c.m2637a((C1829e) m2893a)) {
                m2867i();
            } else {
                throw new RejectedExecutionException(this.f4536l + " was terminated");
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m2894a(10000L);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        C1694h.m3117b(runnable, "command");
        m2888a(this, runnable, null, false, 6, null);
    }

    public String toString() {
        int i;
        int i2;
        int i3;
        int i4;
        ArrayList arrayList = new ArrayList();
        C1824b[] c1824bArr = this.f4531f;
        int length = c1824bArr.length;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int i11 = i10;
            if (i5 >= length) {
                long j = this.controlState;
                return this.f4536l + '@' + C1789ag.m2956a(this) + "[Pool Size {core = " + this.f4533i + ", max = " + this.f4534j + "}, Worker States {CPU = " + i6 + ", blocking = " + i7 + ", parked = " + i8 + ", retired = " + i9 + ", terminated = " + i11 + "}, running workers queues = " + arrayList + ", global queue size = " + this.f4529c.m2638a() + ", Control State Workers {created = " + ((int) (2097151 & j)) + ", blocking = " + ((int) ((j & 4398044413952L) >> 21)) + "}]";
            }
            C1824b c1824b = c1824bArr[i5];
            if (c1824b == null) {
                i4 = i6;
                i3 = i7;
                i2 = i8;
                i = i11;
            } else {
                int m2816c = c1824b.m2852c().m2816c();
                int i12 = C1826b.f4551a[c1824b.m2851d().ordinal()];
                if (i12 == 1) {
                    i2 = i8 + 1;
                    i = i11;
                    i3 = i7;
                    i4 = i6;
                } else if (i12 == 2) {
                    i3 = i7 + 1;
                    arrayList.add(String.valueOf(m2816c) + "b");
                    i4 = i6;
                    i2 = i8;
                    i = i11;
                } else if (i12 == 3) {
                    i4 = i6 + 1;
                    arrayList.add(String.valueOf(m2816c) + "c");
                    i3 = i7;
                    i2 = i8;
                    i = i11;
                } else if (i12 == 4) {
                    int i13 = i9 + 1;
                    i4 = i6;
                    i3 = i7;
                    i2 = i8;
                    i9 = i13;
                    i = i11;
                    if (m2816c > 0) {
                        arrayList.add(String.valueOf(m2816c) + "r");
                        i4 = i6;
                        i3 = i7;
                        i2 = i8;
                        i9 = i13;
                        i = i11;
                    }
                } else if (i12 != 5) {
                    i4 = i6;
                    i3 = i7;
                    i2 = i8;
                    i = i11;
                } else {
                    i = i11 + 1;
                    i4 = i6;
                    i3 = i7;
                    i2 = i8;
                }
            }
            i5++;
            i6 = i4;
            i7 = i3;
            i8 = i2;
            i10 = i;
        }
    }
}
