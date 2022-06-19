package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfuh.class */
final class zzfuh extends zzfss<Map.Entry> {
    public final /* synthetic */ zzfui zza;

    public zzfuh(zzfui zzfuiVar) {
        this.zza = zzfuiVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zza.zzc;
        zzfqg.zza(i, i2, "index");
        int i3 = i + i;
        objArr = this.zza.zzb;
        Object obj = objArr[i3];
        Objects.requireNonNull(obj);
        objArr2 = this.zza.zzb;
        Object obj2 = objArr2[i3 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.zza.zzc;
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzfsn
    public final boolean zzf() {
        return true;
    }
}
