package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgpi.class */
public final class zzgpi<E> extends AbstractList<E> {
    private static final zzgpj zzc = zzgpj.zzb(zzgpi.class);
    public final List<E> zza;
    public final Iterator<E> zzb;

    public zzgpi(List<E> list, Iterator<E> it2) {
        this.zza = list;
        this.zzb = it2;
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
        return new zzgph(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        zzgpj zzgpjVar = zzc;
        zzgpjVar.zza("potentially expensive size() call");
        zzgpjVar.zza("blowup running");
        while (this.zzb.hasNext()) {
            this.zza.add(this.zzb.next());
        }
        return this.zza.size();
    }
}
