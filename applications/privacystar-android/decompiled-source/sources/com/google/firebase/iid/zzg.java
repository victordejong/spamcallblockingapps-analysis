package com.google.firebase.iid;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzg.class */
public final class zzg implements Runnable {
    private final /* synthetic */ zzd zzv;
    private final /* synthetic */ zzf zzw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(zzf zzfVar, zzd zzdVar) {
        this.zzw = zzfVar;
        this.zzv = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzb zzbVar;
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        zzbVar = this.zzw.zzu;
        zzbVar.zzd(this.zzv.intent);
        this.zzv.finish();
    }
}
