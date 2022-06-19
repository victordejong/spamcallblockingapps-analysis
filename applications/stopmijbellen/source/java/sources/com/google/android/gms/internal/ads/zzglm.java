package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglm.class */
final class zzglm implements zzglt {
    private final zzglt[] zza;

    public zzglm(zzglt... zzgltVarArr) {
        this.zza = zzgltVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzglt
    public final zzgls zzb(Class<?> cls) {
        zzglt[] zzgltVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzglt zzgltVar = zzgltVarArr[i];
            if (zzgltVar.zzc(cls)) {
                return zzgltVar.zzb(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.ads.zzglt
    public final boolean zzc(Class<?> cls) {
        zzglt[] zzgltVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzgltVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
