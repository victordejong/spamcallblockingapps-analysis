package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzai.class */
public final class zzai<E> extends zzw<E> {
    private final transient E zza;
    private transient int zzb;

    public zzai(E e) {
        this.zza = (E) zzi.zza(e);
    }

    public zzai(E e, int i) {
        this.zza = e;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzw, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.zzb;
        int i2 = i;
        if (i == 0) {
            i2 = this.zza.hashCode();
            this.zzb = i2;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.zza.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    public final int zza(Object[] objArr, int i) {
        objArr[i] = this.zza;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzl
    /* renamed from: zza */
    public final zzak<E> iterator() {
        return new zzy(this.zza);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzw
    public final boolean zzg() {
        return this.zzb != 0;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzw
    public final zzq<E> zzh() {
        return zzq.zza(this.zza);
    }
}
