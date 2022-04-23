package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p170b.p224d.p238d.p248g.p249a.RunnableC3315a;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/NumberedThreadFactory.class */
public class NumberedThreadFactory implements ThreadFactory {

    /* renamed from: a */
    public final String f23575a;

    /* renamed from: b */
    public final AtomicInteger f23576b;

    /* renamed from: c */
    public final ThreadFactory f23577c;

    @KeepForSdk
    public NumberedThreadFactory(String str) {
        this(str, 0);
    }

    public NumberedThreadFactory(String str, int i) {
        this.f23576b = new AtomicInteger();
        this.f23577c = Executors.defaultThreadFactory();
        Preconditions.m17287a(str, (Object) "Name must not be null");
        this.f23575a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f23577c.newThread(new RunnableC3315a(runnable, 0));
        String str = this.f23575a;
        int andIncrement = this.f23576b.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}
