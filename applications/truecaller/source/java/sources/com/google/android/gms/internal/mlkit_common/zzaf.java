package com.google.android.gms.internal.mlkit_common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzaf.class */
public final class zzaf<E> extends zzaa<E> {
    private final zzad<E> zza;

    public zzaf(zzad<E> zzadVar, int i) {
        super(zzadVar.size(), i);
        this.zza = zzadVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaa
    public final E zza(int i) {
        return this.zza.get(i);
    }
}
