package com.google.android.gms.internal.firebase_remote_config;

import com.google.firebase.perf.FirebasePerformance;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zza.class */
public final class zza implements zzad, zzx {
    private final boolean zza;

    public zza() {
        this(false);
    }

    private zza(boolean z) {
        this.zza = false;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzad
    public final void zza(zzab zzabVar) {
        zzabVar.zza(this);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzx
    public final void zzb(zzab zzabVar) {
        String requestMethod = zzabVar.getRequestMethod();
        boolean z = true;
        if (requestMethod.equals(FirebasePerformance.HttpMethod.POST) || ((!requestMethod.equals(FirebasePerformance.HttpMethod.GET) || zzabVar.zzt().zzp().length() <= 2048) && zzabVar.zzs().zzz(requestMethod))) {
            z = false;
        }
        if (z) {
            String requestMethod2 = zzabVar.getRequestMethod();
            zzabVar.zzw(FirebasePerformance.HttpMethod.POST);
            zzabVar.zzx().zzb("X-HTTP-Method-Override", requestMethod2);
            if (requestMethod2.equals(FirebasePerformance.HttpMethod.GET)) {
                zzabVar.zza(new zzan((zzt) zzabVar.zzt().clone()));
                zzabVar.zzt().clear();
            } else if (zzabVar.zzu() != null) {
            } else {
                zzabVar.zza(new zzo());
            }
        }
    }
}
