package com.google.android.gms.iid;

import android.os.Binder;
import android.os.Process;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzi.class */
public final class zzi extends Binder {
    private final zze zzbm;

    public zzi(zze zzeVar) {
        this.zzbm = zzeVar;
    }

    public final void zzd(zzg zzgVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "service received new intent via bind strategy");
            }
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "intent being queued for bg execution");
            }
            this.zzbm.zzbb.execute(new zzj(this, zzgVar));
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
