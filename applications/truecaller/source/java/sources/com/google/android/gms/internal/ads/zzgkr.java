package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgkr.class */
public final class zzgkr<E> extends AbstractList<E> {
    private static final zzgks zzc = zzgks.zzb(zzgkr.class);
    public final List<E> zza;
    public final Iterator<E> zzb;

    public zzgkr(List<E> list, Iterator<E> it) {
        this.zza = list;
        this.zzb = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        if (this.zza.size() > i) {
            return this.zza.get(i);
        }
        if (!this.zzb.hasNext()) {
            throw new NoSuchElementException();
        }
        this.zza.add(this.zzb.next());
        return get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return new zzgkq(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        zzgks zzgksVar = zzc;
        zzgksVar.zza("potentially expensive size() call");
        zzgksVar.zza("blowup running");
        while (this.zzb.hasNext()) {
            this.zza.add(this.zzb.next());
        }
        return this.zza.size();
    }
}
