package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzv.class */
public final class zzv implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzu f9899f;

    /* renamed from: g */
    private final /* synthetic */ Callable f9900g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(zzu zzuVar, Callable callable) {
        this.f9899f = zzuVar;
        this.f9900g = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f9899f.m10778r(this.f9900g.call());
        } catch (Exception e) {
            this.f9899f.m10779q(e);
        }
    }
}
