package com.google.android.gms.iid;

import android.content.Intent;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzh.class */
public final class zzh implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ Intent f7783f;

    /* renamed from: g */
    private final /* synthetic */ zzg f7784g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzg zzgVar, Intent intent) {
        this.f7784g = zzgVar;
        this.f7783f = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String action = this.f7783f.getAction();
        StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
        sb.append("Service took too long to process intent: ");
        sb.append(action);
        sb.append(" App may get closed.");
        Log.w("EnhancedIntentService", sb.toString());
        this.f7784g.m14144a();
    }
}
