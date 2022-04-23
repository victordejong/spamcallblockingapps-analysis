package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/NumberedThreadFactory.class */
public class NumberedThreadFactory implements ThreadFactory {

    /* renamed from: f */
    private final String f7656f;

    /* renamed from: g */
    private final AtomicInteger f7657g;

    /* renamed from: h */
    private final ThreadFactory f7658h;

    @KeepForSdk
    public NumberedThreadFactory(String str) {
        this(str, 0);
    }

    private NumberedThreadFactory(String str, int i) {
        this.f7657g = new AtomicInteger();
        this.f7658h = Executors.defaultThreadFactory();
        Preconditions.m14522l(str, "Name must not be null");
        this.f7656f = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f7658h.newThread(new zza(runnable, 0));
        String str = this.f7656f;
        int andIncrement = this.f7657g.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}
