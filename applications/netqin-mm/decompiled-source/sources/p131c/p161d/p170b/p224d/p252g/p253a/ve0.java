package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.internal.ads.zzot;
import com.google.android.gms.internal.ads.zzow;
import com.google.android.gms.internal.ads.zzox;
import com.google.android.gms.internal.ads.zzoy;
import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpn;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* renamed from: c.d.b.d.g.a.ve0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ve0.class */
public final class ve0<T extends zzoy> extends Handler implements Runnable {

    /* renamed from: a */
    public final T f15839a;

    /* renamed from: b */
    public final zzow<T> f15840b;

    /* renamed from: c */
    public final int f15841c;

    /* renamed from: d */
    public final long f15842d;

    /* renamed from: e */
    public IOException f15843e;

    /* renamed from: f */
    public int f15844f;

    /* renamed from: g */
    public volatile Thread f15845g;

    /* renamed from: h */
    public volatile boolean f15846h;

    /* renamed from: i */
    public final /* synthetic */ zzot f15847i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ve0(zzot zzotVar, Looper looper, T t, zzow<T> zzowVar, int i, long j) {
        super(looper);
        this.f15847i = zzotVar;
        this.f15839a = t;
        this.f15840b = zzowVar;
        this.f15841c = i;
        this.f15842d = j;
    }

    /* renamed from: a */
    public final void m26204a() {
        ExecutorService executorService;
        ve0 ve0Var;
        this.f15843e = null;
        executorService = this.f15847i.f28753a;
        ve0Var = this.f15847i.f28754b;
        executorService.execute(ve0Var);
    }

    /* renamed from: a */
    public final void m26203a(int i) throws IOException {
        IOException iOException = this.f15843e;
        if (iOException != null && this.f15844f > i) {
            throw iOException;
        }
    }

    /* renamed from: a */
    public final void m26202a(long j) {
        ve0 ve0Var;
        ve0Var = this.f15847i.f28754b;
        zzoz.m11694b(ve0Var == null);
        this.f15847i.f28754b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            m26204a();
        }
    }

    /* renamed from: a */
    public final void m26201a(boolean z) {
        this.f15846h = z;
        this.f15843e = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.f15839a.mo11702a();
            if (this.f15845g != null) {
                this.f15845g.interrupt();
            }
        }
        if (z) {
            m26200b();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f15840b.mo11703a((zzow<T>) this.f15839a, elapsedRealtime, elapsedRealtime - this.f15842d, true);
        }
    }

    /* renamed from: b */
    public final void m26200b() {
        this.f15847i.f28754b = null;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (!this.f15846h) {
            int i = message.what;
            if (i == 0) {
                m26204a();
            } else if (i != 4) {
                m26200b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.f15842d;
                if (this.f15839a.mo11700c()) {
                    this.f15840b.mo11703a((zzow<T>) this.f15839a, elapsedRealtime, j, false);
                    return;
                }
                int i2 = message.what;
                if (i2 == 1) {
                    this.f15840b.mo11703a((zzow<T>) this.f15839a, elapsedRealtime, j, false);
                } else if (i2 == 2) {
                    this.f15840b.mo11705a(this.f15839a, elapsedRealtime, j);
                } else if (i2 == 3) {
                    IOException iOException = (IOException) message.obj;
                    this.f15843e = iOException;
                    int a = this.f15840b.mo11704a((zzow<T>) this.f15839a, elapsedRealtime, j, iOException);
                    if (a == 3) {
                        this.f15847i.f28755c = this.f15843e;
                    } else if (a != 2) {
                        int i3 = a == 1 ? 1 : this.f15844f + 1;
                        this.f15844f = i3;
                        m26202a(Math.min((i3 - 1) * 1000, 5000));
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
            this.f15845g = Thread.currentThread();
            if (!this.f15839a.mo11700c()) {
                String valueOf = String.valueOf(this.f15839a.getClass().getSimpleName());
                zzpn.m11631a(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                try {
                    this.f15839a.mo11701b();
                    zzpn.m11632a();
                } catch (Throwable th) {
                    zzpn.m11632a();
                    throw th;
                }
            }
            if (!this.f15846h) {
                sendEmptyMessage(2);
            }
        } catch (IOException e) {
            if (!this.f15846h) {
                obtainMessage(3, e).sendToTarget();
            }
        } catch (Error e2) {
            Log.e("LoadTask", "Unexpected error loading stream", e2);
            if (!this.f15846h) {
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (InterruptedException e3) {
            zzoz.m11694b(this.f15839a.mo11700c());
            if (!this.f15846h) {
                sendEmptyMessage(2);
            }
        } catch (Exception e4) {
            Log.e("LoadTask", "Unexpected exception loading stream", e4);
            if (!this.f15846h) {
                obtainMessage(3, new zzox(e4)).sendToTarget();
            }
        } catch (OutOfMemoryError e5) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e5);
            if (!this.f15846h) {
                obtainMessage(3, new zzox(e5)).sendToTarget();
            }
        }
    }
}
