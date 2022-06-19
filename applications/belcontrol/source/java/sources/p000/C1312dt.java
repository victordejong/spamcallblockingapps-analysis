package p000;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.C0515C;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* renamed from: dt */
/* loaded from: classes-dex2jar.jar:dt.class */
public final class C1312dt {

    /* renamed from: d */
    public static final C1315c f6118d = new C1315c(2, C0515C.TIME_UNSET);

    /* renamed from: e */
    public static final C1315c f6119e = new C1315c(3, C0515C.TIME_UNSET);

    /* renamed from: a */
    public final ExecutorService f6120a;

    /* renamed from: b */
    public HandlerC1316d<? extends AbstractC1317e> f6121b;

    /* renamed from: c */
    public IOException f6122c;

    /* renamed from: dt$b */
    /* loaded from: classes-dex2jar.jar:dt$b.class */
    public interface AbstractC1314b<T extends AbstractC1317e> {
        /* renamed from: c */
        C1315c m2432c(T t, long j, long j2, IOException iOException, int i);

        /* renamed from: h */
        void m2431h(T t, long j, long j2);

        /* renamed from: j */
        void m2430j(T t, long j, long j2, boolean z);
    }

    /* renamed from: dt$c */
    /* loaded from: classes-dex2jar.jar:dt$c.class */
    public static final class C1315c {

        /* renamed from: a */
        public final int f6123a;

        /* renamed from: b */
        public final long f6124b;

        public C1315c(int i, long j) {
            this.f6123a = i;
            this.f6124b = j;
        }

        /* renamed from: c */
        public boolean m2427c() {
            int i = this.f6123a;
            boolean z = true;
            if (i != 0) {
                z = i == 1;
            }
            return z;
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: dt$d */
    /* loaded from: classes-dex2jar.jar:dt$d.class */
    public final class HandlerC1316d<T extends AbstractC1317e> extends Handler implements Runnable {

        /* renamed from: a */
        public final int f6125a;

        /* renamed from: b */
        public final T f6126b;

        /* renamed from: c */
        public final long f6127c;

        /* renamed from: d */
        public AbstractC1314b<T> f6128d;

        /* renamed from: f */
        public IOException f6129f;

        /* renamed from: g */
        public int f6130g;

        /* renamed from: h */
        public volatile Thread f6131h;

        /* renamed from: j */
        public volatile boolean f6132j;

        /* renamed from: k */
        public volatile boolean f6133k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC1316d(Looper looper, T t, AbstractC1314b<T> abstractC1314b, int i, long j) {
            super(looper);
            C1312dt.this = r5;
            this.f6126b = t;
            this.f6128d = abstractC1314b;
            this.f6125a = i;
            this.f6127c = j;
        }

        /* renamed from: a */
        public void m2426a(boolean z) {
            this.f6133k = z;
            this.f6129f = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.f6132j = true;
                this.f6126b.cancelLoad();
                if (this.f6131h != null) {
                    this.f6131h.interrupt();
                }
            }
            if (z) {
                m2424c();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f6128d.m2430j(this.f6126b, elapsedRealtime, elapsedRealtime - this.f6127c, true);
                this.f6128d = null;
            }
        }

        /* renamed from: b */
        public final void m2425b() {
            this.f6129f = null;
            C1312dt.this.f6120a.execute(C1312dt.this.f6121b);
        }

        /* renamed from: c */
        public final void m2424c() {
            C1312dt.this.f6121b = null;
        }

        /* renamed from: d */
        public final long m2423d() {
            return Math.min((this.f6130g - 1) * 1000, 5000);
        }

        /* renamed from: e */
        public void m2422e(int i) {
            IOException iOException = this.f6129f;
            if (iOException == null || this.f6130g <= i) {
                return;
            }
            throw iOException;
        }

        /* renamed from: f */
        public void m2421f(long j) {
            it.f(C1312dt.this.f6121b == null);
            C1312dt.this.f6121b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                m2425b();
            }
        }

        /* JADX WARN: Type inference failed for: r0v50, types: [long] */
        /* JADX WARN: Type inference failed for: r0v52, types: [long] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.f6133k) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                m2425b();
            } else if (i == 4) {
                throw ((Error) message.obj);
            } else {
                m2424c();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f6127c;
                if (this.f6132j) {
                    this.f6128d.m2430j(this.f6126b, elapsedRealtime, j, false);
                    return;
                }
                int i2 = message.what;
                if (i2 == 1) {
                    this.f6128d.m2430j(this.f6126b, elapsedRealtime, j, false);
                } else if (i2 == 2) {
                    try {
                        this.f6128d.m2431h(this.f6126b, elapsedRealtime, j);
                    } catch (RuntimeException e) {
                        st.d("LoadTask", "Unexpected exception handling load completed", e);
                        C1312dt.this.f6122c = new C1320h(e);
                    }
                } else if (i2 != 3) {
                } else {
                    IOException iOException = (IOException) message.obj;
                    this.f6129f = iOException;
                    int i3 = this.f6130g + 1;
                    this.f6130g = i3;
                    C1315c m2432c = this.f6128d.m2432c(this.f6126b, elapsedRealtime, j, iOException, i3);
                    if (m2432c.f6123a == 3) {
                        C1312dt.this.f6122c = this.f6129f;
                    } else if (m2432c.f6123a == 2) {
                    } else {
                        if (m2432c.f6123a == 1) {
                            this.f6130g = 1;
                        }
                        m2421f(m2432c.f6124b != C0515C.TIME_UNSET ? m2432c.f6124b : m2423d());
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f6131h = Thread.currentThread();
                if (!this.f6132j) {
                    String valueOf = String.valueOf(this.f6126b.getClass().getSimpleName());
                    ku.a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                    try {
                        this.f6126b.load();
                        ku.c();
                    } catch (Throwable th) {
                        ku.c();
                        throw th;
                    }
                }
                if (this.f6133k) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e) {
                e = e;
                if (this.f6133k) {
                    return;
                }
                obtainMessage(3, e).sendToTarget();
            } catch (Error e2) {
                st.d("LoadTask", "Unexpected error loading stream", e2);
                if (!this.f6133k) {
                    obtainMessage(4, e2).sendToTarget();
                }
                throw e2;
            } catch (InterruptedException e3) {
                it.f(this.f6132j);
                if (this.f6133k) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (Exception e4) {
                st.d("LoadTask", "Unexpected exception loading stream", e4);
                if (this.f6133k) {
                    return;
                }
                e = new C1320h(e4);
                obtainMessage(3, e).sendToTarget();
            } catch (OutOfMemoryError e5) {
                st.d("LoadTask", "OutOfMemory error loading stream", e5);
                if (this.f6133k) {
                    return;
                }
                e = new C1320h(e5);
                obtainMessage(3, e).sendToTarget();
            }
        }
    }

    /* renamed from: dt$e */
    /* loaded from: classes-dex2jar.jar:dt$e.class */
    public interface AbstractC1317e {
        void cancelLoad();

        void load();
    }

    /* renamed from: dt$f */
    /* loaded from: classes-dex2jar.jar:dt$f.class */
    public interface AbstractC1318f {
        void onLoaderReleased();
    }

    /* renamed from: dt$g */
    /* loaded from: classes-dex2jar.jar:dt$g.class */
    public static final class RunnableC1319g implements Runnable {

        /* renamed from: a */
        public final AbstractC1318f f6135a;

        public RunnableC1319g(AbstractC1318f abstractC1318f) {
            this.f6135a = abstractC1318f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6135a.onLoaderReleased();
        }
    }

    /* renamed from: dt$h */
    /* loaded from: classes-dex2jar.jar:dt$h.class */
    public static final class C1320h extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C1320h(java.lang.Throwable r6) {
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
            throw new UnsupportedOperationException("Method not decompiled: p000.C1312dt.C1320h.<init>(java.lang.Throwable):void");
        }
    }

    static {
        m2439f(false, C0515C.TIME_UNSET);
        m2439f(true, C0515C.TIME_UNSET);
    }

    public C1312dt(String str) {
        this.f6120a = nu.X(str);
    }

    /* renamed from: f */
    public static C1315c m2439f(boolean z, long j) {
        return new C1315c(z ? 1 : 0, j);
    }

    /* renamed from: e */
    public void m2440e() {
        this.f6121b.m2426a(false);
    }

    /* renamed from: g */
    public boolean m2438g() {
        return this.f6121b != null;
    }

    /* renamed from: h */
    public void m2437h() {
        m2436i(Integer.MIN_VALUE);
    }

    /* renamed from: i */
    public void m2436i(int i) {
        IOException iOException = this.f6122c;
        if (iOException == null) {
            HandlerC1316d<? extends AbstractC1317e> handlerC1316d = this.f6121b;
            if (handlerC1316d == null) {
                return;
            }
            int i2 = i;
            if (i == Integer.MIN_VALUE) {
                i2 = handlerC1316d.f6125a;
            }
            handlerC1316d.m2422e(i2);
            return;
        }
        throw iOException;
    }

    /* renamed from: j */
    public void m2435j() {
        m2434k(null);
    }

    /* renamed from: k */
    public void m2434k(AbstractC1318f abstractC1318f) {
        HandlerC1316d<? extends AbstractC1317e> handlerC1316d = this.f6121b;
        if (handlerC1316d != null) {
            handlerC1316d.m2426a(true);
        }
        if (abstractC1318f != null) {
            this.f6120a.execute(new RunnableC1319g(abstractC1318f));
        }
        this.f6120a.shutdown();
    }

    /* renamed from: l */
    public <T extends AbstractC1317e> long m2433l(T t, AbstractC1314b<T> abstractC1314b, int i) {
        Looper myLooper = Looper.myLooper();
        it.f(myLooper != null);
        this.f6122c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC1316d(myLooper, t, abstractC1314b, i, elapsedRealtime).m2421f(0L);
        return elapsedRealtime;
    }
}
