package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/s.class */
public final class ThreadFactoryC2170s implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f9814a = Executors.defaultThreadFactory();

    public ThreadFactoryC2170s(C2133j0 c2133j0) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f9814a.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
