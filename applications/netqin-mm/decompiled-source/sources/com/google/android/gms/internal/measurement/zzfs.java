package com.google.android.gms.internal.measurement;

import p131c.p161d.p170b.p224d.p252g.p258f.C4616x1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfs.class */
public final class zzfs<E> extends zzfg<E> {
    public static final zzfs<Object> zza = new zzfs<>(new Object[0], 0, null, 0, 0);
    public final transient Object[] zzb;
    public final transient Object[] zzc;
    public final transient int zzd;
    public final transient int zze;
    public final transient int zzf;

    public zzfs(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.zzb = objArr;
        this.zzc = objArr2;
        this.zzd = i2;
        this.zze = i;
        this.zzf = i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Object[] objArr = this.zzc;
        if (obj == null || objArr == null) {
            return false;
        }
        int a = C4616x1.m25174a(obj);
        while (true) {
            int i = a & this.zzd;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a = i + 1;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzfg, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zze;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzb, 0, objArr, i, this.zzf);
        return i + this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: zza */
    public final zzfx<E> iterator() {
        return (zzfx) zze().iterator();
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
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    public final boolean zzg() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    public final zzfb<E> zzh() {
        return zzfb.zzb(this.zzb, this.zzf);
    }
}
