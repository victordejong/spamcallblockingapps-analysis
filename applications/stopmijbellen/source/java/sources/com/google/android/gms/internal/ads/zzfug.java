package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfug.class */
public final class zzfug<E> extends zzfss<E> {
    public static final zzfss<Object> zza = new zzfug(new Object[0], 0);
    public final transient Object[] zzb;
    private final transient int zzc;

    public zzfug(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzfqg.zza(i, this.zzc, "index");
        E e = (E) this.zzb[i];
        Objects.requireNonNull(e);
        return e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfss, com.google.android.gms.internal.ads.zzfsn
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, i, this.zzc);
        return i + this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final Object[] zzg() {
        return this.zzb;
    }
}
