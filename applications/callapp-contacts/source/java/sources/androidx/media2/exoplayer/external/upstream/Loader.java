package androidx.media2.exoplayer.external.upstream;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1994aa;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader.class */
public final class Loader {

    /* renamed from: a */
    public static final C1957b f7900a = m41757a(false, -9223372036854775807L);

    /* renamed from: b */
    public static final C1957b f7901b = m41757a(true, -9223372036854775807L);

    /* renamed from: c */
    public static final C1957b f7902c = new C1957b(2, -9223372036854775807L);

    /* renamed from: d */
    public static final C1957b f7903d = new C1957b(3, -9223372036854775807L);

    /* renamed from: e */
    private final ExecutorService f7904e;

    /* renamed from: f */
    private HandlerC1958c<? extends AbstractC1959d> f7905f;

    /* renamed from: g */
    private IOException f7906g;

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

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$a.class */
    public interface AbstractC1956a<T extends AbstractC1959d> {
        /* renamed from: a */
        C1957b mo41753a(T t, long j, long j2, IOException iOException, int i);

        /* renamed from: a */
        void mo41754a(T t, long j, long j2);

        /* renamed from: a */
        void mo41752a(T t, long j, long j2, boolean z);
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$b.class */
    public static final class C1957b {

        /* renamed from: a */
        final int f7907a;

        /* renamed from: b */
        final long f7908b;

        private C1957b(int i, long j) {
            this.f7907a = i;
            this.f7908b = j;
        }

        /* renamed from: a */
        public final boolean m41751a() {
            int i = this.f7907a;
            return i == 0 || i == 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$c.class */
    public final class HandlerC1958c<T extends AbstractC1959d> extends Handler implements Runnable {

        /* renamed from: a */
        public final int f7909a;

        /* renamed from: c */
        private final T f7911c;

        /* renamed from: d */
        private final long f7912d;

        /* renamed from: e */
        private AbstractC1956a<T> f7913e;

        /* renamed from: f */
        private IOException f7914f;

        /* renamed from: g */
        private int f7915g;

        /* renamed from: h */
        private volatile Thread f7916h;

        /* renamed from: i */
        private volatile boolean f7917i;

        /* renamed from: j */
        private volatile boolean f7918j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC1958c(Looper looper, T t, AbstractC1956a<T> abstractC1956a, int i, long j) {
            super(looper);
            Loader.this = r5;
            this.f7911c = t;
            this.f7913e = abstractC1956a;
            this.f7909a = i;
            this.f7912d = j;
        }

        /* renamed from: a */
        private void m41750a() {
            this.f7914f = null;
            Loader.this.f7904e.execute(Loader.this.f7905f);
        }

        /* renamed from: b */
        private void m41746b() {
            Loader.this.f7905f = null;
        }

        /* renamed from: a */
        public final void m41749a(int i) throws IOException {
            IOException iOException = this.f7914f;
            if (iOException == null || this.f7915g <= i) {
                return;
            }
            throw iOException;
        }

        /* renamed from: a */
        public final void m41748a(long j) {
            C1993a.m41686b(Loader.this.f7905f == null);
            Loader.this.f7905f = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                m41750a();
            }
        }

        /* renamed from: a */
        public final void m41747a(boolean z) {
            this.f7918j = z;
            this.f7914f = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.f7917i = true;
                this.f7911c.mo41700a();
                if (this.f7916h != null) {
                    this.f7916h.interrupt();
                }
            }
            if (z) {
                m41746b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f7913e.mo41752a(this.f7911c, elapsedRealtime, elapsedRealtime - this.f7912d, true);
                this.f7913e = null;
            }
        }

        /* JADX WARN: Type inference failed for: r0v54, types: [long] */
        /* JADX WARN: Type inference failed for: r0v56, types: [long] */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (this.f7918j) {
                return;
            }
            if (message.what == 0) {
                m41750a();
            } else if (message.what == 4) {
                throw ((Error) message.obj);
            } else {
                m41746b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f7912d;
                if (this.f7917i) {
                    this.f7913e.mo41752a(this.f7911c, elapsedRealtime, j, false);
                    return;
                }
                int i = message.what;
                if (i == 1) {
                    this.f7913e.mo41752a(this.f7911c, elapsedRealtime, j, false);
                } else if (i == 2) {
                    try {
                        this.f7913e.mo41754a(this.f7911c, elapsedRealtime, j);
                    } catch (RuntimeException e) {
                        C2009j.m41579b("LoadTask", "Unexpected exception handling load completed", e);
                        Loader.this.f7906g = new UnexpectedLoaderException(e);
                    }
                } else if (i != 3) {
                } else {
                    IOException iOException = (IOException) message.obj;
                    this.f7914f = iOException;
                    int i2 = this.f7915g + 1;
                    this.f7915g = i2;
                    C1957b mo41753a = this.f7913e.mo41753a(this.f7911c, elapsedRealtime, j, iOException, i2);
                    if (mo41753a.f7907a == 3) {
                        Loader.this.f7906g = this.f7914f;
                    } else if (mo41753a.f7907a == 2) {
                    } else {
                        if (mo41753a.f7907a == 1) {
                            this.f7915g = 1;
                        }
                        m41748a((long) (mo41753a.f7908b != -9223372036854775807L ? mo41753a.f7908b : Math.min((this.f7915g - 1) * 1000, 5000)));
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f7916h = Thread.currentThread();
                if (!this.f7917i) {
                    String valueOf = String.valueOf(this.f7911c.getClass().getSimpleName());
                    C1994aa.m41683a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                    try {
                        this.f7911c.mo41699b();
                        C1994aa.m41684a();
                    } catch (Throwable th) {
                        C1994aa.m41684a();
                        throw th;
                    }
                }
                if (this.f7918j) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e) {
                if (this.f7918j) {
                    return;
                }
                obtainMessage(3, e).sendToTarget();
            } catch (Error e2) {
                C2009j.m41579b("LoadTask", "Unexpected error loading stream", e2);
                if (!this.f7918j) {
                    obtainMessage(4, e2).sendToTarget();
                }
                throw e2;
            } catch (InterruptedException e3) {
                C1993a.m41686b(this.f7917i);
                if (this.f7918j) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (Exception e4) {
                C2009j.m41579b("LoadTask", "Unexpected exception loading stream", e4);
                if (this.f7918j) {
                    return;
                }
                obtainMessage(3, new UnexpectedLoaderException(e4)).sendToTarget();
            } catch (OutOfMemoryError e5) {
                C2009j.m41579b("LoadTask", "OutOfMemory error loading stream", e5);
                if (this.f7918j) {
                    return;
                }
                obtainMessage(3, new UnexpectedLoaderException(e5)).sendToTarget();
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$d.class */
    public interface AbstractC1959d {
        /* renamed from: a */
        void mo41700a();

        /* renamed from: b */
        void mo41699b() throws IOException, InterruptedException;
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$e.class */
    public interface AbstractC1960e {
        /* renamed from: f */
        void mo41745f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.upstream.Loader$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$f.class */
    public static final class RunnableC1961f implements Runnable {

        /* renamed from: a */
        private final AbstractC1960e f7919a;

        public RunnableC1961f(AbstractC1960e abstractC1960e) {
            this.f7919a = abstractC1960e;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f7919a.mo41745f();
        }
    }

    public Loader(String str) {
        this.f7904e = C1996ac.m41657a(str);
    }

    /* renamed from: a */
    public static C1957b m41757a(boolean z, long j) {
        return new C1957b(z ? 1 : 0, j);
    }

    /* renamed from: a */
    public final <T extends AbstractC1959d> long m41762a(T t, AbstractC1956a<T> abstractC1956a, int i) {
        Looper myLooper = Looper.myLooper();
        C1993a.m41686b(myLooper != null);
        this.f7906g = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC1958c(myLooper, t, abstractC1956a, i, elapsedRealtime).m41748a(0L);
        return elapsedRealtime;
    }

    /* renamed from: a */
    public final void m41763a(int i) throws IOException {
        IOException iOException = this.f7906g;
        if (iOException == null) {
            HandlerC1958c<? extends AbstractC1959d> handlerC1958c = this.f7905f;
            if (handlerC1958c == null) {
                return;
            }
            int i2 = i;
            if (i == Integer.MIN_VALUE) {
                i2 = handlerC1958c.f7909a;
            }
            handlerC1958c.m41749a(i2);
            return;
        }
        throw iOException;
    }

    /* renamed from: a */
    public final void m41761a(AbstractC1960e abstractC1960e) {
        HandlerC1958c<? extends AbstractC1959d> handlerC1958c = this.f7905f;
        if (handlerC1958c != null) {
            handlerC1958c.m41747a(true);
        }
        if (abstractC1960e != null) {
            this.f7904e.execute(new RunnableC1961f(abstractC1960e));
        }
        this.f7904e.shutdown();
    }

    /* renamed from: a */
    public final boolean m41764a() {
        return this.f7905f != null;
    }

    /* renamed from: b */
    public final void m41756b() {
        this.f7905f.m41747a(false);
    }
}
