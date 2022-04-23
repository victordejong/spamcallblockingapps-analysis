package com.google.android.gms.internal;

import com.google.android.gms.common.internal.b;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bi.class */
public final class bi implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f4158a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4159b;
    private final AtomicInteger c;
    private final ThreadFactory d;

    public bi(String str) {
        this(str, (byte) 0);
    }

    private bi(String str, byte b2) {
        this.c = new AtomicInteger();
        this.d = Executors.defaultThreadFactory();
        this.f4158a = (String) b.a(str, (Object) "Name must not be null");
        this.f4159b = 0;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.d.newThread(new bj(runnable, this.f4159b));
        String str = this.f4158a;
        newThread.setName(new StringBuilder(String.valueOf(str).length() + 13).append(str).append("[").append(this.c.getAndIncrement()).append("]").toString());
        return newThread;
    }
}
