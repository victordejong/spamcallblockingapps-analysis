package com.google.android.gms.common.util.p273v;

import android.os.Process;
/* renamed from: com.google.android.gms.common.util.v.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/v/b.class */
final class RunnableC6245b implements Runnable {

    /* renamed from: d */
    private final Runnable f19732d;

    public RunnableC6245b(Runnable runnable, int i) {
        this.f19732d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f19732d.run();
    }
}
