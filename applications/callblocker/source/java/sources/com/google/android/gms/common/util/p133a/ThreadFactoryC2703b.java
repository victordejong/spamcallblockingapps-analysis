package com.google.android.gms.common.util.p133a;

import com.google.android.gms.common.internal.C2662s;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.common.util.a.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/a/b.class */
public class ThreadFactoryC2703b implements ThreadFactory {

    /* renamed from: a */
    private final String f7508a;

    /* renamed from: b */
    private final int f7509b;

    /* renamed from: c */
    private final AtomicInteger f7510c;

    /* renamed from: d */
    private final ThreadFactory f7511d;

    public ThreadFactoryC2703b(String str) {
        this(str, 0);
    }

    private ThreadFactoryC2703b(String str, int i) {
        this.f7510c = new AtomicInteger();
        this.f7511d = Executors.defaultThreadFactory();
        this.f7508a = (String) C2662s.m13980a(str, (Object) "Name must not be null");
        this.f7509b = 0;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f7511d.newThread(new RunnableC2704c(runnable, 0));
        String str = this.f7508a;
        newThread.setName(new StringBuilder(String.valueOf(str).length() + 13).append(str).append("[").append(this.f7510c.getAndIncrement()).append("]").toString());
        return newThread;
    }
}
