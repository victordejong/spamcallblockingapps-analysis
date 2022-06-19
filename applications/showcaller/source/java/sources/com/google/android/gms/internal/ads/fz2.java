package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fz2.class */
public abstract class fz2<V> extends g13 implements r03<V> {

    /* renamed from: d */
    private static final boolean f23202d;

    /* renamed from: e */
    private static final Logger f23203e;

    /* renamed from: f */
    private static final uy2 f23204f;

    /* renamed from: g */
    private static final Object f23205g;

    /* renamed from: h */
    private volatile Object f23206h;

    /* renamed from: i */
    private volatile wy2 f23207i;

    /* renamed from: j */
    private volatile ez2 f23208j;

    static {
        boolean z;
        Throwable th;
        uy2 uy2Var;
        Throwable th2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException e) {
            z = false;
        }
        f23202d = z;
        f23203e = Logger.getLogger(fz2.class.getName());
        try {
            uy2Var = new dz2(null);
            th2 = null;
            th = null;
        } catch (Throwable th3) {
            th2 = th3;
            try {
                uy2Var = new yy2(AtomicReferenceFieldUpdater.newUpdater(ez2.class, Thread.class, "b"), AtomicReferenceFieldUpdater.newUpdater(ez2.class, ez2.class, "c"), AtomicReferenceFieldUpdater.newUpdater(fz2.class, ez2.class, "j"), AtomicReferenceFieldUpdater.newUpdater(fz2.class, wy2.class, "i"), AtomicReferenceFieldUpdater.newUpdater(fz2.class, Object.class, "h"));
                th = null;
            } catch (Throwable th4) {
                th = th4;
                uy2Var = new az2(null);
            }
        }
        f23204f = uy2Var;
        if (th != null) {
            Logger logger = f23203e;
            Level level = Level.SEVERE;
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
        f23205g = new Object();
    }

    /* renamed from: A */
    private static <V> V m15024A(Future<V> future) {
        boolean z;
        V v;
        boolean z2 = false;
        while (true) {
            try {
                z = z2;
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z2 = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: B */
    public static void m15023B(fz2<?> fz2Var) {
        wy2 wy2Var;
        wy2 wy2Var2;
        fz2 fz2Var2 = fz2Var;
        wy2 wy2Var3 = null;
        while (true) {
            ez2 ez2Var = fz2Var2.f23208j;
            if (f23204f.mo8652c(fz2Var2, ez2Var, ez2.f22687a)) {
                while (ez2Var != null) {
                    Thread thread = ez2Var.f22688b;
                    if (thread != null) {
                        ez2Var.f22688b = null;
                        LockSupport.unpark(thread);
                    }
                    ez2Var = ez2Var.f22689c;
                }
                fz2Var2.mo10469j();
                do {
                    wy2Var = fz2Var2.f23207i;
                } while (!f23204f.mo8651d(fz2Var2, wy2Var, wy2.f31844a));
                wy2 wy2Var4 = wy2Var;
                while (true) {
                    wy2 wy2Var5 = wy2Var4;
                    wy2Var2 = wy2Var3;
                    if (wy2Var5 != null) {
                        wy2Var4 = wy2Var5.f31847d;
                        wy2Var5.f31847d = wy2Var3;
                        wy2Var3 = wy2Var5;
                    }
                }
                while (wy2Var2 != null) {
                    wy2Var3 = wy2Var2.f31847d;
                    Runnable runnable = wy2Var2.f31845b;
                    runnable.getClass();
                    if (runnable instanceof zy2) {
                        zy2 zy2Var = (zy2) runnable;
                        fz2Var2 = (fz2<V>) zy2Var.f33453d;
                        if (fz2Var2.f23206h == zy2Var) {
                            if (f23204f.mo8650e(fz2Var2, zy2Var, m15016h(zy2Var.f33454e))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        Executor executor = wy2Var2.f31846c;
                        executor.getClass();
                        m15019c(runnable, executor);
                    }
                    wy2Var2 = wy2Var3;
                }
                return;
            }
        }
    }

    /* renamed from: C */
    private final void m15022C(StringBuilder sb) {
        String str;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.f23206h;
        if (obj instanceof zy2) {
            sb.append(", setFuture=[");
            m15020b(sb, ((zy2) obj).f33454e);
            sb.append("]");
        } else {
            try {
                str = iv2.m14269b(mo9813i());
            } catch (RuntimeException | StackOverflowError e) {
                String valueOf = String.valueOf(e.getClass());
                valueOf.length();
                str = "Exception thrown from implementation: ".concat(valueOf);
            }
            if (str != null) {
                sb.append(", info=[");
                sb.append(str);
                sb.append("]");
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            m15021D(sb);
        }
    }

    /* renamed from: D */
    private final void m15021D(StringBuilder sb) {
        try {
            Object m15024A = m15024A(this);
            sb.append("SUCCESS, result=[");
            if (m15024A == null) {
                sb.append("null");
            } else if (m15024A == this) {
                sb.append("this future");
            } else {
                sb.append(m15024A.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(m15024A)));
            }
            sb.append("]");
        } catch (CancellationException e) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    /* renamed from: b */
    private final void m15020b(StringBuilder sb, Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        }
    }

    /* renamed from: c */
    private static void m15019c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f23203e;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.AbstractFuture", "executeListener", sb.toString(), (Throwable) e);
        }
    }

    /* renamed from: f */
    private static final V m15018f(Object obj) {
        if (obj instanceof vy2) {
            Throwable th = ((vy2) obj).f31411d;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof zzfqw$zzc) {
            throw new ExecutionException(((zzfqw$zzc) obj).f34105b);
        } else {
            Object obj2 = obj;
            if (obj == f23205g) {
                obj2 = null;
            }
            return (V) obj2;
        }
    }

    /* renamed from: g */
    private final void m15017g(ez2 ez2Var) {
        ez2 ez2Var2;
        ez2Var.f22688b = null;
        while (true) {
            ez2 ez2Var3 = this.f23208j;
            if (ez2Var3 != ez2.f22687a) {
                ez2 ez2Var4 = null;
                while (true) {
                    ez2 ez2Var5 = ez2Var4;
                    if (ez2Var3 == null) {
                        return;
                    }
                    ez2 ez2Var6 = ez2Var3.f22689c;
                    if (ez2Var3.f22688b != null) {
                        ez2Var2 = ez2Var3;
                    } else if (ez2Var5 != null) {
                        ez2Var5.f22689c = ez2Var6;
                        ez2Var2 = ez2Var5;
                        if (ez2Var5.f22688b == null) {
                            break;
                        }
                    } else {
                        ez2Var2 = ez2Var5;
                        if (!f23204f.mo8652c(this, ez2Var3, ez2Var6)) {
                            break;
                        }
                    }
                    ez2Var3 = ez2Var6;
                    ez2Var4 = ez2Var2;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: h */
    public static Object m15016h(r03<?> r03Var) {
        Throwable mo14997a;
        if (r03Var instanceof bz2) {
            Object obj = ((fz2) r03Var).f23206h;
            vy2 vy2Var = obj;
            if (obj instanceof vy2) {
                vy2 vy2Var2 = (vy2) obj;
                vy2Var = obj;
                if (vy2Var2.f31410c) {
                    Throwable th = vy2Var2.f31411d;
                    vy2Var = th != null ? new vy2(false, th) : vy2.f31409b;
                }
            }
            vy2Var.getClass();
            return vy2Var;
        } else if ((r03Var instanceof g13) && (mo14997a = ((g13) r03Var).mo14997a()) != null) {
            return new zzfqw$zzc(mo14997a);
        } else {
            boolean isCancelled = r03Var.isCancelled();
            if ((!f23202d) && isCancelled) {
                vy2 vy2Var3 = vy2.f31409b;
                vy2Var3.getClass();
                return vy2Var3;
            }
            try {
                Object m15024A = m15024A(r03Var);
                if (!isCancelled) {
                    Object obj2 = m15024A;
                    if (m15024A == null) {
                        obj2 = f23205g;
                    }
                    return obj2;
                }
                String valueOf = String.valueOf(r03Var);
                StringBuilder sb = new StringBuilder(valueOf.length() + 84);
                sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
                sb.append(valueOf);
                return new vy2(false, new IllegalArgumentException(sb.toString()));
            } catch (CancellationException e) {
                if (isCancelled) {
                    return new vy2(false, e);
                }
                String valueOf2 = String.valueOf(r03Var);
                valueOf2.length();
                return new zzfqw$zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(valueOf2), e));
            } catch (ExecutionException e2) {
                if (!isCancelled) {
                    return new zzfqw$zzc(e2.getCause());
                }
                String valueOf3 = String.valueOf(r03Var);
                valueOf3.length();
                return new vy2(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(valueOf3), e2));
            } catch (Throwable th2) {
                return new zzfqw$zzc(th2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.g13
    /* renamed from: a */
    public final Throwable mo14997a() {
        if (this instanceof bz2) {
            Object obj = this.f23206h;
            if (!(obj instanceof zzfqw$zzc)) {
                return null;
            }
            return ((zzfqw$zzc) obj).f34105b;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ca, code lost:
        r10 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean cancel(boolean r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.fz2.cancel(boolean):boolean");
    }

    /* renamed from: d */
    public void mo10015d(Runnable runnable, Executor executor) {
        wy2 wy2Var;
        xu2.m9054c(runnable, "Runnable was null.");
        xu2.m9054c(executor, "Executor was null.");
        if (!isDone()) {
            wy2 wy2Var2 = this.f23207i;
            if (wy2Var2 != wy2.f31844a) {
                wy2 wy2Var3 = new wy2(runnable, executor);
                do {
                    wy2Var3.f31847d = wy2Var2;
                    if (f23204f.mo8651d(this, wy2Var2, wy2Var3)) {
                        return;
                    }
                    wy2Var = this.f23207i;
                    wy2Var2 = wy2Var;
                } while (wy2Var != wy2.f31844a);
            }
        }
        m15019c(runnable, executor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        java.util.concurrent.locks.LockSupport.park(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        if (java.lang.Thread.interrupted() != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
        r0 = r5.f23206h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0073, code lost:
        if ((r7 & (!(r0 instanceof com.google.android.gms.internal.ads.zy2))) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
        return (V) m15018f(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
        m15017g(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0087, code lost:
        throw new java.lang.InterruptedException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get() {
        /*
            r5 = this;
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto La8
            r0 = r5
            java.lang.Object r0 = r0.f23206h
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L14
            r0 = 1
            r7 = r0
            goto L16
        L14:
            r0 = 0
            r7 = r0
        L16:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zy2
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r6
            java.lang.Object r0 = m15018f(r0)
            return r0
        L26:
            r0 = r5
            com.google.android.gms.internal.ads.ez2 r0 = r0.f23208j
            r6 = r0
            r0 = r6
            com.google.android.gms.internal.ads.ez2 r1 = com.google.android.gms.internal.ads.ez2.f22687a
            if (r0 == r1) goto L99
            com.google.android.gms.internal.ads.ez2 r0 = new com.google.android.gms.internal.ads.ez2
            r1 = r0
            r1.<init>()
            r8 = r0
        L3a:
            com.google.android.gms.internal.ads.uy2 r0 = com.google.android.gms.internal.ads.fz2.f23204f
            r9 = r0
            r0 = r9
            r1 = r8
            r2 = r6
            r0.mo8653b(r1, r2)
            r0 = r9
            r1 = r5
            r2 = r6
            r3 = r8
            boolean r0 = r0.mo8652c(r1, r2, r3)
            if (r0 == 0) goto L88
        L51:
            r0 = r5
            java.util.concurrent.locks.LockSupport.park(r0)
            boolean r0 = java.lang.Thread.interrupted()
            if (r0 != 0) goto L7b
            r0 = r5
            java.lang.Object r0 = r0.f23206h
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L69
            r0 = 1
            r7 = r0
            goto L6b
        L69:
            r0 = 0
            r7 = r0
        L6b:
            r0 = r7
            r1 = r6
            boolean r1 = r1 instanceof com.google.android.gms.internal.ads.zy2
            r2 = 1
            r1 = r1 ^ r2
            r0 = r0 & r1
            if (r0 == 0) goto L51
            r0 = r6
            java.lang.Object r0 = m15018f(r0)
            return r0
        L7b:
            r0 = r5
            r1 = r8
            r0.m15017g(r1)
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        L88:
            r0 = r5
            com.google.android.gms.internal.ads.ez2 r0 = r0.f23208j
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            com.google.android.gms.internal.ads.ez2 r1 = com.google.android.gms.internal.ads.ez2.f22687a
            if (r0 != r1) goto L3a
        L99:
            r0 = r5
            java.lang.Object r0 = r0.f23206h
            r6 = r0
            r0 = r6
            java.lang.Class r0 = r0.getClass()
            r0 = r6
            java.lang.Object r0 = m15018f(r0)
            return r0
        La8:
            java.lang.InterruptedException r0 = new java.lang.InterruptedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.fz2.get():java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008b, code lost:
        java.util.concurrent.locks.LockSupport.parkNanos(r6, java.lang.Math.min((long) r10, 2147483647999999999L));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009a, code lost:
        if (java.lang.Thread.interrupted() != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009d, code lost:
        r0 = r6.f23206h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a5, code lost:
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a8, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ae, code lost:
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00bb, code lost:
        if ((r14 & (!(r0 instanceof com.google.android.gms.internal.ads.zy2))) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c3, code lost:
        return (V) m15018f(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c4, code lost:
        r17 = r15 - java.lang.System.nanoTime();
        r10 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d6, code lost:
        if (r17 >= 1000) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d9, code lost:
        m15017g(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e2, code lost:
        m15017g(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ef, code lost:
        throw new java.lang.InterruptedException();
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    /* JADX WARN: Type inference failed for: r0v159, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(long r7, java.util.concurrent.TimeUnit r9) {
        /*
            Method dump skipped, instructions count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.fz2.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    /* renamed from: i */
    public String mo9813i() {
        if (this instanceof ScheduledFuture) {
            long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
            StringBuilder sb = new StringBuilder(41);
            sb.append("remaining delay=[");
            sb.append(delay);
            sb.append(" ms]");
            return sb.toString();
        }
        return null;
    }

    public boolean isCancelled() {
        return this.f23206h instanceof vy2;
    }

    public boolean isDone() {
        Object obj = this.f23206h;
        return (!(obj instanceof zy2)) & (obj != null);
    }

    /* renamed from: j */
    protected void mo10469j() {
    }

    /* renamed from: s */
    protected void mo8641s() {
    }

    /* renamed from: t */
    public final boolean m15007t() {
        Object obj = this.f23206h;
        return (obj instanceof vy2) && ((vy2) obj).f31410c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m15021D(sb);
        } else {
            m15022C(sb);
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: u */
    public boolean mo8632u(V v) {
        V v2 = v;
        if (v == null) {
            v2 = f23205g;
        }
        if (f23204f.mo8650e(this, null, v2)) {
            m15023B(this);
            return true;
        }
        return false;
    }

    /* renamed from: v */
    public boolean mo8631v(Throwable th) {
        Objects.requireNonNull(th);
        if (f23204f.mo8650e(this, null, new zzfqw$zzc(th))) {
            m15023B(this);
            return true;
        }
        return false;
    }

    /* renamed from: w */
    public final boolean m15006w(r03<? extends V> r03Var) {
        zzfqw$zzc zzfqw_zzc;
        Objects.requireNonNull(r03Var);
        Object obj = this.f23206h;
        Object obj2 = obj;
        if (obj == null) {
            if (r03Var.isDone()) {
                if (!f23204f.mo8650e(this, null, m15016h(r03Var))) {
                    return false;
                }
                m15023B(this);
                return true;
            }
            zy2 zy2Var = new zy2(this, r03Var);
            if (f23204f.mo8650e(this, null, zy2Var)) {
                try {
                    r03Var.mo10015d(zy2Var, zzfrr.INSTANCE);
                    return true;
                } catch (Throwable th) {
                    try {
                        zzfqw_zzc = new zzfqw$zzc(th);
                    } catch (Throwable th2) {
                        zzfqw_zzc = zzfqw$zzc.f34104a;
                    }
                    f23204f.mo8650e(this, zy2Var, zzfqw_zzc);
                    return true;
                }
            }
            obj2 = this.f23206h;
        }
        if (obj2 instanceof vy2) {
            r03Var.cancel(((vy2) obj2).f31410c);
            return false;
        }
        return false;
    }

    /* renamed from: z */
    public final void m15003z(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(m15007t());
        }
    }
}
