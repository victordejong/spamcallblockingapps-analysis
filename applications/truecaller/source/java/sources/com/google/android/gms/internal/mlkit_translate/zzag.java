package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzag.class */
public final class zzag<E> extends zzw<E> {
    public static final zzag<Object> zza = new zzag<>(new Object[0], 0, null, 0, 0);
    private final transient Object[] zzb;
    private final transient Object[] zzc;
    private final transient int zzd;
    private final transient int zze;
    private final transient int zzf;

    public zzag(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.zzb = objArr;
        this.zzc = objArr2;
        this.zzd = i2;
        this.zze = i;
        this.zzf = i3;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Object[] objArr = this.zzc;
        if (obj == null || objArr == null) {
            return false;
        }
        int zza2 = zzm.zza(obj.hashCode());
        while (true) {
            int i = zza2 & this.zzd;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            zza2 = i + 1;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzw, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zze;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, i, this.zzf);
        return i + this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    /* renamed from: zza */
    public final zzak<E> iterator() {
        return (zzak) zze().iterator();
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
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzw
    public final boolean zzg() {
        return true;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzw
    public final zzq<E> zzh() {
        return zzq.zzb(this.zzb, this.zzf);
    }
}
