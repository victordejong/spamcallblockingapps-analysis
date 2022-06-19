package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrj.class */
public class zzfrj extends AbstractCollection {
    public final Object zza;
    public Collection zzb;
    @CheckForNull
    public final zzfrj zzc;
    @CheckForNull
    public final Collection zzd;
    public final /* synthetic */ zzfrm zze;

    public zzfrj(zzfrm zzfrmVar, Object obj, @CheckForNull Collection collection, zzfrj zzfrjVar) {
        this.zze = zzfrmVar;
        this.zza = obj;
        this.zzb = collection;
        this.zzc = zzfrjVar;
        this.zzd = zzfrjVar == null ? null : zzfrjVar.zzb;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        int i;
        zzb();
        boolean isEmpty = this.zzb.isEmpty();
        boolean add = this.zzb.add(obj);
        if (add) {
            zzfrm zzfrmVar = this.zze;
            i = zzfrmVar.zzb;
            zzfrmVar.zzb = i + 1;
            if (isEmpty) {
                zza();
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
            zzfrm zzfrmVar = this.zze;
            i = zzfrmVar.zzb;
            zzfrmVar.zzb = (size2 - size) + i;
            z = addAll;
            if (size == 0) {
                zza();
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
        zzfrm zzfrmVar = this.zze;
        i = zzfrmVar.zzb;
        zzfrmVar.zzb = i - size;
        zzc();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        zzb();
        return this.zzb.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        zzb();
        return this.zzb.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        zzb();
        return this.zzb.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        zzb();
        return this.zzb.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzb();
        return new zzfri(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object obj) {
        int i;
        zzb();
        boolean remove = this.zzb.remove(obj);
        if (remove) {
            zzfrm zzfrmVar = this.zze;
            i = zzfrmVar.zzb;
            zzfrmVar.zzb = i - 1;
            zzc();
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
            zzfrm zzfrmVar = this.zze;
            i = zzfrmVar.zzb;
            zzfrmVar.zzb = (size2 - size) + i;
            zzc();
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
            zzfrm zzfrmVar = this.zze;
            i = zzfrmVar.zzb;
            zzfrmVar.zzb = (size2 - size) + i;
            zzc();
        }
        return retainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        zzb();
        return this.zzb.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        zzb();
        return this.zzb.toString();
    }

    public final void zza() {
        Map map;
        zzfrj zzfrjVar = this.zzc;
        if (zzfrjVar != null) {
            zzfrjVar.zza();
            return;
        }
        map = this.zze.zza;
        map.put(this.zza, this.zzb);
    }

    public final void zzb() {
        Map map;
        zzfrj zzfrjVar = this.zzc;
        if (zzfrjVar != null) {
            zzfrjVar.zzb();
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

    public final void zzc() {
        Map map;
        zzfrj zzfrjVar = this.zzc;
        if (zzfrjVar != null) {
            zzfrjVar.zzc();
        } else if (!this.zzb.isEmpty()) {
        } else {
            map = this.zze.zza;
            map.remove(this.zza);
        }
    }
}
