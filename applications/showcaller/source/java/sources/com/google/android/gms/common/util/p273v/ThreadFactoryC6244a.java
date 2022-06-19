package com.google.android.gms.common.util.p273v;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.common.util.v.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/v/a.class */
public class ThreadFactoryC6244a implements ThreadFactory {

    /* renamed from: a */
    private final String f19730a;

    /* renamed from: b */
    private final ThreadFactory f19731b = Executors.defaultThreadFactory();

    public ThreadFactoryC6244a(@RecentlyNonNull String str) {
        C6155o.m17017k(str, "Name must not be null");
        this.f19730a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @RecentlyNonNull
    public final Thread newThread(@RecentlyNonNull Runnable runnable) {
        Thread newThread = this.f19731b.newThread(new RunnableC6245b(runnable, 0));
        newThread.setName(this.f19730a);
        return newThread;
    }
}
