package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.internal.measurement.t */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/t.class */
public final class ThreadFactoryC13717t implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f51060a = Executors.defaultThreadFactory();

    public ThreadFactoryC13717t(C13363ak c13363ak) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f51060a.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
