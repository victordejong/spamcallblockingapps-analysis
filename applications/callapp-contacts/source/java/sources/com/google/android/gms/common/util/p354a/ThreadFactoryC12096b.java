package com.google.android.gms.common.util.p354a;

import com.google.android.gms.common.internal.C12045o;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.common.util.a.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/a/b.class */
public final class ThreadFactoryC12096b implements ThreadFactory {

    /* renamed from: a */
    private final String f39622a;

    /* renamed from: b */
    private final AtomicInteger f39623b = new AtomicInteger();

    /* renamed from: c */
    private final ThreadFactory f39624c = Executors.defaultThreadFactory();

    public ThreadFactoryC12096b(String str) {
        C12045o.m19161a(str, (Object) "Name must not be null");
        this.f39622a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f39624c.newThread(new RunnableC12097c(runnable, 0));
        String str = this.f39622a;
        int andIncrement = this.f39623b.getAndIncrement();
        StringBuilder sb = new StringBuilder(str.length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}
