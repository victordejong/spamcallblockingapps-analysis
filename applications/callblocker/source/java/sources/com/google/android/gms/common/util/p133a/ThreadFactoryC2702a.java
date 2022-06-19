package com.google.android.gms.common.util.p133a;

import com.google.android.gms.common.internal.C2662s;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.common.util.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/a/a.class */
public class ThreadFactoryC2702a implements ThreadFactory {

    /* renamed from: a */
    private final String f7505a;

    /* renamed from: b */
    private final int f7506b;

    /* renamed from: c */
    private final ThreadFactory f7507c;

    public ThreadFactoryC2702a(String str) {
        this(str, 0);
    }

    private ThreadFactoryC2702a(String str, int i) {
        this.f7507c = Executors.defaultThreadFactory();
        this.f7505a = (String) C2662s.m13980a(str, (Object) "Name must not be null");
        this.f7506b = 0;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f7507c.newThread(new RunnableC2704c(runnable, 0));
        newThread.setName(this.f7505a);
        return newThread;
    }
}
