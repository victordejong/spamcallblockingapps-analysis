package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.AbstractC7219zh;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
@SuppressLint({"HandlerLeak"})
/* renamed from: com.google.android.gms.internal.ads.yh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yh.class */
public final class HandlerC7182yh<T extends AbstractC7219zh> extends Handler implements Runnable {

    /* renamed from: d */
    private final T f32497d;

    /* renamed from: e */
    private final AbstractC7145xh<T> f32498e;

    /* renamed from: f */
    public final int f32499f;

    /* renamed from: g */
    private final long f32500g;

    /* renamed from: h */
    private IOException f32501h;

    /* renamed from: i */
    private int f32502i;

    /* renamed from: j */
    private volatile Thread f32503j;

    /* renamed from: k */
    private volatile boolean f32504k;

    /* renamed from: l */
    final /* synthetic */ C6293ai f32505l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC7182yh(C6293ai c6293ai, Looper looper, T t, AbstractC7145xh<T> abstractC7145xh, int i, long j) {
        super(looper);
        this.f32505l = c6293ai;
        this.f32497d = t;
        this.f32498e = abstractC7145xh;
        this.f32499f = i;
        this.f32500g = j;
    }

    /* renamed from: d */
    private final void m8823d() {
        ExecutorService executorService;
        HandlerC7182yh handlerC7182yh;
        this.f32501h = null;
        executorService = this.f32505l.f19954a;
        handlerC7182yh = this.f32505l.f19955b;
        executorService.execute(handlerC7182yh);
    }

    /* renamed from: a */
    public final void m8826a(int i) {
        IOException iOException = this.f32501h;
        if (iOException == null || this.f32502i <= i) {
            return;
        }
        throw iOException;
    }

    /* renamed from: b */
    public final void m8825b(long j) {
        HandlerC7182yh handlerC7182yh;
        handlerC7182yh = this.f32505l.f19955b;
        C6367ci.m16039d(handlerC7182yh == null);
        this.f32505l.f19955b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            m8823d();
        }
    }

    /* renamed from: c */
    public final void m8824c(boolean z) {
        this.f32504k = z;
        this.f32501h = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
                return;
            }
        } else {
            this.f32497d.mo8388c();
            if (this.f32503j != null) {
                this.f32503j.interrupt();
            }
            if (!z) {
                return;
            }
        }
        this.f32505l.f19955b = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.f32498e.mo9178g(this.f32497d, elapsedRealtime, elapsedRealtime - this.f32500g, true);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f32504k) {
            return;
        }
        int i = message.what;
        if (i == 0) {
            m8823d();
        } else if (i == 4) {
            throw ((Error) message.obj);
        } else {
            this.f32505l.f19955b = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.f32500g;
            if (this.f32497d.mo8387e()) {
                this.f32498e.mo9178g(this.f32497d, elapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            int i3 = 1;
            if (i2 == 1) {
                this.f32498e.mo9178g(this.f32497d, elapsedRealtime, j, false);
            } else if (i2 == 2) {
                this.f32498e.mo9179f(this.f32497d, elapsedRealtime, j);
            } else if (i2 != 3) {
            } else {
                IOException iOException = (IOException) message.obj;
                this.f32501h = iOException;
                int mo9180c = this.f32498e.mo9180c(this.f32497d, elapsedRealtime, j, iOException);
                if (mo9180c == 3) {
                    this.f32505l.f19956c = this.f32501h;
                } else if (mo9180c == 2) {
                } else {
                    if (mo9180c != 1) {
                        i3 = 1 + this.f32502i;
                    }
                    this.f32502i = i3;
                    m8825b(Math.min((i3 - 1) * 1000, 5000));
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f32503j = Thread.currentThread();
            if (!this.f32497d.mo8387e()) {
                String simpleName = this.f32497d.getClass().getSimpleName();
                C6887qi.m11884a(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                try {
                    this.f32497d.mo8389a();
                    C6887qi.m11883b();
                } catch (Throwable th) {
                    C6887qi.m11883b();
                    throw th;
                }
            }
            if (this.f32504k) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.f32504k) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            if (!this.f32504k) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException e3) {
            C6367ci.m16039d(this.f32497d.mo8387e());
            if (this.f32504k) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (this.f32504k) {
                return;
            }
            obtainMessage(3, new zzaum(e4)).sendToTarget();
        } catch (OutOfMemoryError e5) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e5);
            if (this.f32504k) {
                return;
            }
            obtainMessage(3, new zzaum(e5)).sendToTarget();
        }
    }
}
