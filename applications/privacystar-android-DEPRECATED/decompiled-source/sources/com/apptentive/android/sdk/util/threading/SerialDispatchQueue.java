package com.apptentive.android.sdk.util.threading;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.apptentive.android.sdk.debug.Assert;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/threading/SerialDispatchQueue.class */
public class SerialDispatchQueue extends DispatchQueue {
    private final Handler handler;
    private final HandlerThread handlerThread;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SerialDispatchQueue(Looper looper, String str) {
        super(str);
        if (looper == null) {
            throw new NullPointerException("Looper is null");
        }
        this.handler = new Handler(looper);
        this.handlerThread = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SerialDispatchQueue(String str) {
        super(str);
        this.handlerThread = new HandlerThread(str);
        this.handlerThread.start();
        this.handler = new Handler(this.handlerThread.getLooper());
    }

    @Override // com.apptentive.android.sdk.util.threading.DispatchQueue
    protected void dispatch(DispatchTask dispatchTask, long j) {
        if (j > 0) {
            this.handler.postDelayed(dispatchTask, j);
        } else {
            this.handler.post(dispatchTask);
        }
    }

    @Override // com.apptentive.android.sdk.util.threading.DispatchQueue
    public boolean isCurrent() {
        return Looper.myLooper() == this.handler.getLooper();
    }

    @Override // com.apptentive.android.sdk.util.threading.DispatchQueue
    public void stop() {
        Assert.assertNotNull(this.handlerThread, "Attempted to stop a non-private queue '%s'", this.handler.getLooper().getThread());
        if (this.handlerThread != null) {
            this.handler.removeCallbacks(null);
            this.handlerThread.quit();
        }
    }
}
