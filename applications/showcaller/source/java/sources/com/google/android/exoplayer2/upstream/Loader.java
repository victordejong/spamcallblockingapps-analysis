package com.google.android.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5511f0;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5526o;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader.class */
public final class Loader {

    /* renamed from: a */
    public static final C5463c f17688a = m19048g(false, -9223372036854775807L);

    /* renamed from: b */
    public static final C5463c f17689b = m19048g(true, -9223372036854775807L);

    /* renamed from: c */
    public static final C5463c f17690c = new C5463c(2, -9223372036854775807L);

    /* renamed from: d */
    public static final C5463c f17691d = new C5463c(3, -9223372036854775807L);

    /* renamed from: e */
    private final ExecutorService f17692e;

    /* renamed from: f */
    private HandlerC5464d<? extends AbstractC5465e> f17693f;

    /* renamed from: g */
    private IOException f17694g;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException.class */
    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$b.class */
    public interface AbstractC5462b<T extends AbstractC5465e> {
        /* renamed from: i */
        void mo19040i(T t, long j, long j2, boolean z);

        /* renamed from: k */
        void mo19039k(T t, long j, long j2);

        /* renamed from: s */
        C5463c mo19038s(T t, long j, long j2, IOException iOException, int i);
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$c.class */
    public static final class C5463c {

        /* renamed from: a */
        private final int f17695a;

        /* renamed from: b */
        private final long f17696b;

        private C5463c(int i, long j) {
            this.f17695a = i;
            this.f17696b = j;
        }

        /* renamed from: c */
        public boolean m19035c() {
            int i = this.f17695a;
            boolean z = true;
            if (i != 0) {
                z = i == 1;
            }
            return z;
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: com.google.android.exoplayer2.upstream.Loader$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$d.class */
    public final class HandlerC5464d<T extends AbstractC5465e> extends Handler implements Runnable {

        /* renamed from: d */
        public final int f17697d;

        /* renamed from: e */
        private final T f17698e;

        /* renamed from: f */
        private final long f17699f;

        /* renamed from: g */
        private AbstractC5462b<T> f17700g;

        /* renamed from: h */
        private IOException f17701h;

        /* renamed from: i */
        private int f17702i;

        /* renamed from: j */
        private volatile Thread f17703j;

        /* renamed from: k */
        private volatile boolean f17704k;

        /* renamed from: l */
        private volatile boolean f17705l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC5464d(Looper looper, T t, AbstractC5462b<T> abstractC5462b, int i, long j) {
            super(looper);
            Loader.this = r5;
            this.f17698e = t;
            this.f17700g = abstractC5462b;
            this.f17697d = i;
            this.f17699f = j;
        }

        /* renamed from: b */
        private void m19033b() {
            this.f17701h = null;
            Loader.this.f17692e.execute((Runnable) C5508e.m18911e(Loader.this.f17693f));
        }

        /* renamed from: c */
        private void m19032c() {
            Loader.this.f17693f = null;
        }

        /* renamed from: d */
        private long m19031d() {
            return Math.min((this.f17702i - 1) * 1000, 5000);
        }

        /* renamed from: a */
        public void m19034a(boolean z) {
            this.f17705l = z;
            this.f17701h = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.f17704k = true;
                this.f17698e.mo18955c();
                Thread thread = this.f17703j;
                if (thread != null) {
                    thread.interrupt();
                }
            }
            if (z) {
                m19032c();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((AbstractC5462b) C5508e.m18911e(this.f17700g)).mo19040i(this.f17698e, elapsedRealtime, elapsedRealtime - this.f17699f, true);
                this.f17700g = null;
            }
        }

        /* renamed from: e */
        public void m19030e(int i) {
            IOException iOException = this.f17701h;
            if (iOException == null || this.f17702i <= i) {
                return;
            }
            throw iOException;
        }

        /* renamed from: f */
        public void m19029f(long j) {
            C5508e.m18910f(Loader.this.f17693f == null);
            Loader.this.f17693f = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                m19033b();
            }
        }

        /* JADX WARN: Type inference failed for: r0v51, types: [long] */
        /* JADX WARN: Type inference failed for: r0v53, types: [long] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.f17705l) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                m19033b();
            } else if (i == 4) {
                throw ((Error) message.obj);
            } else {
                m19032c();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f17699f;
                AbstractC5462b abstractC5462b = (AbstractC5462b) C5508e.m18911e(this.f17700g);
                if (this.f17704k) {
                    abstractC5462b.mo19040i(this.f17698e, elapsedRealtime, j, false);
                    return;
                }
                int i2 = message.what;
                if (i2 == 1) {
                    abstractC5462b.mo19040i(this.f17698e, elapsedRealtime, j, false);
                } else if (i2 == 2) {
                    try {
                        abstractC5462b.mo19039k(this.f17698e, elapsedRealtime, j);
                    } catch (RuntimeException e) {
                        C5526o.m18744d("LoadTask", "Unexpected exception handling load completed", e);
                        Loader.this.f17694g = new UnexpectedLoaderException(e);
                    }
                } else if (i2 != 3) {
                } else {
                    IOException iOException = (IOException) message.obj;
                    this.f17701h = iOException;
                    int i3 = this.f17702i + 1;
                    this.f17702i = i3;
                    C5463c mo19038s = abstractC5462b.mo19038s(this.f17698e, elapsedRealtime, j, iOException, i3);
                    if (mo19038s.f17695a == 3) {
                        Loader.this.f17694g = this.f17701h;
                    } else if (mo19038s.f17695a == 2) {
                    } else {
                        if (mo19038s.f17695a == 1) {
                            this.f17702i = 1;
                        }
                        m19029f(mo19038s.f17696b != -9223372036854775807L ? mo19038s.f17696b : m19031d());
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f17703j = Thread.currentThread();
                if (!this.f17704k) {
                    C5511f0.m18893a("load:" + this.f17698e.getClass().getSimpleName());
                    try {
                        this.f17698e.mo18957a();
                        C5511f0.m18891c();
                    } catch (Throwable th) {
                        C5511f0.m18891c();
                        throw th;
                    }
                }
                if (this.f17705l) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e) {
                if (this.f17705l) {
                    return;
                }
                obtainMessage(3, e).sendToTarget();
            } catch (Error e2) {
                C5526o.m18744d("LoadTask", "Unexpected error loading stream", e2);
                if (!this.f17705l) {
                    obtainMessage(4, e2).sendToTarget();
                }
                throw e2;
            } catch (InterruptedException e3) {
                C5508e.m18910f(this.f17704k);
                if (this.f17705l) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (Exception e4) {
                C5526o.m18744d("LoadTask", "Unexpected exception loading stream", e4);
                if (this.f17705l) {
                    return;
                }
                obtainMessage(3, new UnexpectedLoaderException(e4)).sendToTarget();
            } catch (OutOfMemoryError e5) {
                C5526o.m18744d("LoadTask", "OutOfMemory error loading stream", e5);
                if (this.f17705l) {
                    return;
                }
                obtainMessage(3, new UnexpectedLoaderException(e5)).sendToTarget();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$e.class */
    public interface AbstractC5465e {
        /* renamed from: a */
        void mo18957a();

        /* renamed from: c */
        void mo18955c();
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$f.class */
    public interface AbstractC5466f {
        /* renamed from: g */
        void mo19028g();
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$g.class */
    public static final class RunnableC5467g implements Runnable {

        /* renamed from: d */
        private final AbstractC5466f f17707d;

        public RunnableC5467g(AbstractC5466f abstractC5466f) {
            this.f17707d = abstractC5466f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f17707d.mo19028g();
        }
    }

    public Loader(String str) {
        this.f17692e = C5515h0.m18842b0(str);
    }

    /* renamed from: g */
    public static C5463c m19048g(boolean z, long j) {
        return new C5463c(z ? 1 : 0, j);
    }

    /* renamed from: e */
    public void m19050e() {
        ((HandlerC5464d) C5508e.m18908h(this.f17693f)).m19034a(false);
    }

    /* renamed from: f */
    public void m19049f() {
        this.f17694g = null;
    }

    /* renamed from: h */
    public boolean m19047h() {
        return this.f17694g != null;
    }

    /* renamed from: i */
    public boolean m19046i() {
        return this.f17693f != null;
    }

    /* renamed from: j */
    public void m19045j() {
        m19044k(Integer.MIN_VALUE);
    }

    /* renamed from: k */
    public void m19044k(int i) {
        IOException iOException = this.f17694g;
        if (iOException == null) {
            HandlerC5464d<? extends AbstractC5465e> handlerC5464d = this.f17693f;
            if (handlerC5464d == null) {
                return;
            }
            int i2 = i;
            if (i == Integer.MIN_VALUE) {
                i2 = handlerC5464d.f17697d;
            }
            handlerC5464d.m19030e(i2);
            return;
        }
        throw iOException;
    }

    /* renamed from: l */
    public void m19043l() {
        m19042m(null);
    }

    /* renamed from: m */
    public void m19042m(AbstractC5466f abstractC5466f) {
        HandlerC5464d<? extends AbstractC5465e> handlerC5464d = this.f17693f;
        if (handlerC5464d != null) {
            handlerC5464d.m19034a(true);
        }
        if (abstractC5466f != null) {
            this.f17692e.execute(new RunnableC5467g(abstractC5466f));
        }
        this.f17692e.shutdown();
    }

    /* renamed from: n */
    public <T extends AbstractC5465e> long m19041n(T t, AbstractC5462b<T> abstractC5462b, int i) {
        Looper looper = (Looper) C5508e.m18908h(Looper.myLooper());
        this.f17694g = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC5464d(looper, t, abstractC5462b, i, elapsedRealtime).m19029f(0L);
        return elapsedRealtime;
    }
}
