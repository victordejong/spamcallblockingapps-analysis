package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzr;
import java.util.AbstractMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzu.class */
final class zzu extends zzj<Map.Entry<K, V>> {
    private final /* synthetic */ zzr zzs;

    public zzu(zzr zzrVar) {
        this.zzs = zzrVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = ((zzr) this.zzs).size;
        zzd.zza(i, i2);
        objArr = ((zzr) this.zzs).zzf;
        int i3 = i * 2;
        zzr zzrVar = this.zzs;
        Object obj = objArr[i3];
        objArr2 = ((zzr) zzrVar).zzf;
        zzr zzrVar2 = this.zzs;
        return new AbstractMap.SimpleImmutableEntry(obj, objArr2[i3 + 1]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = ((zzr) this.zzs).size;
        return i;
    }
}
