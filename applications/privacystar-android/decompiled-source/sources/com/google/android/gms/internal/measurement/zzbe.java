package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbe.class */
final class zzbe implements Runnable {
    private final /* synthetic */ ComponentName val$name;
    private final /* synthetic */ zzbc zzxe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbe(zzbc zzbcVar, ComponentName componentName) {
        this.zzxe = zzbcVar;
        this.val$name = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzxe.zzxa.onServiceDisconnected(this.val$name);
    }
}
