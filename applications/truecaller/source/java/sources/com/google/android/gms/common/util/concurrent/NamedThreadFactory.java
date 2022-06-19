package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import p193e.p1577m.p1578a.p1642f.p1653e.p1658c.p1659a.RunnableC24981a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/concurrent/NamedThreadFactory.class */
public class NamedThreadFactory implements ThreadFactory {

    /* renamed from: a */
    public final String f6144a;

    /* renamed from: b */
    public final ThreadFactory f6145b = Executors.defaultThreadFactory();

    @KeepForSdk
    public NamedThreadFactory(String str) {
        Preconditions.m38897k(str, "Name must not be null");
        this.f6144a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f6145b.newThread(new RunnableC24981a(runnable));
        newThread.setName(this.f6144a);
        return newThread;
    }
}
