package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfpl.class */
public final class zzfpl extends zzfpp {
    public final /* synthetic */ Comparator zza;

    public zzfpl(Comparator comparator) {
        this.zza = comparator;
    }

    @Override // com.google.android.gms.internal.ads.zzfpp
    public final <K, V> Map<K, Collection<V>> zza() {
        return new TreeMap(this.zza);
    }
}
