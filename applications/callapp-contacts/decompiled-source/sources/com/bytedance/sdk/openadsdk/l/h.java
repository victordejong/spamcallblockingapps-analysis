package com.bytedance.sdk.openadsdk.l;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/h.class */
public class h implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadGroup f9833a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f9834b = new AtomicInteger(1);

    /* renamed from: c  reason: collision with root package name */
    private final String f9835c;

    /* renamed from: d  reason: collision with root package name */
    private final int f9836d;

    public h(int i, String str) {
        this.f9836d = i;
        this.f9833a = new ThreadGroup("tt_pangle_group_".concat(String.valueOf(str)));
        this.f9835c = "tt_pangle_thread_".concat(String.valueOf(str));
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        ThreadGroup threadGroup = this.f9833a;
        Thread thread = new Thread(threadGroup, runnable, this.f9835c + "_" + this.f9834b.getAndIncrement());
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (this.f9836d == 1) {
            thread.setPriority(1);
        } else if (thread.getPriority() != 5) {
            thread.setPriority(3);
        } else {
            thread.setPriority(5);
        }
        return thread;
    }
}
