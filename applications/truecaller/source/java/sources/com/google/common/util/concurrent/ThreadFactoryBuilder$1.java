package com.google.common.util.concurrent;

import java.lang.Thread;
import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:com/google/common/util/concurrent/ThreadFactoryBuilder$1.class */
public class ThreadFactoryBuilder$1 implements ThreadFactory {
    public final /* synthetic */ ThreadFactory val$backingThreadFactory;
    public final /* synthetic */ AtomicLong val$count;
    public final /* synthetic */ Boolean val$daemon;
    public final /* synthetic */ String val$nameFormat;

    public ThreadFactoryBuilder$1(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.val$backingThreadFactory = threadFactory;
        this.val$nameFormat = str;
        this.val$count = atomicLong;
        this.val$daemon = bool;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.val$backingThreadFactory.newThread(runnable);
        String str = this.val$nameFormat;
        if (str != null) {
            newThread.setName(String.format(Locale.ROOT, str, Long.valueOf(this.val$count.getAndIncrement())));
        }
        Boolean bool = this.val$daemon;
        if (bool != null) {
            newThread.setDaemon(bool.booleanValue());
        }
        return newThread;
    }
}
