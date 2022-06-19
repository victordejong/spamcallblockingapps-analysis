package com.tenor.android.core.concurrent;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/concurrent/IConcurrentFifoQueue.class */
public interface IConcurrentFifoQueue<T> {
    int add(T t);

    T poll();

    int size();
}
