package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzh.class */
public final class zzh implements zzah {
    private final /* synthetic */ zzah zzab;
    private final /* synthetic */ zzab zzac;
    private final /* synthetic */ zzf zzad;

    public zzh(zzf zzfVar, zzah zzahVar, zzab zzabVar) {
        this.zzad = zzfVar;
        this.zzab = zzahVar;
        this.zzac = zzabVar;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzah
    public final void zzb(zzac zzacVar) {
        zzah zzahVar = this.zzab;
        if (zzahVar != null) {
            zzahVar.zzb(zzacVar);
        }
        if (zzacVar.zzad() || !this.zzac.zzab()) {
            return;
        }
        throw this.zzad.zza(zzacVar);
    }
}
