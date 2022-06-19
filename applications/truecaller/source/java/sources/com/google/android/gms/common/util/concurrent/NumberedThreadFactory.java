package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1577m.p1578a.p1642f.p1653e.p1658c.p1659a.RunnableC24981a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/concurrent/NumberedThreadFactory.class */
public class NumberedThreadFactory implements ThreadFactory {

    /* renamed from: a */
    public final String f6146a;

    /* renamed from: b */
    public final AtomicInteger f6147b = new AtomicInteger();

    /* renamed from: c */
    public final ThreadFactory f6148c = Executors.defaultThreadFactory();

    @KeepForSdk
    public NumberedThreadFactory(String str) {
        Preconditions.m38897k(str, "Name must not be null");
        this.f6146a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f6148c.newThread(new RunnableC24981a(runnable));
        String str = this.f6146a;
        int andIncrement = this.f6147b.getAndIncrement();
        StringBuilder sb = new StringBuilder(str.length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}
