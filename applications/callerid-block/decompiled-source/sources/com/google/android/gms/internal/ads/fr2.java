package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.gr2;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fr2.class */
final class fr2<T extends gr2> extends Handler implements Runnable {

    /* renamed from: b */
    private final T f6582b;

    /* renamed from: c */
    private final er2<T> f6583c;

    /* renamed from: d */
    public final int f6584d;

    /* renamed from: e */
    private final long f6585e;

    /* renamed from: f */
    private IOException f6586f;

    /* renamed from: g */
    private int f6587g;

    /* renamed from: h */
    private volatile Thread f6588h;

    /* renamed from: i */
    private volatile boolean f6589i;

    /* renamed from: j */
    final /* synthetic */ hr2 f6590j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fr2(hr2 hr2Var, Looper looper, T t, er2<T> er2Var, int i, long j) {
        super(looper);
        this.f6590j = hr2Var;
        this.f6582b = t;
        this.f6583c = er2Var;
        this.f6584d = i;
        this.f6585e = j;
    }

    /* renamed from: d */
    private final void m7450d() {
        ExecutorService executorService;
        fr2 fr2Var;
        this.f6586f = null;
        executorService = this.f6590j.f6766a;
        fr2Var = this.f6590j.f6767b;
        executorService.execute(fr2Var);
    }

    /* renamed from: a */
    public final void m7453a(int i) {
        IOException iOException = this.f6586f;
        if (iOException != null && this.f6587g > i) {
            throw iOException;
        }
    }

    /* renamed from: b */
    public final void m7452b(long j) {
        fr2 fr2Var;
        fr2Var = this.f6590j.f6767b;
        jr2.m6923d(fr2Var == null);
        this.f6590j.f6767b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            m7450d();
        }
    }

    /* renamed from: c */
    public final void m7451c(boolean z) {
        this.f6589i = z;
        this.f6586f = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
                return;
            }
        } else {
            this.f6582b.m7344b();
            if (this.f6588h != null) {
                this.f6588h.interrupt();
            }
            if (!z) {
                return;
            }
        }
        this.f6590j.f6767b = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f6583c.m7596f(this.f6582b, elapsedRealtime, elapsedRealtime - this.f6585e, true);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (!this.f6589i) {
            int i = message.what;
            if (i == 0) {
                m7450d();
            } else if (i != 4) {
                this.f6590j.f6767b = null;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f6585e;
                if (this.f6582b.m7343c()) {
                    this.f6583c.m7596f(this.f6582b, elapsedRealtime, j, false);
                    return;
                }
                int i2 = message.what;
                int i3 = 1;
                if (i2 == 1) {
                    this.f6583c.m7596f(this.f6582b, elapsedRealtime, j, false);
                } else if (i2 == 2) {
                    this.f6583c.m7595o(this.f6582b, elapsedRealtime, j);
                } else if (i2 == 3) {
                    IOException iOException = (IOException) message.obj;
                    this.f6586f = iOException;
                    int c = this.f6583c.m7597c(this.f6582b, elapsedRealtime, j, iOException);
                    if (c == 3) {
                        this.f6590j.f6768c = this.f6586f;
                    } else if (c != 2) {
                        if (c != 1) {
                            i3 = 1 + this.f6587g;
                        }
                        this.f6587g = i3;
                        m7452b(Math.min((i3 - 1) * 1000, 5000));
                    }
                }
            } else {
                throw ((Error) message.obj);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f6588h = Thread.currentThread();
            if (!this.f6582b.m7343c()) {
                String valueOf = String.valueOf(this.f6582b.getClass().getSimpleName());
                xr2.m4846a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                try {
                    this.f6582b.m7342f();
                    xr2.m4845b();
                } catch (Throwable th) {
                    xr2.m4845b();
                    throw th;
                }
            }
            if (!this.f6589i) {
                sendEmptyMessage(2);
            }
        } catch (IOException e) {
            e = e;
            if (this.f6589i) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            if (!this.f6589i) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException e3) {
            jr2.m6923d(this.f6582b.m7343c());
            if (!this.f6589i) {
                sendEmptyMessage(2);
            }
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (!this.f6589i) {
                e = new zzpr(e4);
                obtainMessage(3, e).sendToTarget();
            }
        } catch (OutOfMemoryError e5) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e5);
            if (!this.f6589i) {
                e = new zzpr(e5);
                obtainMessage(3, e).sendToTarget();
            }
        }
    }
}
