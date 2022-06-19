package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uo3.class */
public final class uo3 extends HandlerThread implements Handler.Callback {

    /* renamed from: d */
    private RunnableC6507g9 f30694d;

    /* renamed from: e */
    private Handler f30695e;

    /* renamed from: f */
    private Error f30696f;

    /* renamed from: g */
    private RuntimeException f30697g;

    /* renamed from: h */
    private zzlu f30698h;

    public uo3() {
        super("ExoPlayer:DummySurface");
    }

    /* renamed from: a */
    public final zzlu m10278a(int i) {
        boolean z;
        start();
        this.f30695e = new Handler(getLooper(), this);
        this.f30694d = new RunnableC6507g9(this.f30695e, null);
        synchronized (this) {
            this.f30695e.obtainMessage(1, i, 0).sendToTarget();
            z = false;
            while (this.f30698h == null && this.f30697g == null && this.f30696f == null) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.f30697g;
        if (runtimeException == null) {
            Error error = this.f30696f;
            if (error != null) {
                throw error;
            }
            zzlu zzluVar = this.f30698h;
            Objects.requireNonNull(zzluVar);
            return zzluVar;
        }
        throw runtimeException;
    }

    /* renamed from: b */
    public final void m10277b() {
        Handler handler = this.f30695e;
        Objects.requireNonNull(handler);
        handler.sendEmptyMessage(2);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        try {
            if (i != 1) {
                if (i != 2) {
                    return true;
                }
                try {
                    RunnableC6507g9 runnableC6507g9 = this.f30694d;
                    Objects.requireNonNull(runnableC6507g9);
                    runnableC6507g9.m14972b();
                } finally {
                    try {
                        return true;
                    } finally {
                    }
                }
                return true;
            }
            try {
                int i2 = message.arg1;
                RunnableC6507g9 runnableC6507g92 = this.f30694d;
                Objects.requireNonNull(runnableC6507g92);
                runnableC6507g92.m14973a(i2);
                this.f30698h = new zzlu(this, this.f30694d.m14971c(), i2 != 0, null);
                synchronized (this) {
                    notify();
                }
                return true;
            } catch (Error e) {
                C6952s9.m11098b("DummySurface", "Failed to initialize dummy surface", e);
                this.f30696f = e;
                synchronized (this) {
                    notify();
                    return true;
                }
            } catch (RuntimeException e2) {
                C6952s9.m11098b("DummySurface", "Failed to initialize dummy surface", e2);
                this.f30697g = e2;
                synchronized (this) {
                    notify();
                    return true;
                }
            }
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }
}
