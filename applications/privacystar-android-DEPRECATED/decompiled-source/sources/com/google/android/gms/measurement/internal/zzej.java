package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzej.class */
final class zzej implements Runnable {
    private final /* synthetic */ zzef zzasp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzej(zzef zzefVar) {
        this.zzasp = zzefVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdr zzdrVar = this.zzasp.zzasg;
        Context context = this.zzasp.zzasg.getContext();
        this.zzasp.zzasg.zzgr();
        zzdrVar.onServiceDisconnected(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
