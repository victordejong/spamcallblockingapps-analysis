package com.google.android.gms.common.util.a;

import android.os.Process;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/a/c.class */
final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f22940a;

    public c(Runnable runnable, int i) {
        this.f22940a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f22940a.run();
    }
}
