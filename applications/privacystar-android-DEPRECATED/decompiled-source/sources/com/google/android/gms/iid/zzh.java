package com.google.android.gms.iid;

import android.content.Intent;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzh.class */
public final class zzh implements Runnable {
    private final /* synthetic */ Intent zzbb;
    private final /* synthetic */ zzg zzbh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzg zzgVar, Intent intent) {
        this.zzbh = zzgVar;
        this.zzbb = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String action = this.zzbb.getAction();
        StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
        sb.append("Service took too long to process intent: ");
        sb.append(action);
        sb.append(" App may get closed.");
        Log.w("EnhancedIntentService", sb.toString());
        this.zzbh.finish();
    }
}
