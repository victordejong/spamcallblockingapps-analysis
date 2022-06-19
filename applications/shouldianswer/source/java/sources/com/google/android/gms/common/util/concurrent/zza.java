package com.google.android.gms.common.util.concurrent;

import android.os.Process;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/zza.class */
final class zza implements Runnable {
    private final int priority;
    private final Runnable zzhu;

    public zza(Runnable runnable, int i) {
        this.zzhu = runnable;
        this.priority = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.priority);
        this.zzhu.run();
    }
}
