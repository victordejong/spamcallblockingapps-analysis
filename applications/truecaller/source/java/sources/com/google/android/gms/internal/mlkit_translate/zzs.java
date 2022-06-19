package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzs.class */
public final class zzs<E> extends zzk<E> {
    private final zzq<E> zza;

    public zzs(zzq<E> zzqVar, int i) {
        super(zzqVar.size(), i);
        this.zza = zzqVar;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzk
    public final E zza(int i) {
        return this.zza.get(i);
    }
}
