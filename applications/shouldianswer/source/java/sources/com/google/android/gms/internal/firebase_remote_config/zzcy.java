package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzcy.class */
public final class zzcy extends zzl {
    static {
        boolean z = zzb.zzb.intValue() == 1 && zzb.zzc.intValue() >= 15;
        String str = zzb.VERSION;
        if (z) {
            return;
        }
        throw new IllegalStateException(zzdy.zza("You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0-SNAPSHOT of the Firebase Remote Config API library.", str));
    }

    public zzcy(zzcx zzcxVar) {
        super(zzcxVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzd
    public final void zza(zzf<?> zzfVar) {
        super.zza(zzfVar);
    }
}
