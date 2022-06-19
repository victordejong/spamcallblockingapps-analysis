package com.bytedance.sdk.openadsdk.p184l;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.bytedance.sdk.openadsdk.l.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/h.class */
public class ThreadFactoryC5056h implements ThreadFactory {

    /* renamed from: a */
    private final ThreadGroup f18300a;

    /* renamed from: b */
    private final AtomicInteger f18301b = new AtomicInteger(1);

    /* renamed from: c */
    private final String f18302c;

    /* renamed from: d */
    private final int f18303d;

    public ThreadFactoryC5056h(int i, String str) {
        this.f18303d = i;
        this.f18300a = new ThreadGroup("tt_pangle_group_".concat(String.valueOf(str)));
        this.f18302c = "tt_pangle_thread_".concat(String.valueOf(str));
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        ThreadGroup threadGroup = this.f18300a;
        Thread thread = new Thread(threadGroup, runnable, this.f18302c + "_" + this.f18301b.getAndIncrement());
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (this.f18303d == 1) {
            thread.setPriority(1);
        } else if (thread.getPriority() != 5) {
            thread.setPriority(3);
        } else {
            thread.setPriority(5);
        }
        return thread;
    }
}
