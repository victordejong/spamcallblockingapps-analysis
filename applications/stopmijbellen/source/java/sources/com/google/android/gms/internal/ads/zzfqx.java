package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqx.class */
final class zzfqx extends zzftn {
    public final /* synthetic */ zzfqz zza;

    public zzfqx(zzfqz zzfqzVar) {
        this.zza = zzfqzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzftn, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
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
        return new zzfqy(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzftn, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Objects.requireNonNull(entry);
        zzfrm.zzo(this.zza.zzb, entry.getKey());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    public final Map zza() {
        return this.zza;
    }
}
