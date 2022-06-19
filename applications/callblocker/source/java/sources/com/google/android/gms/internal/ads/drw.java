package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.dry;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drw.class */
public final class drw<T extends dry> extends cnz implements Runnable {

    /* renamed from: a */
    public final int f15532a;

    /* renamed from: b */
    private final T f15533b;

    /* renamed from: c */
    private final drx<T> f15534c;

    /* renamed from: d */
    private final long f15535d;

    /* renamed from: e */
    private IOException f15536e;

    /* renamed from: f */
    private int f15537f;

    /* renamed from: g */
    private volatile Thread f15538g;

    /* renamed from: h */
    private volatile boolean f15539h;

    /* renamed from: i */
    private final /* synthetic */ dru f15540i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public drw(dru druVar, Looper looper, T t, drx<T> drxVar, int i, long j) {
        super(looper);
        this.f15540i = druVar;
        this.f15533b = t;
        this.f15534c = drxVar;
        this.f15532a = i;
        this.f15535d = j;
    }

    /* renamed from: a */
    private final void m8786a() {
        ExecutorService executorService;
        drw drwVar;
        this.f15536e = null;
        executorService = this.f15540i.f15527a;
        drwVar = this.f15540i.f15528b;
        executorService.execute(drwVar);
    }

    /* renamed from: b */
    private final void m8782b() {
        this.f15540i.f15528b = null;
    }

    /* renamed from: a */
    public final void m8785a(int i) {
        if (this.f15536e == null || this.f15537f <= i) {
            return;
        }
        throw this.f15536e;
    }

    /* renamed from: a */
    public final void m8784a(long j) {
        drw drwVar;
        drwVar = this.f15540i.f15528b;
        drz.m8770b(drwVar == null);
        this.f15540i.f15528b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            m8786a();
        }
    }

    /* renamed from: a */
    public final void m8783a(boolean z) {
        this.f15539h = z;
        this.f15536e = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.f15533b.mo8778a();
            if (this.f15538g != null) {
                this.f15538g.interrupt();
            }
        }
        if (z) {
            m8782b();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f15534c.mo8779a((drx<T>) this.f15533b, elapsedRealtime, elapsedRealtime - this.f15535d, true);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f15539h) {
            return;
        }
        if (message.what == 0) {
            m8786a();
        } else if (message.what == 4) {
            throw ((Error) message.obj);
        } else {
            m8782b();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.f15535d;
            if (this.f15533b.mo8777b()) {
                this.f15534c.mo8779a((drx<T>) this.f15533b, elapsedRealtime, j, false);
                return;
            }
            switch (message.what) {
                case 1:
                    this.f15534c.mo8779a((drx<T>) this.f15533b, elapsedRealtime, j, false);
                    return;
                case 2:
                    this.f15534c.mo8781a(this.f15533b, elapsedRealtime, j);
                    return;
                case 3:
                    this.f15536e = (IOException) message.obj;
                    int mo8780a = this.f15534c.mo8780a((drx<T>) this.f15533b, elapsedRealtime, j, this.f15536e);
                    if (mo8780a == 3) {
                        this.f15540i.f15529c = this.f15536e;
                        return;
                    } else if (mo8780a == 2) {
                        return;
                    } else {
                        this.f15537f = mo8780a == 1 ? 1 : this.f15537f + 1;
                        m8784a(Math.min((this.f15537f - 1) * 1000, 5000));
                        return;
                    }
                default:
                    return;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f15538g = Thread.currentThread();
            if (!this.f15533b.mo8777b()) {
                String valueOf = String.valueOf(this.f15533b.getClass().getSimpleName());
                dso.m8691a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                try {
                    this.f15533b.mo8776c();
                    dso.m8692a();
                } catch (Throwable th) {
                    dso.m8692a();
                    throw th;
                }
            }
            if (this.f15539h) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.f15539h) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            if (!this.f15539h) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException e3) {
            drz.m8770b(this.f15533b.mo8777b());
            if (this.f15539h) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (this.f15539h) {
                return;
            }
            obtainMessage(3, new zzof(e4)).sendToTarget();
        } catch (OutOfMemoryError e5) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e5);
            if (this.f15539h) {
                return;
            }
            obtainMessage(3, new zzof(e5)).sendToTarget();
        }
    }
}
