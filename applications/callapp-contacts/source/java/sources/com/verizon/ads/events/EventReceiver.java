package com.verizon.ads.events;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.verizon.ads.Logger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/events/EventReceiver.class */
public abstract class EventReceiver {

    /* renamed from: b */
    private static final Logger f61298b = Logger.getInstance(EventReceiver.class);

    /* renamed from: a */
    final Handler f61299a;

    /* renamed from: c */
    private HandlerThread f61300c;

    public EventReceiver() {
        if (Logger.isLogLevelEnabled(3)) {
            f61298b.m5567d("Creating new handler thread");
        }
        HandlerThread handlerThread = new HandlerThread(EventReceiver.class.getName() + System.identityHashCode(this));
        this.f61300c = handlerThread;
        handlerThread.start();
        this.f61299a = new Handler(this.f61300c.getLooper());
    }

    public EventReceiver(Looper looper) {
        this.f61299a = new Handler(looper);
    }

    protected abstract void onEvent$645b3fe5(Object obj);

    public void quit() {
        if (this.f61300c != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61298b.m5567d("Quitting handler thread");
            }
            Handler handler = this.f61299a;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f61300c.quit();
            this.f61300c = null;
        }
    }
}
