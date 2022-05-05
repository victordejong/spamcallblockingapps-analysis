package com.apptentive.android.sdk.util.threading;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/threading/SerialDispatchQueue.class */
public class SerialDispatchQueue extends DispatchQueue {
    private final Handler handler;
    private final HandlerThread handlerThread;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SerialDispatchQueue(Looper looper, String str) {
        super(str);
        if (looper != null) {
            this.handler = new Handler(looper);
            this.handlerThread = null;
            return;
        }
        throw new NullPointerException("Looper is null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SerialDispatchQueue(String str) {
        super(str);
        HandlerThread handlerThread = new HandlerThread(str);
        this.handlerThread = handlerThread;
        handlerThread.start();
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
}
