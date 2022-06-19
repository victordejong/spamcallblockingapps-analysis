package com.google.android.gms.iid;

import android.content.Intent;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzh.class */
public final class zzh implements Runnable {
    private final /* synthetic */ Intent zzbf;
    private final /* synthetic */ zzg zzbl;

    public zzh(zzg zzgVar, Intent intent) {
        this.zzbl = zzgVar;
        this.zzbf = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String action = this.zzbf.getAction();
        StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
        sb.append("Service took too long to process intent: ");
        sb.append(action);
        sb.append(" App may get closed.");
        Log.w("EnhancedIntentService", sb.toString());
        this.zzbl.finish();
    }
}
