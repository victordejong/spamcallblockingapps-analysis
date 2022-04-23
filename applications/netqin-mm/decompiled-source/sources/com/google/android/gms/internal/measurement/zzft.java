package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzft.class */
public final class zzft extends zzfb<Object> {
    public final transient Object[] zza;
    public final transient int zzb;
    public final transient int zzc;

    public zzft(Object[] objArr, int i, int i2) {
        this.zza = objArr;
        this.zzb = i;
        this.zzc = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzeb.m9818a(i, this.zzc);
        return this.zza[(i * 2) + this.zzb];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final boolean zzf() {
        return true;
    }
}
