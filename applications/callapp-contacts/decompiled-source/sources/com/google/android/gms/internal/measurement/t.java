package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/t.class */
public final class t implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadFactory f29297a = Executors.defaultThreadFactory();

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(ak akVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f29297a.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
