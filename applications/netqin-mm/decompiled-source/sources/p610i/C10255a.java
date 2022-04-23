package p610i;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* renamed from: i.a */
/* loaded from: classes2-dex2jar.jar:i/a.class */
public class C10255a extends C10282r {

    /* renamed from: h */
    public static final long f37875h = TimeUnit.SECONDS.toMillis(60);

    /* renamed from: i */
    public static final long f37876i = TimeUnit.MILLISECONDS.toNanos(f37875h);

    /* renamed from: j */
    public static C10255a f37877j;

    /* renamed from: e */
    public boolean f37878e;

    /* renamed from: f */
    public C10255a f37879f;

    /* renamed from: g */
    public long f37880g;

    /* renamed from: i.a$a */
    /* loaded from: classes2-dex2jar.jar:i/a$a.class */
    public class C10256a implements AbstractC10280p {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10280p f37881a;

        public C10256a(AbstractC10280p pVar) {
            this.f37881a = pVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v4 */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // p610i.AbstractC10280p
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo706a(p610i.C10260c r8, long r9) throws java.io.IOException {
            /*
                r7 = this;
                r0 = r8
                long r0 = r0.f37889b
                r1 = 0
                r2 = r9
                p610i.C10284s.m693a(r0, r1, r2)
            L_0x0009:
                r0 = 0
                r11 = r0
                r0 = r9
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0088
                r0 = r8
                i.n r0 = r0.f37888a
                r13 = r0
            L_0x0018:
                r0 = r11
                r14 = r0
                r0 = r11
                r1 = 65536(0x10000, double:3.2379E-319)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x004d
                r0 = r11
                r1 = r13
                int r1 = r1.f37919c
                r2 = r13
                int r2 = r2.f37918b
                int r1 = r1 - r2
                long r1 = (long) r1
                long r0 = r0 + r1
                r11 = r0
                r0 = r11
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0043
                r0 = r9
                r14 = r0
                goto L_0x004d
            L_0x0043:
                r0 = r13
                i.n r0 = r0.f37922f
                r13 = r0
                goto L_0x0018
            L_0x004d:
                r0 = r7
                i.a r0 = p610i.C10255a.this
                r0.m789g()
                r0 = r7
                i.p r0 = r0.f37881a     // Catch: all -> 0x0070, IOException -> 0x0074
                r1 = r8
                r2 = r14
                r0.mo706a(r1, r2)     // Catch: all -> 0x0070, IOException -> 0x0074
                r0 = r9
                r1 = r14
                long r0 = r0 - r1
                r9 = r0
                r0 = r7
                i.a r0 = p610i.C10255a.this
                r1 = 1
                r0.m791a(r1)
                goto L_0x0009
            L_0x0070:
                r8 = move-exception
                goto L_0x007e
            L_0x0074:
                r8 = move-exception
                r0 = r7
                i.a r0 = p610i.C10255a.this     // Catch: all -> 0x0070
                r1 = r8
                java.io.IOException r0 = r0.m792a(r1)     // Catch: all -> 0x0070
                throw r0     // Catch: all -> 0x0070
            L_0x007e:
                r0 = r7
                i.a r0 = p610i.C10255a.this
                r1 = 0
                r0.m791a(r1)
                r0 = r8
                throw r0
            L_0x0088:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p610i.C10255a.C10256a.mo706a(i.c, long):void");
        }

        @Override // p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            C10255a.this.m789g();
            try {
                try {
                    this.f37881a.close();
                    C10255a.this.m791a(true);
                } catch (IOException e) {
                    throw C10255a.this.m792a(e);
                }
            } catch (Throwable th) {
                C10255a.this.m791a(false);
                throw th;
            }
        }

        @Override // p610i.AbstractC10280p
        /* renamed from: f0 */
        public C10282r mo705f0() {
            return C10255a.this;
        }

        @Override // p610i.AbstractC10280p, java.io.Flushable
        public void flush() throws IOException {
            C10255a.this.m789g();
            try {
                try {
                    this.f37881a.flush();
                    C10255a.this.m791a(true);
                } catch (IOException e) {
                    throw C10255a.this.m792a(e);
                }
            } catch (Throwable th) {
                C10255a.this.m791a(false);
                throw th;
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f37881a + ")";
        }
    }

    /* renamed from: i.a$b */
    /* loaded from: classes2-dex2jar.jar:i/a$b.class */
    public class C10257b implements AbstractC10281q {

        /* renamed from: a */
        public final /* synthetic */ AbstractC10281q f37883a;

        public C10257b(AbstractC10281q qVar) {
            this.f37883a = qVar;
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            C10255a.this.m789g();
            try {
                try {
                    long b = this.f37883a.mo704b(cVar, j);
                    C10255a.this.m791a(true);
                    return b;
                } catch (IOException e) {
                    throw C10255a.this.m792a(e);
                }
            } catch (Throwable th) {
                C10255a.this.m791a(false);
                throw th;
            }
        }

        @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                try {
                    this.f37883a.close();
                    C10255a.this.m791a(true);
                } catch (IOException e) {
                    throw C10255a.this.m792a(e);
                }
            } catch (Throwable th) {
                C10255a.this.m791a(false);
                throw th;
            }
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: f0 */
        public C10282r mo703f0() {
            return C10255a.this;
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f37883a + ")";
        }
    }

    /* renamed from: i.a$c */
    /* loaded from: classes2-dex2jar.jar:i/a$c.class */
    public static final class C10258c extends Thread {
        public C10258c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
            r0.mo740i();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L_0x0000:
                java.lang.Class<i.a> r0 = p610i.C10255a.class
                monitor-enter(r0)     // Catch: InterruptedException -> 0x0036
                i.a r0 = p610i.C10255a.m787j()     // Catch: all -> 0x002a, InterruptedException -> 0x0036
                r4 = r0
                r0 = r4
                if (r0 != 0) goto L_0x0011
                java.lang.Class<i.a> r0 = p610i.C10255a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                goto L_0x0000
            L_0x0011:
                r0 = r4
                i.a r1 = p610i.C10255a.f37877j     // Catch: all -> 0x002a
                if (r0 != r1) goto L_0x0020
                r0 = 0
                p610i.C10255a.f37877j = r0     // Catch: all -> 0x002a
                java.lang.Class<i.a> r0 = p610i.C10255a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                return
            L_0x0020:
                java.lang.Class<i.a> r0 = p610i.C10255a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                r0 = r4
                r0.mo740i()     // Catch: InterruptedException -> 0x0036
                goto L_0x0000
            L_0x002a:
                r4 = move-exception
                java.lang.Class<i.a> r0 = p610i.C10255a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                goto L_0x0033
            L_0x0031:
                r0 = r4
                throw r0
            L_0x0033:
                goto L_0x0031
            L_0x0036:
                r4 = move-exception
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: p610i.C10255a.C10258c.run():void");
        }
    }

    /* renamed from: a */
    public static void m795a(C10255a aVar, long j, boolean z) {
        synchronized (C10255a.class) {
            try {
                if (f37877j == null) {
                    f37877j = new C10255a();
                    new C10258c().start();
                }
                long nanoTime = System.nanoTime();
                if (j != 0 && z) {
                    aVar.f37880g = Math.min(j, aVar.mo700c() - nanoTime) + nanoTime;
                } else if (j != 0) {
                    aVar.f37880g = j + nanoTime;
                } else if (z) {
                    aVar.f37880g = aVar.mo700c();
                } else {
                    throw new AssertionError();
                }
                long b = aVar.m790b(nanoTime);
                C10255a aVar2 = f37877j;
                while (aVar2.f37879f != null && b >= aVar2.f37879f.m790b(nanoTime)) {
                    aVar2 = aVar2.f37879f;
                }
                aVar.f37879f = aVar2.f37879f;
                aVar2.f37879f = aVar;
                if (aVar2 == f37877j) {
                    C10255a.class.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static boolean m796a(C10255a aVar) {
        synchronized (C10255a.class) {
            try {
                for (C10255a aVar2 = f37877j; aVar2 != null; aVar2 = aVar2.f37879f) {
                    if (aVar2.f37879f == aVar) {
                        aVar2.f37879f = aVar.f37879f;
                        aVar.f37879f = null;
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: j */
    public static C10255a m787j() throws InterruptedException {
        C10255a aVar = f37877j.f37879f;
        if (aVar == null) {
            long nanoTime = System.nanoTime();
            C10255a.class.wait(f37875h);
            C10255a aVar2 = null;
            if (f37877j.f37879f == null) {
                aVar2 = null;
                if (System.nanoTime() - nanoTime >= f37876i) {
                    aVar2 = f37877j;
                }
            }
            return aVar2;
        }
        long b = aVar.m790b(System.nanoTime());
        if (b > 0) {
            long j = b / 1000000;
            C10255a.class.wait(j, (int) (b - (1000000 * j)));
            return null;
        }
        f37877j.f37879f = aVar.f37879f;
        aVar.f37879f = null;
        return aVar;
    }

    /* renamed from: a */
    public final AbstractC10280p m794a(AbstractC10280p pVar) {
        return new C10256a(pVar);
    }

    /* renamed from: a */
    public final AbstractC10281q m793a(AbstractC10281q qVar) {
        return new C10257b(qVar);
    }

    /* renamed from: a */
    public final IOException m792a(IOException iOException) throws IOException {
        return !m788h() ? iOException : mo741b(iOException);
    }

    /* renamed from: a */
    public final void m791a(boolean z) throws IOException {
        if (m788h() && z) {
            throw mo741b((IOException) null);
        }
    }

    /* renamed from: b */
    public final long m790b(long j) {
        return this.f37880g - j;
    }

    /* renamed from: b */
    public IOException mo741b(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: g */
    public final void m789g() {
        if (!this.f37878e) {
            long f = mo698f();
            boolean d = mo699d();
            if (f != 0 || d) {
                this.f37878e = true;
                m795a(this, f, d);
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    /* renamed from: h */
    public final boolean m788h() {
        if (!this.f37878e) {
            return false;
        }
        this.f37878e = false;
        return m796a(this);
    }

    /* renamed from: i */
    public void mo740i() {
    }
}
