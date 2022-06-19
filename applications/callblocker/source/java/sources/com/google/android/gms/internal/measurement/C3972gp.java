package com.google.android.gms.internal.measurement;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.gp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gp.class */
public class C3972gp extends AbstractSet<Map.Entry<K, V>> {

    /* renamed from: a */
    private final /* synthetic */ C3965gi f18223a;

    private C3972gp(C3965gi c3965gi) {
        this.f18223a = c3965gi;
    }

    public /* synthetic */ C3972gp(C3965gi c3965gi, C3964gh c3964gh) {
        this(c3965gi);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        boolean z;
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            this.f18223a.m5358a((C3965gi) ((Comparable) entry.getKey()), (Comparable) entry.getValue());
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f18223a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f18223a.get(entry.getKey());
        Object value = entry.getValue();
        return obj2 == value || (obj2 != null && obj2.equals(value));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<K, V>> iterator() {
        return new C3973gq(this.f18223a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        boolean z;
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            this.f18223a.remove(entry.getKey());
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f18223a.size();
    }
}
