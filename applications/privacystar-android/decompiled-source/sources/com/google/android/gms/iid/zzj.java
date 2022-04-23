package com.google.android.gms.iid;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzj.class */
public final class zzj implements Runnable {
    private final /* synthetic */ zzg zzbj;
    private final /* synthetic */ zzi zzbk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(zzi zziVar, zzg zzgVar) {
        this.zzbk = zziVar;
        this.zzbj = zzgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zze zzeVar;
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        zzeVar = this.zzbk.zzbi;
        zzeVar.handleIntent(this.zzbj.intent);
        this.zzbj.finish();
    }
}
