package com.google.android.gms.internal.mlkit_common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzah.class */
public final class zzah<E> extends zzad<E> {
    public static final zzad<Object> zza = new zzah(new Object[0], 0);
    private final transient Object[] zzb;
    private final transient int zzc;

    public zzah(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzy.zza(i, this.zzc);
        return (E) this.zzb[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzad, com.google.android.gms.internal.mlkit_common.zzac
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc + 0;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzac
    public final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzac
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzac
    public final int zzd() {
        return this.zzc;
    }
}
