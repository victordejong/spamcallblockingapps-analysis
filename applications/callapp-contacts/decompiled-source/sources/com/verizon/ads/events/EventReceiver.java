package com.verizon.ads.events;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.verizon.ads.Logger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/events/EventReceiver.class */
public abstract class EventReceiver {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35362b = Logger.getInstance(EventReceiver.class);

    /* renamed from: a  reason: collision with root package name */
    final Handler f35363a;

    /* renamed from: c  reason: collision with root package name */
    private HandlerThread f35364c;

    public EventReceiver() {
        if (Logger.isLogLevelEnabled(3)) {
            f35362b.d("Creating new handler thread");
        }
        HandlerThread handlerThread = new HandlerThread(EventReceiver.class.getName() + System.identityHashCode(this));
        this.f35364c = handlerThread;
        handlerThread.start();
        this.f35363a = new Handler(this.f35364c.getLooper());
    }

    public EventReceiver(Looper looper) {
        this.f35363a = new Handler(looper);
    }

    protected abstract void onEvent$645b3fe5(Object obj);

    public void quit() {
        if (this.f35364c != null) {
            if (Logger.isLogLevelEnabled(3)) {
                f35362b.d("Quitting handler thread");
            }
            Handler handler = this.f35363a;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f35364c.quit();
            this.f35364c = null;
        }
    }
}
