package com.google.android.gms.common.util.p354a;

import com.google.android.gms.common.internal.C12045o;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.common.util.a.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/a/a.class */
public final class ThreadFactoryC12095a implements ThreadFactory {

    /* renamed from: a */
    private final String f39620a;

    /* renamed from: b */
    private final ThreadFactory f39621b = Executors.defaultThreadFactory();

    public ThreadFactoryC12095a(String str) {
        C12045o.m19161a(str, (Object) "Name must not be null");
        this.f39620a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f39621b.newThread(new RunnableC12097c(runnable, 0));
        newThread.setName(this.f39620a);
        return newThread;
    }
}
