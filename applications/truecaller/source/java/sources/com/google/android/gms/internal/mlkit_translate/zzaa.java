package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzaa.class */
public final class zzaa<E> extends zzq<E> {
    public static final zzq<Object> zza = new zzaa(new Object[0], 0);
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzaa(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzi.zza(i, this.zzc);
        return (E) this.zzb[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzq, com.google.android.gms.internal.mlkit_translate.zzl
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, i, this.zzc);
        return i + this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final int zzd() {
        return this.zzc;
    }
}
