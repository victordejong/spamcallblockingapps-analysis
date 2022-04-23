package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.ecn;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eco.class */
final class eco<T extends ecn> extends Handler implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final int f27631a;

    /* renamed from: b  reason: collision with root package name */
    private final T f27632b;

    /* renamed from: c  reason: collision with root package name */
    private final eck<T> f27633c;

    /* renamed from: d  reason: collision with root package name */
    private final long f27634d;
    private IOException e;
    private int f;
    private volatile Thread g;
    private volatile boolean h;
    private final /* synthetic */ ecm i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eco(ecm ecmVar, Looper looper, T t, eck<T> eckVar, int i, long j) {
        super(looper);
        this.i = ecmVar;
        this.f27632b = t;
        this.f27633c = eckVar;
        this.f27631a = i;
        this.f27634d = j;
    }

    private final void a() {
        this.e = null;
        this.i.f27628a.execute(this.i.f27629b);
    }

    private final void b() {
        this.i.f27629b = null;
    }

    public final void a(int i) throws IOException {
        IOException iOException = this.e;
        if (iOException != null && this.f > i) {
            throw iOException;
        }
    }

    public final void a(long j) {
        ecr.b(this.i.f27629b == null);
        this.i.f27629b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            a();
        }
    }

    public final void a(boolean z) {
        this.h = z;
        this.e = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.f27632b.a();
            if (this.g != null) {
                this.g.interrupt();
            }
        }
        if (z) {
            b();
            SystemClock.elapsedRealtime();
            this.f27633c.a((eck<T>) this.f27632b, true);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (!this.h) {
            if (message.what == 0) {
                a();
            } else if (message.what != 4) {
                b();
                SystemClock.elapsedRealtime();
                if (this.f27632b.b()) {
                    this.f27633c.a((eck<T>) this.f27632b, false);
                    return;
                }
                int i = message.what;
                if (i == 1) {
                    this.f27633c.a((eck<T>) this.f27632b, false);
                } else if (i == 2) {
                    this.f27633c.a(this.f27632b);
                } else if (i == 3) {
                    IOException iOException = (IOException) message.obj;
                    this.e = iOException;
                    int a2 = this.f27633c.a((eck<T>) this.f27632b, iOException);
                    if (a2 == 3) {
                        this.i.f27630c = this.e;
                    } else if (a2 != 2) {
                        int i2 = a2 == 1 ? 1 : this.f + 1;
                        this.f = i2;
                        a(Math.min((i2 - 1) * 1000, 5000));
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
            this.g = Thread.currentThread();
            if (!this.f27632b.b()) {
                String valueOf = String.valueOf(this.f27632b.getClass().getSimpleName());
                edf.a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                try {
                    this.f27632b.c();
                    edf.a();
                } catch (Throwable th) {
                    edf.a();
                    throw th;
                }
            }
            if (!this.h) {
                sendEmptyMessage(2);
            }
        } catch (IOException e) {
            if (!this.h) {
                obtainMessage(3, e).sendToTarget();
            }
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            if (!this.h) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException e3) {
            ecr.b(this.f27632b.b());
            if (!this.h) {
                sendEmptyMessage(2);
            }
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (!this.h) {
                obtainMessage(3, new zzpe(e4)).sendToTarget();
            }
        } catch (OutOfMemoryError e5) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e5);
            if (!this.h) {
                obtainMessage(3, new zzpe(e5)).sendToTarget();
            }
        }
    }
}
