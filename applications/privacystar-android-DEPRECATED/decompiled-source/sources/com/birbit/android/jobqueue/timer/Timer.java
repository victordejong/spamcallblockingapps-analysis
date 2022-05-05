package com.birbit.android.jobqueue.timer;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/timer/Timer.class */
public interface Timer {
    long nanoTime();

    void notifyObject(Object obj);

    void waitOnObject(Object obj) throws InterruptedException;

    void waitOnObjectUntilNs(Object obj, long j) throws InterruptedException;
}
