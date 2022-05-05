package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeh.class */
final class zzeh implements Runnable {
    private final /* synthetic */ ComponentName val$name;
    private final /* synthetic */ zzef zzasp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeh(zzef zzefVar, ComponentName componentName) {
        this.zzasp = zzefVar;
        this.val$name = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzasp.zzasg.onServiceDisconnected(this.val$name);
    }
}
