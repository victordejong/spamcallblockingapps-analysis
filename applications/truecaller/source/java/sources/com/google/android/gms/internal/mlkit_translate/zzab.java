package com.google.android.gms.internal.mlkit_translate;

import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzab.class */
public final class zzab extends zzq<Map.Entry<K, V>> {
    private final /* synthetic */ zzac zza;

    public zzab(zzac zzacVar) {
        this.zza = zzacVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zza.zzd;
        zzi.zza(i, i2);
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
}
