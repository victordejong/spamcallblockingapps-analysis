package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zv2.class */
public class zv2 extends AbstractCollection {

    /* renamed from: d */
    final Object f33430d;

    /* renamed from: e */
    Collection f33431e;

    /* renamed from: f */
    final zv2 f33432f;

    /* renamed from: g */
    final Collection f33433g;

    /* renamed from: h */
    final /* synthetic */ zzfnd f33434h;

    public zv2(zzfnd zzfndVar, Object obj, Collection collection, zv2 zv2Var) {
        this.f33434h = zzfndVar;
        this.f33430d = obj;
        this.f33431e = collection;
        this.f33432f = zv2Var;
        this.f33433g = zv2Var == null ? null : zv2Var.f33431e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        int i;
        m8160c();
        boolean isEmpty = this.f33431e.isEmpty();
        boolean add = this.f33431e.add(obj);
        if (add) {
            zzfnd zzfndVar = this.f33434h;
            i = zzfndVar.f34052h;
            zzfndVar.f34052h = i + 1;
            if (isEmpty) {
                m8159d();
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
        boolean addAll = this.f33431e.addAll(collection);
        boolean z = addAll;
        if (addAll) {
            int size2 = this.f33431e.size();
            zzfnd zzfndVar = this.f33434h;
            i = zzfndVar.f34052h;
            zzfndVar.f34052h = i + (size2 - size);
            z = addAll;
            if (size == 0) {
                m8159d();
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m8161b() {
        Map map;
        zv2 zv2Var = this.f33432f;
        if (zv2Var != null) {
            zv2Var.m8161b();
        } else if (!this.f33431e.isEmpty()) {
        } else {
            map = this.f33434h.f34051g;
            map.remove(this.f33430d);
        }
    }

    /* renamed from: c */
    public final void m8160c() {
        Map map;
        zv2 zv2Var = this.f33432f;
        if (zv2Var != null) {
            zv2Var.m8160c();
            if (this.f33432f.f33431e != this.f33433g) {
                throw new ConcurrentModificationException();
            }
        } else if (!this.f33431e.isEmpty()) {
        } else {
            map = this.f33434h.f34051g;
            Collection collection = (Collection) map.get(this.f33430d);
            if (collection == null) {
                return;
            }
            this.f33431e = collection;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int i;
        int size = size();
        if (size == 0) {
            return;
        }
        this.f33431e.clear();
        zzfnd zzfndVar = this.f33434h;
        i = zzfndVar.f34052h;
        zzfndVar.f34052h = i - size;
        m8161b();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        m8160c();
        return this.f33431e.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        m8160c();
        return this.f33431e.containsAll(collection);
    }

    /* renamed from: d */
    public final void m8159d() {
        Map map;
        zv2 zv2Var = this.f33432f;
        if (zv2Var != null) {
            zv2Var.m8159d();
            return;
        }
        map = this.f33434h.f34051g;
        map.put(this.f33430d, this.f33431e);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        m8160c();
        return this.f33431e.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        m8160c();
        return this.f33431e.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        m8160c();
        return new yv2(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        int i;
        m8160c();
        boolean remove = this.f33431e.remove(obj);
        if (remove) {
            zzfnd zzfndVar = this.f33434h;
            i = zzfndVar.f34052h;
            zzfndVar.f34052h = i - 1;
            m8161b();
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
        boolean removeAll = this.f33431e.removeAll(collection);
        if (removeAll) {
            int size2 = this.f33431e.size();
            zzfnd zzfndVar = this.f33434h;
            i = zzfndVar.f34052h;
            zzfndVar.f34052h = i + (size2 - size);
            m8161b();
        }
        return removeAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        int i;
        Objects.requireNonNull(collection);
        int size = size();
        boolean retainAll = this.f33431e.retainAll(collection);
        if (retainAll) {
            int size2 = this.f33431e.size();
            zzfnd zzfndVar = this.f33434h;
            i = zzfndVar.f34052h;
            zzfndVar.f34052h = i + (size2 - size);
            m8161b();
        }
        return retainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        m8160c();
        return this.f33431e.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        m8160c();
        return this.f33431e.toString();
    }
}
