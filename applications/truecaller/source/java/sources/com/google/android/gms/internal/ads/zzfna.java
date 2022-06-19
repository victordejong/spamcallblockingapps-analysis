package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfna.class */
public class zzfna extends AbstractCollection {
    public final Object zza;
    public Collection zzb;
    public final zzfna zzc;
    public final Collection zzd;
    public final /* synthetic */ zzfnd zze;

    public zzfna(zzfnd zzfndVar, Object obj, Collection collection, zzfna zzfnaVar) {
        this.zze = zzfndVar;
        this.zza = obj;
        this.zzb = collection;
        this.zzc = zzfnaVar;
        this.zzd = zzfnaVar == null ? null : zzfnaVar.zzb;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        int i;
        zza();
        boolean isEmpty = this.zzb.isEmpty();
        boolean add = this.zzb.add(obj);
        if (add) {
            zzfnd zzfndVar = this.zze;
            i = zzfndVar.zzb;
            zzfndVar.zzb = i + 1;
            if (isEmpty) {
                zzc();
                return true;
            }
        }
        return add;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        int i;
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = this.zzb.addAll(collection);
        boolean z = addAll;
        if (addAll) {
            int size2 = this.zzb.size();
            zzfnd zzfndVar = this.zze;
            i = zzfndVar.zzb;
            zzfndVar.zzb = (size2 - size) + i;
            z = addAll;
            if (size == 0) {
                zzc();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int i;
        int size = size();
        if (size == 0) {
            return;
        }
        this.zzb.clear();
        zzfnd zzfndVar = this.zze;
        i = zzfndVar.zzb;
        zzfndVar.zzb = i - size;
        zzb();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        zza();
        return this.zzb.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        zza();
        return this.zzb.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        zza();
        return this.zzb.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        zza();
        return this.zzb.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zza();
        return new zzfmz(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        int i;
        zza();
        boolean remove = this.zzb.remove(obj);
        if (remove) {
            zzfnd zzfndVar = this.zze;
            i = zzfndVar.zzb;
            zzfndVar.zzb = i - 1;
            zzb();
        }
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        int i;
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean removeAll = this.zzb.removeAll(collection);
        if (removeAll) {
            int size2 = this.zzb.size();
            zzfnd zzfndVar = this.zze;
            i = zzfndVar.zzb;
            zzfndVar.zzb = (size2 - size) + i;
            zzb();
        }
        return removeAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        int i;
        Objects.requireNonNull(collection);
        int size = size();
        boolean retainAll = this.zzb.retainAll(collection);
        if (retainAll) {
            int size2 = this.zzb.size();
            zzfnd zzfndVar = this.zze;
            i = zzfndVar.zzb;
            zzfndVar.zzb = (size2 - size) + i;
            zzb();
        }
        return retainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        zza();
        return this.zzb.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        zza();
        return this.zzb.toString();
    }

    public final void zza() {
        Map map;
        zzfna zzfnaVar = this.zzc;
        if (zzfnaVar != null) {
            zzfnaVar.zza();
            if (this.zzc.zzb != this.zzd) {
                throw new ConcurrentModificationException();
            }
        } else if (!this.zzb.isEmpty()) {
        } else {
            map = this.zze.zza;
            Collection collection = (Collection) map.get(this.zza);
            if (collection == null) {
                return;
            }
            this.zzb = collection;
        }
    }

    public final void zzb() {
        Map map;
        zzfna zzfnaVar = this.zzc;
        if (zzfnaVar != null) {
            zzfnaVar.zzb();
        } else if (!this.zzb.isEmpty()) {
        } else {
            map = this.zze.zza;
            map.remove(this.zza);
        }
    }

    public final void zzc() {
        Map map;
        zzfna zzfnaVar = this.zzc;
        if (zzfnaVar != null) {
            zzfnaVar.zzc();
            return;
        }
        map = this.zze.zza;
        map.put(this.zza, this.zzb);
    }
}
