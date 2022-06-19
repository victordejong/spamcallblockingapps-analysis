package com.yanzhenjie.nohttp;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/HandlerDelivery.class */
public final class HandlerDelivery {
    private static HandlerDelivery instance;
    private Handler mHandler;

    private HandlerDelivery(Handler handler) {
        this.mHandler = handler;
    }

    public static HandlerDelivery getInstance() {
        if (instance == null) {
            synchronized (HandlerDelivery.class) {
                try {
                    if (instance == null) {
                        instance = new HandlerDelivery(new Handler(Looper.getMainLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public boolean post(Runnable runnable) {
        return this.mHandler.post(runnable);
    }

    public boolean postAtFrontOfQueue(Runnable runnable) {
        return this.mHandler.postAtFrontOfQueue(runnable);
    }

    public boolean postAtTime(Runnable runnable, long j) {
        return this.mHandler.postAtTime(runnable, j);
    }

    public boolean postAtTime(Runnable runnable, Object obj, long j) {
        return this.mHandler.postAtTime(runnable, obj, j);
    }

    public boolean postDelayed(Runnable runnable, long j) {
        return this.mHandler.postDelayed(runnable, j);
    }

    public void removeCallbacks(Runnable runnable) {
        this.mHandler.removeCallbacks(runnable);
    }

    public void removeCallbacks(Runnable runnable, Object obj) {
        this.mHandler.removeCallbacks(runnable, obj);
    }
}
