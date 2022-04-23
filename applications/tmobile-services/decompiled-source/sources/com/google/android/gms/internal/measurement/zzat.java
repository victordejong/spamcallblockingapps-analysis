package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzat.class */
public final class zzat implements ThreadFactory {

    /* renamed from: f */
    private ThreadFactory f8225f = Executors.defaultThreadFactory();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzat(zzag zzagVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f8225f.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
