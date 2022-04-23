package androidx.media2.exoplayer.external.upstream;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1161a0;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader.class */
public final class Loader {

    /* renamed from: d */
    public static final C0349c f1985d = new C0349c(2, -9223372036854775807L);

    /* renamed from: e */
    public static final C0349c f1986e = new C0349c(3, -9223372036854775807L);

    /* renamed from: a */
    public final ExecutorService f1987a;

    /* renamed from: b */
    public HandlerC0350d<? extends AbstractC0351e> f1988b;

    /* renamed from: c */
    public IOException f1989c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException.class */
    public static final class UnexpectedLoaderException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnexpectedLoaderException(java.lang.Throwable r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.Class r0 = r0.getClass()
                java.lang.String r0 = r0.getSimpleName()
                r7 = r0
                r0 = r6
                java.lang.String r0 = r0.getMessage()
                r8 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r7
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 13
                int r2 = r2 + r3
                r3 = r8
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                int r2 = r2 + r3
                r1.<init>(r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "Unexpected "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ": "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r9
                java.lang.String r1 = r1.toString()
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.Loader.UnexpectedLoaderException.<init>(java.lang.Throwable):void");
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$b.class */
    public interface AbstractC0348b<T extends AbstractC0351e> {
        /* renamed from: a */
        C0349c mo32573a(T t, long j, long j2, IOException iOException, int i);

        /* renamed from: a */
        void mo32574a(T t, long j, long j2);

        /* renamed from: a */
        void mo32572a(T t, long j, long j2, boolean z);
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$c.class */
    public static final class C0349c {

        /* renamed from: a */
        public final int f1990a;

        /* renamed from: b */
        public final long f1991b;

        public C0349c(int i, long j) {
            this.f1990a = i;
            this.f1991b = j;
        }

        /* renamed from: a */
        public boolean m37909a() {
            int i = this.f1990a;
            boolean z = true;
            if (i != 0) {
                z = i == 1;
            }
            return z;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$d.class */
    public final class HandlerC0350d<T extends AbstractC0351e> extends Handler implements Runnable {

        /* renamed from: a */
        public final int f1992a;

        /* renamed from: b */
        public final T f1993b;

        /* renamed from: c */
        public final long f1994c;

        /* renamed from: d */
        public AbstractC0348b<T> f1995d;

        /* renamed from: e */
        public IOException f1996e;

        /* renamed from: f */
        public int f1997f;

        /* renamed from: g */
        public volatile Thread f1998g;

        /* renamed from: h */
        public volatile boolean f1999h;

        /* renamed from: i */
        public volatile boolean f2000i;

        public HandlerC0350d(Looper looper, T t, AbstractC0348b<T> bVar, int i, long j) {
            super(looper);
            this.f1993b = t;
            this.f1995d = bVar;
            this.f1992a = i;
            this.f1994c = j;
        }

        /* renamed from: a */
        public final void m37906a() {
            this.f1996e = null;
            Loader.this.f1987a.execute(Loader.this.f1988b);
        }

        /* renamed from: a */
        public void m37905a(int i) throws IOException {
            IOException iOException = this.f1996e;
            if (iOException != null && this.f1997f > i) {
                throw iOException;
            }
        }

        /* renamed from: a */
        public void m37904a(long j) {
            C1160a.m34518b(Loader.this.f1988b == null);
            Loader.this.f1988b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                m37906a();
            }
        }

        /* renamed from: a */
        public void m37903a(boolean z) {
            this.f2000i = z;
            this.f1996e = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.f1999h = true;
                this.f1993b.mo32334a();
                if (this.f1998g != null) {
                    this.f1998g.interrupt();
                }
            }
            if (z) {
                m37902b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f1995d.mo32572a(this.f1993b, elapsedRealtime, elapsedRealtime - this.f1994c, true);
                this.f1995d = null;
            }
        }

        /* renamed from: b */
        public final void m37902b() {
            Loader.this.f1988b = null;
        }

        /* renamed from: c */
        public final long m37901c() {
            return Math.min((this.f1997f - 1) * 1000, 5000);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (!this.f2000i) {
                int i = message.what;
                if (i == 0) {
                    m37906a();
                } else if (i != 4) {
                    m37902b();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long j = elapsedRealtime - this.f1994c;
                    if (this.f1999h) {
                        this.f1995d.mo32572a(this.f1993b, elapsedRealtime, j, false);
                        return;
                    }
                    int i2 = message.what;
                    if (i2 == 1) {
                        this.f1995d.mo32572a(this.f1993b, elapsedRealtime, j, false);
                    } else if (i2 == 2) {
                        try {
                            this.f1995d.mo32574a(this.f1993b, elapsedRealtime, j);
                        } catch (RuntimeException e) {
                            C1175j.m34419a("LoadTask", "Unexpected exception handling load completed", e);
                            Loader.this.f1989c = new UnexpectedLoaderException(e);
                        }
                    } else if (i2 == 3) {
                        IOException iOException = (IOException) message.obj;
                        this.f1996e = iOException;
                        int i3 = this.f1997f + 1;
                        this.f1997f = i3;
                        C0349c a = this.f1995d.mo32573a(this.f1993b, elapsedRealtime, j, iOException, i3);
                        if (a.f1990a == 3) {
                            Loader.this.f1989c = this.f1996e;
                        } else if (a.f1990a != 2) {
                            if (a.f1990a == 1) {
                                this.f1997f = 1;
                            }
                            m37904a(a.f1991b != -9223372036854775807L ? a.f1991b : m37901c());
                        }
                    }
                } else {
                    throw ((Error) message.obj);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f1998g = Thread.currentThread();
                if (!this.f1999h) {
                    String valueOf = String.valueOf(this.f1993b.getClass().getSimpleName());
                    C1161a0.m34515a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                    try {
                        this.f1993b.mo32333b();
                        C1161a0.m34516a();
                    } catch (Throwable th) {
                        C1161a0.m34516a();
                        throw th;
                    }
                }
                if (!this.f2000i) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e) {
                if (!this.f2000i) {
                    obtainMessage(3, e).sendToTarget();
                }
            } catch (Error e2) {
                C1175j.m34419a("LoadTask", "Unexpected error loading stream", e2);
                if (!this.f2000i) {
                    obtainMessage(4, e2).sendToTarget();
                }
                throw e2;
            } catch (InterruptedException e3) {
                C1160a.m34518b(this.f1999h);
                if (!this.f2000i) {
                    sendEmptyMessage(2);
                }
            } catch (Exception e4) {
                C1175j.m34419a("LoadTask", "Unexpected exception loading stream", e4);
                if (!this.f2000i) {
                    obtainMessage(3, new UnexpectedLoaderException(e4)).sendToTarget();
                }
            } catch (OutOfMemoryError e5) {
                C1175j.m34419a("LoadTask", "OutOfMemory error loading stream", e5);
                if (!this.f2000i) {
                    obtainMessage(3, new UnexpectedLoaderException(e5)).sendToTarget();
                }
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$e.class */
    public interface AbstractC0351e {
        /* renamed from: a */
        void mo32334a();

        /* renamed from: b */
        void mo32333b() throws IOException, InterruptedException;
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$f.class */
    public interface AbstractC0352f {
        /* renamed from: c */
        void mo32644c();
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$g */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$g.class */
    public static final class RunnableC0353g implements Runnable {

        /* renamed from: a */
        public final AbstractC0352f f2002a;

        public RunnableC0353g(AbstractC0352f fVar) {
            this.f2002a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2002a.mo32644c();
        }
    }

    static {
        m37914a(false, -9223372036854775807L);
        m37914a(true, -9223372036854775807L);
    }

    public Loader(String str) {
        this.f1987a = C1167d0.m34437f(str);
    }

    /* renamed from: a */
    public static C0349c m37914a(boolean z, long j) {
        return new C0349c(z ? 1 : 0, j);
    }

    /* renamed from: a */
    public <T extends AbstractC0351e> long m37919a(T t, AbstractC0348b<T> bVar, int i) {
        Looper myLooper = Looper.myLooper();
        C1160a.m34518b(myLooper != null);
        this.f1989c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC0350d(myLooper, t, bVar, i, elapsedRealtime).m37904a(0L);
        return elapsedRealtime;
    }

    /* renamed from: a */
    public void m37921a() {
        this.f1988b.m37903a(false);
    }

    /* renamed from: a */
    public void m37920a(int i) throws IOException {
        IOException iOException = this.f1989c;
        if (iOException == null) {
            HandlerC0350d<? extends AbstractC0351e> dVar = this.f1988b;
            if (dVar != null) {
                int i2 = i;
                if (i == Integer.MIN_VALUE) {
                    i2 = dVar.f1992a;
                }
                dVar.m37905a(i2);
                return;
            }
            return;
        }
        throw iOException;
    }

    /* renamed from: a */
    public void m37918a(AbstractC0352f fVar) {
        HandlerC0350d<? extends AbstractC0351e> dVar = this.f1988b;
        if (dVar != null) {
            dVar.m37903a(true);
        }
        if (fVar != null) {
            this.f1987a.execute(new RunnableC0353g(fVar));
        }
        this.f1987a.shutdown();
    }

    /* renamed from: b */
    public boolean m37913b() {
        return this.f1988b != null;
    }

    /* renamed from: c */
    public void m37911c() throws IOException {
        m37920a(Integer.MIN_VALUE);
    }

    /* renamed from: d */
    public void m37910d() {
        m37918a((AbstractC0352f) null);
    }
}
