package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfp.class */
public class dfp extends AbstractSet<Map.Entry<K, V>> {

    /* renamed from: a */
    private final /* synthetic */ dfe f14219a;

    private dfp(dfe dfeVar) {
        this.f14219a = dfeVar;
    }

    public /* synthetic */ dfp(dfe dfeVar, dfh dfhVar) {
        this(dfeVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        boolean z;
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            this.f14219a.m9832a((dfe) ((Comparable) entry.getKey()), (Comparable) entry.getValue());
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f14219a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f14219a.get(entry.getKey());
        Object value = entry.getValue();
        return obj2 == value || (obj2 != null && obj2.equals(value));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<K, V>> iterator() {
        return new dfm(this.f14219a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        boolean z;
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            this.f14219a.remove(entry.getKey());
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f14219a.size();
    }
}
