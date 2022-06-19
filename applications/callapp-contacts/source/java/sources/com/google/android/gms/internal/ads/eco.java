package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.ecn;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eco.class */
public final class eco<T extends ecn> extends Handler implements Runnable {

    /* renamed from: a */
    public final int f48695a;

    /* renamed from: b */
    private final T f48696b;

    /* renamed from: c */
    private final eck<T> f48697c;

    /* renamed from: d */
    private final long f48698d;

    /* renamed from: e */
    private IOException f48699e;

    /* renamed from: f */
    private int f48700f;

    /* renamed from: g */
    private volatile Thread f48701g;

    /* renamed from: h */
    private volatile boolean f48702h;

    /* renamed from: i */
    private final /* synthetic */ ecm f48703i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eco(ecm ecmVar, Looper looper, T t, eck<T> eckVar, int i, long j) {
        super(looper);
        this.f48703i = ecmVar;
        this.f48696b = t;
        this.f48697c = eckVar;
        this.f48695a = i;
        this.f48698d = j;
    }

    /* renamed from: a */
    private final void m15263a() {
        this.f48699e = null;
        this.f48703i.f48692a.execute(this.f48703i.f48693b);
    }

    /* renamed from: b */
    private final void m15259b() {
        this.f48703i.f48693b = null;
    }

    /* renamed from: a */
    public final void m15262a(int i) throws IOException {
        IOException iOException = this.f48699e;
        if (iOException == null || this.f48700f <= i) {
            return;
        }
        throw iOException;
    }

    /* renamed from: a */
    public final void m15261a(long j) {
        ecr.m15247b(this.f48703i.f48693b == null);
        this.f48703i.f48693b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            m15263a();
        }
    }

    /* renamed from: a */
    public final void m15260a(boolean z) {
        this.f48702h = z;
        this.f48699e = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.f48696b.mo15266a();
            if (this.f48701g != null) {
                this.f48701g.interrupt();
            }
        }
        if (z) {
            m15259b();
            SystemClock.elapsedRealtime();
            this.f48697c.mo15271a((eck<T>) this.f48696b, true);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f48702h) {
            return;
        }
        if (message.what == 0) {
            m15263a();
        } else if (message.what == 4) {
            throw ((Error) message.obj);
        } else {
            m15259b();
            SystemClock.elapsedRealtime();
            if (this.f48696b.mo15265b()) {
                this.f48697c.mo15271a((eck<T>) this.f48696b, false);
                return;
            }
            int i = message.what;
            if (i == 1) {
                this.f48697c.mo15271a((eck<T>) this.f48696b, false);
            } else if (i == 2) {
                this.f48697c.mo15273a(this.f48696b);
            } else if (i != 3) {
            } else {
                IOException iOException = (IOException) message.obj;
                this.f48699e = iOException;
                int mo15272a = this.f48697c.mo15272a((eck<T>) this.f48696b, iOException);
                if (mo15272a == 3) {
                    this.f48703i.f48694c = this.f48699e;
                } else if (mo15272a == 2) {
                } else {
                    int i2 = mo15272a == 1 ? 1 : this.f48700f + 1;
                    this.f48700f = i2;
                    m15261a(Math.min((i2 - 1) * 1000, 5000));
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f48701g = Thread.currentThread();
            if (!this.f48696b.mo15265b()) {
                String valueOf = String.valueOf(this.f48696b.getClass().getSimpleName());
                edf.m15182a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                try {
                    this.f48696b.mo15264c();
                    edf.m15183a();
                } catch (Throwable th) {
                    edf.m15183a();
                    throw th;
                }
            }
            if (this.f48702h) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.f48702h) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            if (!this.f48702h) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException e3) {
            ecr.m15247b(this.f48696b.mo15265b());
            if (this.f48702h) {
                return;
            }
            sendEmptyMessage(2);
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (this.f48702h) {
                return;
            }
            obtainMessage(3, new zzpe(e4)).sendToTarget();
        } catch (OutOfMemoryError e5) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e5);
            if (this.f48702h) {
                return;
            }
            obtainMessage(3, new zzpe(e5)).sendToTarget();
        }
    }
}
