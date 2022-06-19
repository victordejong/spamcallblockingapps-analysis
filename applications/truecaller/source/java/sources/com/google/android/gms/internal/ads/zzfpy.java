package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfpy.class */
public final class zzfpy extends zzfoj<Map.Entry> {
    public final /* synthetic */ zzfpz zza;

    public zzfpy(zzfpz zzfpzVar) {
        this.zza = zzfpzVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zza.zzc;
        zzflx.zze(i, i2, "index");
        int i3 = i + i;
        objArr = this.zza.zzb;
        Object obj = objArr[i3];
        obj.getClass();
        objArr2 = this.zza.zzb;
        Object obj2 = objArr2[i3 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.zza.zzc;
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        return true;
    }
}
