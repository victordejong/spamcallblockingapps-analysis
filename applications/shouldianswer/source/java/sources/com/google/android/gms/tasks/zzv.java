package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzv.class */
public final class zzv implements Runnable {
    private final /* synthetic */ Callable val$callable;
    private final /* synthetic */ zzu zzad;

    public zzv(zzu zzuVar, Callable callable) {
        this.zzad = zzuVar;
        this.val$callable = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzad.setResult(this.val$callable.call());
        } catch (Exception e) {
            this.zzad.setException(e);
        }
    }
}
