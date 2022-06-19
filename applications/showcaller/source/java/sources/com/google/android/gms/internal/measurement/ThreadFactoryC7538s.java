package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.internal.measurement.s */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/s.class */
public final class ThreadFactoryC7538s implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f34675a = Executors.defaultThreadFactory();

    public ThreadFactoryC7538s(C7415j0 c7415j0) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f34675a.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
