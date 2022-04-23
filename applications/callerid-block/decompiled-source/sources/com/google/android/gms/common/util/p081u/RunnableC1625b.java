package com.google.android.gms.common.util.p081u;

import android.os.Process;
/* renamed from: com.google.android.gms.common.util.u.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/u/b.class */
final class RunnableC1625b implements Runnable {

    /* renamed from: b */
    private final Runnable f5905b;

    public RunnableC1625b(Runnable runnable, int i) {
        this.f5905b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f5905b.run();
    }
}
