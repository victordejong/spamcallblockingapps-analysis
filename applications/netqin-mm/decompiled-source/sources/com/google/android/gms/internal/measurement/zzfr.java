package com.google.android.gms.internal.measurement;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfr.class */
public final class zzfr extends zzfb<Map.Entry<K, V>> {
    public final /* synthetic */ zzfo zza;

    public zzfr(zzfo zzfoVar) {
        this.zza = zzfoVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zza.zzd;
        zzeb.m9818a(i, i2);
        objArr = this.zza.zzb;
        int i3 = i * 2;
        Object obj = objArr[i3];
        objArr2 = this.zza.zzb;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i3 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.zza.zzd;
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final boolean zzf() {
        return true;
    }
}
