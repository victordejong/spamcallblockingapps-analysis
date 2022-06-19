package com.google.android.gms.common.util.p133a;

import android.os.Process;
/* renamed from: com.google.android.gms.common.util.a.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/a/c.class */
final class RunnableC2704c implements Runnable {

    /* renamed from: a */
    private final Runnable f7512a;

    /* renamed from: b */
    private final int f7513b;

    public RunnableC2704c(Runnable runnable, int i) {
        this.f7512a = runnable;
        this.f7513b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f7513b);
        this.f7512a.run();
    }
}
