package p011aa;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* renamed from: aa.c */
/* loaded from: classes2-dex2jar.jar:aa/c.class */
public class C0049c extends C0075z {

    /* renamed from: h */
    public static final long f110h;

    /* renamed from: i */
    public static final long f111i;
    @Nullable

    /* renamed from: j */
    public static C0049c f112j;

    /* renamed from: e */
    public boolean f113e;
    @Nullable

    /* renamed from: f */
    public C0049c f114f;

    /* renamed from: g */
    public long f115g;

    /* renamed from: aa.c$a */
    /* loaded from: classes2-dex2jar.jar:aa/c$a.class */
    public static final class C0050a extends Thread {
        public C0050a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
            r0.mo607m();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<aa.c> r0 = p011aa.C0049c.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L30
                aa.c r0 = p011aa.C0049c.m8867h()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L30
                r4 = r0
                r0 = r4
                if (r0 != 0) goto L11
                java.lang.Class<aa.c> r0 = p011aa.C0049c.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                goto L0
            L11:
                r0 = r4
                aa.c r1 = p011aa.C0049c.f112j     // Catch: java.lang.Throwable -> L2a
                if (r0 != r1) goto L20
                r0 = 0
                p011aa.C0049c.f112j = r0     // Catch: java.lang.Throwable -> L2a
                java.lang.Class<aa.c> r0 = p011aa.C0049c.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                return
            L20:
                java.lang.Class<aa.c> r0 = p011aa.C0049c.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                r0 = r4
                r0.mo607m()     // Catch: java.lang.InterruptedException -> L30
                goto L0
            L2a:
                r4 = move-exception
                java.lang.Class<aa.c> r0 = p011aa.C0049c.class
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
                r0 = r4
                throw r0     // Catch: java.lang.InterruptedException -> L30
            L30:
                r4 = move-exception
                goto L0
            */
            throw new UnsupportedOperationException("Method not decompiled: p011aa.C0049c.C0050a.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f110h = millis;
        f111i = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    @Nullable
    /* renamed from: h */
    public static C0049c m8867h() throws InterruptedException {
        C0049c c0049c = f112j.f114f;
        if (c0049c == null) {
            long nanoTime = System.nanoTime();
            C0049c.class.wait(f110h);
            C0049c c0049c2 = null;
            if (f112j.f114f == null) {
                c0049c2 = null;
                if (System.nanoTime() - nanoTime >= f111i) {
                    c0049c2 = f112j;
                }
            }
            return c0049c2;
        }
        long nanoTime2 = c0049c.f115g - System.nanoTime();
        if (nanoTime2 > 0) {
            long j = nanoTime2 / 1000000;
            C0049c.class.wait(j, (int) (nanoTime2 - (1000000 * j)));
            return null;
        }
        f112j.f114f = c0049c.f114f;
        c0049c.f114f = null;
        return c0049c;
    }

    /* renamed from: i */
    public final void m8866i() {
        C0049c c0049c;
        C0049c c0049c2;
        if (!this.f113e) {
            long j = this.f165c;
            boolean z = this.f163a;
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i == 0 && !z) {
                return;
            }
            this.f113e = true;
            synchronized (C0049c.class) {
                try {
                    if (f112j == null) {
                        f112j = new C0049c();
                        new C0050a().start();
                    }
                    long nanoTime = System.nanoTime();
                    if (i != 0 && z) {
                        this.f115g = Math.min(j, mo8775c() - nanoTime) + nanoTime;
                    } else if (i != 0) {
                        this.f115g = j + nanoTime;
                    } else if (!z) {
                        throw new AssertionError();
                    } else {
                        this.f115g = mo8775c();
                    }
                    long j2 = this.f115g;
                    C0049c c0049c3 = f112j;
                    while (true) {
                        c0049c = c0049c3;
                        c0049c2 = c0049c.f114f;
                        if (c0049c2 == null || j2 - nanoTime < c0049c2.f115g - nanoTime) {
                            break;
                        }
                        c0049c3 = c0049c2;
                    }
                    this.f114f = c0049c2;
                    c0049c.f114f = this;
                    if (c0049c == f112j) {
                        C0049c.class.notify();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    /* renamed from: j */
    public final void m8865j(boolean z) throws IOException {
        if (!m8864k() || !z) {
            return;
        }
        throw mo608l(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        r6.f114f = r3.f114f;
        r3.f114f = null;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8864k() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.f113e
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto Ld
            r0 = 0
            return r0
        Ld:
            r0 = r3
            r1 = 0
            r0.f113e = r1
            java.lang.Class<aa.c> r0 = p011aa.C0049c.class
            monitor-enter(r0)
            aa.c r0 = p011aa.C0049c.f112j     // Catch: java.lang.Throwable -> L49
            r6 = r0
        L19:
            r0 = r6
            if (r0 == 0) goto L42
            r0 = r6
            aa.c r0 = r0.f114f     // Catch: java.lang.Throwable -> L49
            r7 = r0
            r0 = r7
            r1 = r3
            if (r0 != r1) goto L3c
            r0 = r6
            r1 = r3
            aa.c r1 = r1.f114f     // Catch: java.lang.Throwable -> L49
            r0.f114f = r1     // Catch: java.lang.Throwable -> L49
            r0 = r3
            r1 = 0
            r0.f114f = r1     // Catch: java.lang.Throwable -> L49
            java.lang.Class<aa.c> r0 = p011aa.C0049c.class
            monitor-exit(r0)
            goto L47
        L3c:
            r0 = r7
            r6 = r0
            goto L19
        L42:
            r0 = 1
            r5 = r0
            java.lang.Class<aa.c> r0 = p011aa.C0049c.class
            monitor-exit(r0)
        L47:
            r0 = r5
            return r0
        L49:
            r6 = move-exception
            java.lang.Class<aa.c> r0 = p011aa.C0049c.class
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p011aa.C0049c.m8864k():boolean");
    }

    /* renamed from: l */
    public IOException mo608l(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: m */
    public void mo607m() {
    }
}
