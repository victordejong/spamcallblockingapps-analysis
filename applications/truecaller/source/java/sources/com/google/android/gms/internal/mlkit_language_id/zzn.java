package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzn.class */
public final class zzn<E> extends zzi<E> {
    private final zzk<E> zza;

    public zzn(zzk<E> zzkVar, int i) {
        super(zzkVar.size(), i);
        this.zza = zzkVar;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzi
    public final E zza(int i) {
        return this.zza.get(i);
    }
}
