package ba;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import org.greenrobot.eventbus.EventBusException;
/* renamed from: ba.d */
/* loaded from: classes2-dex2jar.jar:ba/d.class */
public class HandlerC0753d extends Handler implements AbstractC0761j {

    /* renamed from: a */
    public final C0760i f2848a = new C0760i();

    /* renamed from: b */
    public final int f2849b;

    /* renamed from: c */
    public final C0748b f2850c;

    /* renamed from: d */
    public boolean f2851d;

    public HandlerC0753d(C0748b c0748b, Looper looper, int i) {
        super(looper);
        this.f2850c = c0748b;
        this.f2849b = i;
    }

    @Override // ba.AbstractC0761j
    /* renamed from: a */
    public void mo2657a(C0767o c0767o, Object obj) {
        C0759h m7395a = C0759h.m7395a(c0767o, obj);
        synchronized (this) {
            this.f2848a.m7394a(m7395a);
            if (!this.f2851d) {
                this.f2851d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new EventBusException("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                C0759h m7393b = this.f2848a.m7393b();
                C0759h c0759h = m7393b;
                if (m7393b == null) {
                    synchronized (this) {
                        c0759h = this.f2848a.m7393b();
                        if (c0759h == null) {
                            this.f2851d = false;
                            return;
                        }
                    }
                }
                this.f2850c.m7408c(c0759h);
            } while (SystemClock.uptimeMillis() - uptimeMillis < this.f2849b);
            if (!sendMessage(obtainMessage())) {
                throw new EventBusException("Could not send handler message");
            }
            this.f2851d = true;
        } finally {
            this.f2851d = false;
        }
    }
}
