package p193e.p194a.p1187r2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
/* renamed from: e.a.r2.c */
/* loaded from: classes5-dex2jar.jar:e/a/r2/c.class */
public abstract class AbstractHandlerC19848c extends Handler {

    /* renamed from: a */
    public final PowerManager.WakeLock f56244a;

    /* renamed from: b */
    public final long f56245b;

    /* renamed from: c */
    public volatile int f56246c = 0;

    public AbstractHandlerC19848c(Looper looper, long j, PowerManager.WakeLock wakeLock) {
        super(looper);
        this.f56244a = wakeLock;
        this.f56245b = j;
    }

    /* renamed from: a */
    public final void m11857a() {
        PowerManager.WakeLock wakeLock = this.f56244a;
        if (wakeLock == null) {
            return;
        }
        wakeLock.release();
    }

    /* renamed from: b */
    public boolean m11856b(C19862h0 c19862h0) {
        synchronized (this) {
            if (this.f56246c == -1) {
                return false;
            }
            int i = this.f56246c + 1;
            this.f56246c = i;
            return sendMessage(obtainMessage(1, i, 0, c19862h0));
        }
    }

    /* renamed from: c */
    public abstract void mo11840c();

    /* JADX WARN: Finally extract failed */
    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        boolean z = false;
        if (i != 1) {
            if (i != 2) {
                return;
            }
            int i2 = message.arg1;
            synchronized (this) {
                if (this.f56246c == i2) {
                    this.f56246c = -1;
                    z = true;
                }
            }
            if (!z) {
                return;
            }
            mo11840c();
            return;
        }
        C19862h0 c19862h0 = (C19862h0) message.obj;
        int i3 = message.arg1;
        PowerManager.WakeLock wakeLock = this.f56244a;
        if (wakeLock != null) {
            wakeLock.acquire();
        }
        try {
            c19862h0.f56270a.mo10183d(c19862h0.f56271b);
            m11857a();
            c19862h0.m11850b();
            if (this.f56245b == -1) {
                return;
            }
            removeMessages(2);
            sendMessageDelayed(obtainMessage(2, i3, 0), this.f56245b);
        } catch (Throwable th) {
            try {
                C19850d mo11833a = c19862h0.f56270a.mo11833a();
                mo11833a.initCause(th);
                c19862h0.f56272c.m11841a(c19862h0.f56271b, c19862h0.f56270a, mo11833a);
                throw null;
            } catch (Throwable th2) {
                m11857a();
                c19862h0.m11850b();
                throw th2;
            }
        }
    }
}
