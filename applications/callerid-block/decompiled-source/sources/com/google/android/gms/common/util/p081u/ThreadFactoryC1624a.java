package com.google.android.gms.common.util.p081u;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C1581h;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.common.util.u.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/u/a.class */
public class ThreadFactoryC1624a implements ThreadFactory {

    /* renamed from: a */
    private final String f5903a;

    /* renamed from: b */
    private final ThreadFactory f5904b = Executors.defaultThreadFactory();

    public ThreadFactoryC1624a(@RecentlyNonNull String str) {
        C1581h.m8346i(str, "Name must not be null");
        this.f5903a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @RecentlyNonNull
    public final Thread newThread(@RecentlyNonNull Runnable runnable) {
        Thread newThread = this.f5904b.newThread(new RunnableC1625b(runnable, 0));
        newThread.setName(this.f5903a);
        return newThread;
    }
}
