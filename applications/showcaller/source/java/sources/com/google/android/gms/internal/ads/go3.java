package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.ho3;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
@SuppressLint({"HandlerLeak"})
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/go3.class */
public final class go3<T extends ho3> extends Handler implements Runnable {

    /* renamed from: d */
    private final T f23428d;

    /* renamed from: e */
    private final long f23429e;

    /* renamed from: f */
    private do3<T> f23430f;

    /* renamed from: g */
    private IOException f23431g;

    /* renamed from: h */
    private int f23432h;

    /* renamed from: i */
    private Thread f23433i;

    /* renamed from: j */
    private boolean f23434j;

    /* renamed from: k */
    private volatile boolean f23435k;

    /* renamed from: l */
    final /* synthetic */ lo3 f23436l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public go3(lo3 lo3Var, Looper looper, T t, do3<T> do3Var, int i, long j) {
        super(looper);
        this.f23436l = lo3Var;
        this.f23428d = t;
        this.f23430f = do3Var;
        this.f23429e = j;
    }

    /* renamed from: d */
    private final void m14879d() {
        ExecutorService executorService;
        go3 go3Var;
        this.f23431g = null;
        executorService = this.f23436l.f26195e;
        go3Var = this.f23436l.f26196f;
        Objects.requireNonNull(go3Var);
        executorService.execute(go3Var);
    }

    /* renamed from: a */
    public final void m14882a(int i) {
        IOException iOException = this.f23431g;
        if (iOException == null || this.f23432h <= i) {
            return;
        }
        throw iOException;
    }

    /* renamed from: b */
    public final void m14881b(long j) {
        go3 go3Var;
        go3Var = this.f23436l.f26196f;
        C7173y8.m8895d(go3Var == null);
        this.f23436l.f26196f = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            m14879d();
        }
    }

    /* renamed from: c */
    public final void m14880c(boolean z) {
        this.f23435k = z;
        this.f23431g = null;
        if (hasMessages(0)) {
            this.f23434j = true;
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            synchronized (this) {
                this.f23434j = true;
                this.f23428d.zzg();
                Thread thread = this.f23433i;
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
        if (z) {
            this.f23436l.f26196f = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            do3<T> do3Var = this.f23430f;
            Objects.requireNonNull(do3Var);
            do3Var.mo12861k(this.f23428d, elapsedRealtime, elapsedRealtime - this.f23429e, true);
            this.f23430f = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i;
        int i2;
        int i3;
        long j;
        char c;
        ?? r0;
        if (this.f23435k) {
            return;
        }
        int i4 = message.what;
        if (i4 == 0) {
            m14879d();
        } else if (i4 == 3) {
            throw ((Error) message.obj);
        } else {
            this.f23436l.f26196f = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = elapsedRealtime - this.f23429e;
            do3<T> do3Var = this.f23430f;
            Objects.requireNonNull(do3Var);
            if (this.f23434j) {
                do3Var.mo12861k(this.f23428d, elapsedRealtime, j2, false);
                return;
            }
            int i5 = message.what;
            if (i5 == 1) {
                try {
                    do3Var.mo12860p(this.f23428d, elapsedRealtime, j2);
                } catch (RuntimeException e) {
                    C6952s9.m11098b("LoadTask", "Unexpected exception handling load completed", e);
                    this.f23436l.f26197g = new zzlg(e);
                }
            } else if (i5 != 2) {
            } else {
                IOException iOException = (IOException) message.obj;
                this.f23431g = iOException;
                int i6 = this.f23432h + 1;
                this.f23432h = i6;
                fo3 mo12862g = do3Var.mo12862g(this.f23428d, elapsedRealtime, j2, iOException, i6);
                i = mo12862g.f23014a;
                if (i == 3) {
                    this.f23436l.f26197g = this.f23431g;
                    return;
                }
                i2 = mo12862g.f23014a;
                if (i2 == 2) {
                    return;
                }
                i3 = mo12862g.f23014a;
                if (i3 == 1) {
                    this.f23432h = 1;
                }
                j = mo12862g.f23015b;
                if (j != -9223372036854775807L) {
                    r0 = mo12862g.f23015b;
                    c = r0;
                } else {
                    c = Math.min((this.f23432h - 1) * 1000, 5000);
                }
                m14881b(c);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.f23434j;
                this.f23433i = Thread.currentThread();
            }
            if (!z) {
                String simpleName = this.f23428d.getClass().getSimpleName();
                C7027ua.m10377a(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                try {
                    this.f23428d.mo14342f();
                    C7027ua.m10376b();
                } catch (Throwable th) {
                    C7027ua.m10376b();
                    throw th;
                }
            }
            synchronized (this) {
                this.f23433i = null;
                Thread.interrupted();
            }
            if (this.f23435k) {
                return;
            }
            sendEmptyMessage(1);
        } catch (IOException e) {
            if (this.f23435k) {
                return;
            }
            obtainMessage(2, e).sendToTarget();
        } catch (Exception e2) {
            if (this.f23435k) {
                return;
            }
            C6952s9.m11098b("LoadTask", "Unexpected exception loading stream", e2);
            obtainMessage(2, new zzlg(e2)).sendToTarget();
        } catch (OutOfMemoryError e3) {
            if (this.f23435k) {
                return;
            }
            C6952s9.m11098b("LoadTask", "OutOfMemory error loading stream", e3);
            obtainMessage(2, new zzlg(e3)).sendToTarget();
        } catch (Error e4) {
            if (!this.f23435k) {
                C6952s9.m11098b("LoadTask", "Unexpected error loading stream", e4);
                obtainMessage(3, e4).sendToTarget();
            }
            throw e4;
        }
    }
}
