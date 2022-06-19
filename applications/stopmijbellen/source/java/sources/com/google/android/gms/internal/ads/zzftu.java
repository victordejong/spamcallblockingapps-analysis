package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzftu.class */
final class zzftu extends zzfty {
    public final /* synthetic */ Comparator zza;

    public zzftu(Comparator comparator) {
        this.zza = comparator;
    }

    @Override // com.google.android.gms.internal.ads.zzfty
    public final <K, V> Map<K, Collection<V>> zza() {
        return new TreeMap(this.zza);
    }
}
