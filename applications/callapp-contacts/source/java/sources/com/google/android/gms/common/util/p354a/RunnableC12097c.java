package com.google.android.gms.common.util.p354a;

import android.os.Process;
/* renamed from: com.google.android.gms.common.util.a.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/a/c.class */
final class RunnableC12097c implements Runnable {

    /* renamed from: a */
    private final Runnable f39625a;

    public RunnableC12097c(Runnable runnable, int i) {
        this.f39625a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f39625a.run();
    }
}
