package com.flurry.sdk;

import java.util.concurrent.ThreadFactory;
/* renamed from: com.flurry.sdk.lz */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lz.class */
public final class ThreadFactoryC0501lz implements ThreadFactory {

    /* renamed from: a */
    private final ThreadGroup f3580a;

    /* renamed from: b */
    private final int f3581b = 1;

    public ThreadFactoryC0501lz(String str) {
        this.f3580a = new ThreadGroup(str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f3580a, runnable);
        thread.setName(this.f3580a.getName() + ":" + thread.getId());
        thread.setPriority(this.f3581b);
        return thread;
    }
}
