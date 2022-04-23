package com.google.android.gms.iid;

import android.os.Binder;
import android.os.Process;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzi.class */
public final class zzi extends Binder {

    /* renamed from: a */
    private final zze f7785a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(zze zzeVar) {
        this.f7785a = zzeVar;
    }

    /* renamed from: b */
    public final void m14142b(zzg zzgVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "service received new intent via bind strategy");
            }
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "intent being queued for bg execution");
            }
            this.f7785a.f7771f.execute(new zzj(this, zzgVar));
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
