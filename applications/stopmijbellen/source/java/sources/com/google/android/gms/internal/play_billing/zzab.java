package com.google.android.gms.internal.play_billing;

import java.util.AbstractMap;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzab.class */
final class zzab extends zzu {
    public final /* synthetic */ zzac zza;

    public zzab(zzac zzacVar) {
        this.zza = zzacVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.zza.zzc;
        zzm.zza(i, i2, "index");
        zzac zzacVar = this.zza;
        int i3 = i + i;
        objArr = zzacVar.zzb;
        Object obj = objArr[i3];
        Objects.requireNonNull(obj);
        objArr2 = zzacVar.zzb;
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
}
