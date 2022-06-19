package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzp.class */
public final class zzp<E> extends zzk<E> {
    public static final zzk<Object> zza = new zzp(new Object[0], 0);
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzp(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzg.zza(i, this.zzc);
        return (E) this.zzb[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzk, com.google.android.gms.internal.mlkit_language_id.zzl
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc + 0;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzl
    public final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzl
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzl
    public final int zzd() {
        return this.zzc;
    }
}
