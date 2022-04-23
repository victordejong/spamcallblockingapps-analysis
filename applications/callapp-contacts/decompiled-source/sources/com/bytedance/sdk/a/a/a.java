package com.bytedance.sdk.a.a;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/a.class */
public class a extends t {

    /* renamed from: a  reason: collision with root package name */
    static a f7774a;

    /* renamed from: b  reason: collision with root package name */
    private static final long f7775b;

    /* renamed from: d  reason: collision with root package name */
    private static final long f7776d;
    private boolean e;
    private a f;
    private long g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/a$a.class */
    public static final class C0152a extends Thread {
        C0152a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
            r0.a_();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r3 = this;
            L_0x0000:
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.a.a.a.class
                monitor-enter(r0)     // Catch: InterruptedException -> 0x0030
                com.bytedance.sdk.a.a.a r0 = com.bytedance.sdk.a.a.a.d()     // Catch: all -> 0x002a, InterruptedException -> 0x0030
                r4 = r0
                r0 = r4
                if (r0 != 0) goto L_0x0011
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.a.a.a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                goto L_0x0000
            L_0x0011:
                r0 = r4
                com.bytedance.sdk.a.a.a r1 = com.bytedance.sdk.a.a.a.f7774a     // Catch: all -> 0x002a
                if (r0 != r1) goto L_0x0020
                r0 = 0
                com.bytedance.sdk.a.a.a.f7774a = r0     // Catch: all -> 0x002a
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.a.a.a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                return
            L_0x0020:
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.a.a.a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                r0 = r4
                r0.a_()     // Catch: InterruptedException -> 0x0030
                goto L_0x0000
            L_0x002a:
                r4 = move-exception
                java.lang.Class<com.bytedance.sdk.a.a.a> r0 = com.bytedance.sdk.a.a.a.class
                monitor-exit(r0)     // Catch: all -> 0x002a
                r0 = r4
                throw r0     // Catch: InterruptedException -> 0x0030
            L_0x0030:
                r4 = move-exception
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.a.C0152a.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f7775b = millis;
        f7776d = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    private static void a(a aVar, long j, boolean z) {
        synchronized (a.class) {
            try {
                if (f7774a == null) {
                    f7774a = new a();
                    C0152a aVar2 = new C0152a();
                    aVar2.setName("tt_pangle_thread_watch_dog");
                    aVar2.start();
                }
                long nanoTime = System.nanoTime();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i != 0 && z) {
                    aVar.g = Math.min(j, aVar.c_() - nanoTime) + nanoTime;
                } else if (i != 0) {
                    aVar.g = j + nanoTime;
                } else if (z) {
                    aVar.g = aVar.c_();
                } else {
                    throw new AssertionError();
                }
                long b2 = aVar.b(nanoTime);
                a aVar3 = f7774a;
                while (true) {
                    a aVar4 = aVar3.f;
                    if (aVar4 == null || b2 < aVar4.b(nanoTime)) {
                        break;
                    }
                    aVar3 = aVar3.f;
                }
                aVar.f = aVar3.f;
                aVar3.f = aVar;
                if (aVar3 == f7774a) {
                    a.class.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean a(a aVar) {
        synchronized (a.class) {
            try {
                a aVar2 = f7774a;
                while (aVar2 != null) {
                    a aVar3 = aVar2.f;
                    if (aVar3 == aVar) {
                        aVar2.f = aVar.f;
                        aVar.f = null;
                        return false;
                    }
                    aVar2 = aVar3;
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private long b(long j) {
        return this.g - j;
    }

    static a d() throws InterruptedException {
        a aVar = f7774a.f;
        if (aVar == null) {
            long nanoTime = System.nanoTime();
            a.class.wait(f7775b);
            if (f7774a.f != null || System.nanoTime() - nanoTime < f7776d) {
                return null;
            }
            return f7774a;
        }
        long b2 = aVar.b(System.nanoTime());
        if (b2 > 0) {
            long j = b2 / 1000000;
            a.class.wait(j, (int) (b2 - (1000000 * j)));
            return null;
        }
        f7774a.f = aVar.f;
        aVar.f = null;
        return aVar;
    }

    public final r a(final r rVar) {
        return new r() { // from class: com.bytedance.sdk.a.a.a.1
            @Override // com.bytedance.sdk.a.a.r
            public t a() {
                return a.this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r11v0 */
            /* JADX WARN: Type inference failed for: r11v1, types: [long] */
            /* JADX WARN: Type inference failed for: r11v3 */
            /* JADX WARN: Type inference failed for: r9v1, types: [long] */
            /* JADX WARN: Type inference failed for: r9v3 */
            /* JADX WARN: Type inference failed for: r9v4 */
            /* JADX WARN: Unknown variable types count: 2 */
            @Override // com.bytedance.sdk.a.a.r
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void a_(com.bytedance.sdk.a.a.c r8, long r9) throws java.io.IOException {
                /*
                    r7 = this;
                    r0 = r8
                    long r0 = r0.f7785b
                    r1 = 0
                    r2 = r9
                    com.bytedance.sdk.a.a.u.a(r0, r1, r2)
                L_0x0009:
                    r0 = 0
                    r11 = r0
                    r0 = r9
                    r1 = 0
                    int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                    if (r0 <= 0) goto L_0x0088
                    r0 = r8
                    com.bytedance.sdk.a.a.o r0 = r0.f7784a
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
                    int r1 = r1.f7817c
                    r2 = r13
                    int r2 = r2.f7816b
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
                    com.bytedance.sdk.a.a.o r0 = r0.f
                    r13 = r0
                    goto L_0x0018
                L_0x004d:
                    r0 = r7
                    com.bytedance.sdk.a.a.a r0 = com.bytedance.sdk.a.a.a.this
                    r0.a()
                    r0 = r7
                    com.bytedance.sdk.a.a.r r0 = r5     // Catch: all -> 0x0070, IOException -> 0x0074
                    r1 = r8
                    r2 = r14
                    r0.a_(r1, r2)     // Catch: all -> 0x0070, IOException -> 0x0074
                    r0 = r9
                    r1 = r14
                    long r0 = r0 - r1
                    r9 = r0
                    r0 = r7
                    com.bytedance.sdk.a.a.a r0 = com.bytedance.sdk.a.a.a.this
                    r1 = 1
                    r0.a(r1)
                    goto L_0x0009
                L_0x0070:
                    r8 = move-exception
                    goto L_0x007e
                L_0x0074:
                    r8 = move-exception
                    r0 = r7
                    com.bytedance.sdk.a.a.a r0 = com.bytedance.sdk.a.a.a.this     // Catch: all -> 0x0070
                    r1 = r8
                    java.io.IOException r0 = r0.a(r1)     // Catch: all -> 0x0070
                    throw r0     // Catch: all -> 0x0070
                L_0x007e:
                    r0 = r7
                    com.bytedance.sdk.a.a.a r0 = com.bytedance.sdk.a.a.a.this
                    r1 = 0
                    r0.a(r1)
                    r0 = r8
                    throw r0
                L_0x0088:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.a.AnonymousClass1.a_(com.bytedance.sdk.a.a.c, long):void");
            }

            @Override // com.bytedance.sdk.a.a.r, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                a.this.a();
                try {
                    try {
                        rVar.close();
                        a.this.a(true);
                    } catch (IOException e) {
                        throw a.this.a(e);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // com.bytedance.sdk.a.a.r, java.io.Flushable
            public void flush() throws IOException {
                a.this.a();
                try {
                    try {
                        rVar.flush();
                        a.this.a(true);
                    } catch (IOException e) {
                        throw a.this.a(e);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.sink(" + rVar + ")";
            }
        };
    }

    public final s a(final s sVar) {
        return new s() { // from class: com.bytedance.sdk.a.a.a.2
            @Override // com.bytedance.sdk.a.a.s
            public long a(c cVar, long j) throws IOException {
                a.this.a();
                try {
                    try {
                        long a2 = sVar.a(cVar, j);
                        a.this.a(true);
                        return a2;
                    } catch (IOException e) {
                        throw a.this.a(e);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            @Override // com.bytedance.sdk.a.a.s
            public t a() {
                return a.this;
            }

            @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                a.this.a();
                try {
                    try {
                        sVar.close();
                        a.this.a(true);
                    } catch (IOException e) {
                        throw a.this.a(e);
                    }
                } catch (Throwable th) {
                    a.this.a(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.source(" + sVar + ")";
            }
        };
    }

    final IOException a(IOException iOException) throws IOException {
        return !b() ? iOException : b(iOException);
    }

    public final void a() {
        if (!this.e) {
            long b_ = b_();
            boolean c2 = c();
            if (b_ != 0 || c2) {
                this.e = true;
                a(this, b_, c2);
                return;
            }
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    final void a(boolean z) throws IOException {
        if (b() && z) {
            throw b((IOException) null);
        }
    }

    protected void a_() {
    }

    protected IOException b(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final boolean b() {
        if (!this.e) {
            return false;
        }
        this.e = false;
        return a(this);
    }
}
