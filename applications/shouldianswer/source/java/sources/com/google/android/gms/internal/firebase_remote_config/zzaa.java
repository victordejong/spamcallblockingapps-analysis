package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzaa.class */
public final class zzaa {
    private final zzad zzba;
    private final zzag zzx;

    public zzaa(zzag zzagVar, zzad zzadVar) {
        this.zzx = zzagVar;
        this.zzba = zzadVar;
    }

    public final zzab zza(String str, zzt zztVar, zzs zzsVar) {
        zzab zzabVar = new zzab(this.zzx, null);
        zzad zzadVar = this.zzba;
        if (zzadVar != null) {
            zzadVar.zza(zzabVar);
        }
        zzabVar.zzw(str);
        zzabVar.zza(zztVar);
        if (zzsVar != null) {
            zzabVar.zza(zzsVar);
        }
        return zzabVar;
    }
}
