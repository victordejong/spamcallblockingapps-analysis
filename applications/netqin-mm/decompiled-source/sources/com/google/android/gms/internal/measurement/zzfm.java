package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfm.class */
public final class zzfm<E> extends zzfb<E> {
    public static final zzfb<Object> zza = new zzfm(new Object[0], 0);
    public final transient Object[] zzb;
    public final transient int zzc;

    public zzfm(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzeb.m9818a(i, this.zzc);
        return (E) this.zzb[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzfb, com.google.android.gms.internal.measurement.zzey
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, i, this.zzc);
        return i + this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final boolean zzf() {
        return false;
    }
}
