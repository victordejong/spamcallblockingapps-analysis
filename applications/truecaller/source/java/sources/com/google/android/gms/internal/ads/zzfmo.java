package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfmo.class */
public final class zzfmo extends zzfpe {
    public final /* synthetic */ zzfmq zza;

    public zzfmo(zzfmq zzfmqVar) {
        this.zza = zzfmqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpe, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        boolean z;
        Set entrySet = this.zza.zza.entrySet();
        Objects.requireNonNull(entrySet);
        try {
            z = entrySet.contains(obj);
        } catch (ClassCastException | NullPointerException e) {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        return new zzfmp(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfpe, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        zzfnd.zzm(this.zza.zzb, entry.getKey());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfpe
    public final Map zza() {
        return this.zza;
    }
}
