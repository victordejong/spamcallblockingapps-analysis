package com.google.android.gms.common.util.concurrent;

import android.os.Process;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/zza.class */
final class zza implements Runnable {

    /* renamed from: f */
    private final Runnable f7659f;

    /* renamed from: g */
    private final int f7660g;

    public zza(Runnable runnable, int i) {
        this.f7659f = runnable;
        this.f7660g = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f7660g);
        this.f7659f.run();
    }
}
