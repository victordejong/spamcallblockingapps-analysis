package b;

import java.io.IOException;
import java.io.InterruptedIOException;
/* loaded from: classes-dex2jar.jar:b/a.class */
public class a extends r {

    /* renamed from: a  reason: collision with root package name */
    private static a f310a;
    private boolean e;
    private a f;
    private long g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:b/a$a.class */
    public static final class C0017a extends Thread {
        public C0017a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            while (true) {
                try {
                    a b2 = a.b();
                    if (b2 != null) {
                        b2.a();
                    }
                } catch (InterruptedException e) {
                }
            }
        }
    }

    private static void a(a aVar, long j, boolean z) {
        synchronized (a.class) {
            try {
                if (f310a == null) {
                    f310a = new a();
                    new C0017a().start();
                }
                long nanoTime = System.nanoTime();
                if (j != 0 && z) {
                    aVar.g = Math.min(j, aVar.f() - nanoTime) + nanoTime;
                } else if (j != 0) {
                    aVar.g = nanoTime + j;
                } else if (z) {
                    aVar.g = aVar.f();
                } else {
                    throw new AssertionError();
                }
                long j2 = aVar.g;
                a aVar2 = f310a;
                while (aVar2.f != null && j2 - nanoTime >= aVar2.f.g - nanoTime) {
                    aVar2 = aVar2.f;
                }
                aVar.f = aVar2.f;
                aVar2.f = aVar;
                if (aVar2 == f310a) {
                    a.class.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0013, code lost:
        r4.f = r3.f;
        r3.f = null;
        r5 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(b.a r3) {
        /*
            java.lang.Class<b.a> r0 = b.a.class
            monitor-enter(r0)
            b.a r0 = b.a.f310a     // Catch: all -> 0x0034
            r4 = r0
        L_0x0007:
            r0 = r4
            if (r0 == 0) goto L_0x002f
            r0 = r4
            b.a r0 = r0.f     // Catch: all -> 0x0034
            r1 = r3
            if (r0 != r1) goto L_0x0027
            r0 = r4
            r1 = r3
            b.a r1 = r1.f     // Catch: all -> 0x0034
            r0.f = r1     // Catch: all -> 0x0034
            r0 = r3
            r1 = 0
            r0.f = r1     // Catch: all -> 0x0034
            r0 = 0
            r5 = r0
        L_0x0022:
            java.lang.Class<b.a> r0 = b.a.class
            monitor-exit(r0)
            r0 = r5
            return r0
        L_0x0027:
            r0 = r4
            b.a r0 = r0.f     // Catch: all -> 0x0034
            r4 = r0
            goto L_0x0007
        L_0x002f:
            r0 = 1
            r5 = r0
            goto L_0x0022
        L_0x0034:
            r3 = move-exception
            java.lang.Class<b.a> r0 = b.a.class
            monitor-exit(r0)
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.a(b.a):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a b() {
        a aVar = null;
        synchronized (a.class) {
            try {
                a aVar2 = f310a.f;
                if (aVar2 == null) {
                    a.class.wait();
                } else {
                    long nanoTime = aVar2.g - System.nanoTime();
                    if (nanoTime > 0) {
                        long j = nanoTime / 1000000;
                        a.class.wait(j, (int) (nanoTime - (1000000 * j)));
                    } else {
                        f310a.f = aVar2.f;
                        aVar2.f = null;
                        aVar = aVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    final IOException a(IOException iOException) {
        if (d()) {
            InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
            interruptedIOException.initCause(iOException);
            iOException = interruptedIOException;
        }
        return iOException;
    }

    public void a() {
    }

    final void a(boolean z) {
        if (d() && z) {
            throw new InterruptedIOException("timeout");
        }
    }

    public final void c() {
        if (this.e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long j = this.d;
        boolean z = this.c;
        if (j != 0 || z) {
            this.e = true;
            a(this, j, z);
        }
    }

    public final boolean d() {
        boolean z = false;
        if (this.e) {
            this.e = false;
            z = a(this);
        }
        return z;
    }
}
