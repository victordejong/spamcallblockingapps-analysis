package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/NamedThreadFactory.class */
public class NamedThreadFactory implements ThreadFactory {

    /* renamed from: f */
    private final String f7654f;

    /* renamed from: g */
    private final ThreadFactory f7655g;

    @KeepForSdk
    public NamedThreadFactory(String str) {
        this(str, 0);
    }

    private NamedThreadFactory(String str, int i) {
        this.f7655g = Executors.defaultThreadFactory();
        Preconditions.m14522l(str, "Name must not be null");
        this.f7654f = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f7655g.newThread(new zza(runnable, 0));
        newThread.setName(this.f7654f);
        return newThread;
    }
}
