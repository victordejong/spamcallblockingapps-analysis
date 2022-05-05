package com.birbit.android.jobqueue.timer;

import com.birbit.android.jobqueue.log.JqLog;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/timer/SystemTimer.class */
public class SystemTimer implements Timer {
    final long startWallClock = TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
    final long startNs = System.nanoTime();

    public SystemTimer() {
        JqLog.m392d("creating system timer", new Object[0]);
    }

    @Override // com.birbit.android.jobqueue.timer.Timer
    public long nanoTime() {
        return (System.nanoTime() - this.startNs) + this.startWallClock;
    }

    @Override // com.birbit.android.jobqueue.timer.Timer
    public void notifyObject(Object obj) {
        obj.notifyAll();
    }

    @Override // com.birbit.android.jobqueue.timer.Timer
    public void waitOnObject(Object obj) throws InterruptedException {
        obj.wait();
    }

    @Override // com.birbit.android.jobqueue.timer.Timer
    public void waitOnObjectUntilNs(Object obj, long j) throws InterruptedException {
        long nanoTime = nanoTime();
        if (nanoTime > j) {
            obj.wait(1L);
        } else {
            TimeUnit.NANOSECONDS.timedWait(obj, j - nanoTime);
        }
    }
}
