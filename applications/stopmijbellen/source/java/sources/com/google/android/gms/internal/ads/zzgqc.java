package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgqc.class */
public final class zzgqc<T> implements zzgpr<Set<T>> {
    private static final zzgpr<Set<Object>> zza = zzgps.zza(Collections.emptySet());
    private final List<zzgqe<T>> zzb;
    private final List<zzgqe<Collection<T>>> zzc;

    public /* synthetic */ zzgqc(List list, List list2, zzgqa zzgqaVar) {
        this.zzb = list;
        this.zzc = list2;
    }

    public static <T> zzgqb<T> zza(int i, int i2) {
        return new zzgqb<>(i, i2, null);
    }

    /* renamed from: zzc */
    public final Set<T> zzb() {
        int size = this.zzb.size();
        ArrayList arrayList = new ArrayList(this.zzc.size());
        int size2 = this.zzc.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> zzb = this.zzc.get(i).zzb();
            size += zzb.size();
            arrayList.add(zzb);
        }
        HashSet zza2 = zzgpo.zza(size);
        int size3 = this.zzb.size();
        for (int i2 = 0; i2 < size3; i2++) {
            T zzb2 = this.zzb.get(i2).zzb();
            Objects.requireNonNull(zzb2);
            zza2.add(zzb2);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                Objects.requireNonNull(obj);
                zza2.add(obj);
            }
        }
        return Collections.unmodifiableSet(zza2);
    }
}
