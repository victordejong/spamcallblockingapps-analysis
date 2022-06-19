package p1727n3.p1874y.p1876b.p1877a.p1903w0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.mopub.mobileads.AdData;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.w0.a0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/a0.class */
public final class C27392a0 {

    /* renamed from: d */
    public static final C27395c f77103d = new C27395c(2, -9223372036854775807L, null);

    /* renamed from: e */
    public static final C27395c f77104e = new C27395c(3, -9223372036854775807L, null);

    /* renamed from: a */
    public final ExecutorService f77105a;

    /* renamed from: b */
    public HandlerC27396d<? extends AbstractC27397e> f77106b;

    /* renamed from: c */
    public IOException f77107c;

    /* renamed from: n3.y.b.a.w0.a0$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/a0$b.class */
    public interface AbstractC27394b<T extends AbstractC27397e> {
        /* renamed from: l */
        C27395c m405l(T t, long j, long j2, IOException iOException, int i);

        /* renamed from: s */
        void m404s(T t, long j, long j2);

        /* renamed from: t */
        void m403t(T t, long j, long j2, boolean z);
    }

    /* renamed from: n3.y.b.a.w0.a0$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/a0$c.class */
    public static final class C27395c {

        /* renamed from: a */
        public final int f77108a;

        /* renamed from: b */
        public final long f77109b;

        public C27395c(int i, long j, C27393a c27393a) {
            this.f77108a = i;
            this.f77109b = j;
        }

        /* renamed from: a */
        public boolean m402a() {
            int i = this.f77108a;
            boolean z = true;
            if (i != 0) {
                z = i == 1;
            }
            return z;
        }
    }

    /* renamed from: n3.y.b.a.w0.a0$d */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/a0$d.class */
    public final class HandlerC27396d<T extends AbstractC27397e> extends Handler implements Runnable {

        /* renamed from: a */
        public final int f77110a;

        /* renamed from: b */
        public final T f77111b;

        /* renamed from: c */
        public final long f77112c;

        /* renamed from: d */
        public AbstractC27394b<T> f77113d;

        /* renamed from: e */
        public IOException f77114e;

        /* renamed from: f */
        public int f77115f;

        /* renamed from: g */
        public volatile Thread f77116g;

        /* renamed from: h */
        public volatile boolean f77117h;

        /* renamed from: i */
        public volatile boolean f77118i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC27396d(Looper looper, T t, AbstractC27394b<T> abstractC27394b, int i, long j) {
            super(looper);
            C27392a0.this = r5;
            this.f77111b = t;
            this.f77113d = abstractC27394b;
            this.f77110a = i;
            this.f77112c = j;
        }

        /* renamed from: a */
        public void m401a(boolean z) {
            this.f77118i = z;
            this.f77114e = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.f77117h = true;
                this.f77111b.mo398b();
                if (this.f77116g != null) {
                    this.f77116g.interrupt();
                }
            }
            if (z) {
                C27392a0.this.f77106b = null;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f77113d.m403t(this.f77111b, elapsedRealtime, elapsedRealtime - this.f77112c, true);
                this.f77113d = null;
            }
        }

        /* renamed from: b */
        public void m400b(long j) {
            MediaSessionCompat.m43184y(C27392a0.this.f77106b == null);
            C27392a0 c27392a0 = C27392a0.this;
            c27392a0.f77106b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
                return;
            }
            this.f77114e = null;
            c27392a0.f77105a.execute(this);
        }

        /* JADX WARN: Type inference failed for: r0v44, types: [long] */
        /* JADX WARN: Type inference failed for: r0v53, types: [long] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.f77118i) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                this.f77114e = null;
                C27392a0 c27392a0 = C27392a0.this;
                c27392a0.f77105a.execute(c27392a0.f77106b);
            } else if (i == 4) {
                throw ((Error) message.obj);
            } else {
                C27392a0.this.f77106b = null;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f77112c;
                if (this.f77117h) {
                    this.f77113d.m403t(this.f77111b, elapsedRealtime, j, false);
                    return;
                }
                int i2 = message.what;
                if (i2 == 1) {
                    this.f77113d.m403t(this.f77111b, elapsedRealtime, j, false);
                } else if (i2 == 2) {
                    try {
                        this.f77113d.m404s(this.f77111b, elapsedRealtime, j);
                    } catch (RuntimeException e) {
                        C27392a0.this.f77107c = new C27400h(e);
                    }
                } else if (i2 != 3) {
                } else {
                    IOException iOException = (IOException) message.obj;
                    this.f77114e = iOException;
                    int i3 = this.f77115f + 1;
                    this.f77115f = i3;
                    C27395c m405l = this.f77113d.m405l(this.f77111b, elapsedRealtime, j, iOException, i3);
                    int i4 = m405l.f77108a;
                    if (i4 == 3) {
                        C27392a0.this.f77107c = this.f77114e;
                    } else if (i4 == 2) {
                    } else {
                        if (i4 == 1) {
                            this.f77115f = 1;
                        }
                        char c = m405l.f77109b;
                        if (c == -9223372036854775807L) {
                            c = Math.min((this.f77115f - 1) * 1000, (int) AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS);
                        }
                        m400b(c);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f77116g = Thread.currentThread();
                if (!this.f77117h) {
                    String simpleName = this.f77111b.getClass().getSimpleName();
                    MediaSessionCompat.m43235h(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                    try {
                        this.f77111b.mo399a();
                        MediaSessionCompat.m43262X();
                    } catch (Throwable th) {
                        MediaSessionCompat.m43262X();
                        throw th;
                    }
                }
                if (this.f77118i) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e) {
                if (this.f77118i) {
                    return;
                }
                obtainMessage(3, e).sendToTarget();
            } catch (InterruptedException e2) {
                MediaSessionCompat.m43184y(this.f77117h);
                if (this.f77118i) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (Exception e3) {
                if (this.f77118i) {
                    return;
                }
                obtainMessage(3, new C27400h(e3)).sendToTarget();
            } catch (OutOfMemoryError e4) {
                if (this.f77118i) {
                    return;
                }
                obtainMessage(3, new C27400h(e4)).sendToTarget();
            } catch (Error e5) {
                if (!this.f77118i) {
                    obtainMessage(4, e5).sendToTarget();
                }
                throw e5;
            }
        }
    }

    /* renamed from: n3.y.b.a.w0.a0$e */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/a0$e.class */
    public interface AbstractC27397e {
        /* renamed from: a */
        void mo399a() throws IOException, InterruptedException;

        /* renamed from: b */
        void mo398b();
    }

    /* renamed from: n3.y.b.a.w0.a0$f */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/a0$f.class */
    public interface AbstractC27398f {
        /* renamed from: m */
        void m397m();
    }

    /* renamed from: n3.y.b.a.w0.a0$g */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/a0$g.class */
    public static final class RunnableC27399g implements Runnable {

        /* renamed from: a */
        public final AbstractC27398f f77120a;

        public RunnableC27399g(AbstractC27398f abstractC27398f) {
            this.f77120a = abstractC27398f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f77120a.m397m();
        }
    }

    /* renamed from: n3.y.b.a.w0.a0$h */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/a0$h.class */
    public static final class C27400h extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C27400h(java.lang.Throwable r7) {
            /*
                r6 = this;
                r0 = r7
                java.lang.Class r0 = r0.getClass()
                java.lang.String r0 = r0.getSimpleName()
                r8 = r0
                r0 = r7
                java.lang.String r0 = r0.getMessage()
                r9 = r0
                r0 = r8
                int r0 = r0.length()
                r10 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r9
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = r10
                r4 = 13
                int r3 = r3 + r4
                int r2 = r2 + r3
                r1.<init>(r2)
                r11 = r0
                r0 = r11
                java.lang.String r1 = "Unexpected "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r11
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r11
                java.lang.String r1 = ": "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r11
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                r1 = r11
                java.lang.String r1 = r1.toString()
                r2 = r7
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1903w0.C27392a0.C27400h.<init>(java.lang.Throwable):void");
        }
    }

    public C27392a0(String str) {
        int i = C27445x.f77229a;
        this.f77105a = Executors.newSingleThreadExecutor(new ThreadFactory(str) { // from class: n3.y.b.a.x0.w

            /* renamed from: a */
            public final String f77228a;

            {
                this.f77228a = str;
            }

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, this.f77228a);
            }
        });
    }

    /* renamed from: b */
    public static C27395c m410b(boolean z, long j) {
        return new C27395c(z ? 1 : 0, j, null);
    }

    /* renamed from: a */
    public void m411a() {
        this.f77106b.m401a(false);
    }

    /* renamed from: c */
    public boolean m409c() {
        return this.f77106b != null;
    }

    /* renamed from: d */
    public void m408d(int i) throws IOException {
        IOException iOException = this.f77107c;
        if (iOException == null) {
            HandlerC27396d<? extends AbstractC27397e> handlerC27396d = this.f77106b;
            if (handlerC27396d == null) {
                return;
            }
            int i2 = i;
            if (i == Integer.MIN_VALUE) {
                i2 = handlerC27396d.f77110a;
            }
            IOException iOException2 = handlerC27396d.f77114e;
            if (iOException2 != null && handlerC27396d.f77115f > i2) {
                throw iOException2;
            }
            return;
        }
        throw iOException;
    }

    /* renamed from: e */
    public void m407e(AbstractC27398f abstractC27398f) {
        HandlerC27396d<? extends AbstractC27397e> handlerC27396d = this.f77106b;
        if (handlerC27396d != null) {
            handlerC27396d.m401a(true);
        }
        if (abstractC27398f != null) {
            this.f77105a.execute(new RunnableC27399g(abstractC27398f));
        }
        this.f77105a.shutdown();
    }

    /* renamed from: f */
    public <T extends AbstractC27397e> long m406f(T t, AbstractC27394b<T> abstractC27394b, int i) {
        Looper myLooper = Looper.myLooper();
        MediaSessionCompat.m43184y(myLooper != null);
        this.f77107c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC27396d(myLooper, t, abstractC27394b, i, elapsedRealtime).m400b(0L);
        return elapsedRealtime;
    }
}
