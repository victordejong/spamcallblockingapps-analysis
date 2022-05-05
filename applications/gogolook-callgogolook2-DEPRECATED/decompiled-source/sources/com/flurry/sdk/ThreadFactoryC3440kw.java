package com.flurry.sdk;

import androidx.annotation.NonNull;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.flurry.sdk.kw */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kw.class */
public final class ThreadFactoryC3440kw implements ThreadFactory {

    /* renamed from: a */
    public final ThreadGroup f5913a;

    /* renamed from: b */
    public final int f5914b = 1;

    public ThreadFactoryC3440kw(String str) {
        this.f5913a = new ThreadGroup(str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread thread = new Thread(this.f5913a, runnable);
        thread.setName(this.f5913a.getName() + ":" + thread.getId());
        thread.setPriority(this.f5914b);
        return thread;
    }
}
