package com.freshchat.consumer.sdk.p056i;

import android.os.CountDownTimer;
/* renamed from: com.freshchat.consumer.sdk.i.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/i/d.class */
public abstract class AbstractCountDownTimerC1566d extends CountDownTimer {
    private boolean isRunning;

    public AbstractCountDownTimerC1566d(long j) {
        super(j, j);
    }

    public abstract void execute();

    @Override // android.os.CountDownTimer
    public void onFinish() {
        execute();
        this.isRunning = false;
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
    }

    public void run() {
        if (!this.isRunning) {
            start();
            this.isRunning = true;
        }
    }
}
