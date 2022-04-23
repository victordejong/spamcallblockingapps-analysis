package com.google.android.gms.common.util.a;

import com.google.android.gms.common.internal.o;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/a/b.class */
public final class b implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f22937a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicInteger f22938b = new AtomicInteger();

    /* renamed from: c  reason: collision with root package name */
    private final ThreadFactory f22939c = Executors.defaultThreadFactory();

    public b(String str) {
        o.a(str, (Object) "Name must not be null");
        this.f22937a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f22939c.newThread(new c(runnable, 0));
        String str = this.f22937a;
        int andIncrement = this.f22938b.getAndIncrement();
        StringBuilder sb = new StringBuilder(str.length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}
