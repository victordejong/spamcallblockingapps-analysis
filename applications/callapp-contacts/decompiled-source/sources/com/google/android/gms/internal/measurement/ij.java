package com.google.android.gms.internal.measurement;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ij.class */
final class ij extends AbstractSet<Map.Entry> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ik f29127a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ij(ik ikVar, id idVar) {
        this.f29127a = ikVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.f29127a.a((ik) ((Comparable) entry.getKey()), (Comparable) entry.getValue());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f29127a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f29127a.get(entry.getKey());
        Object value = entry.getValue();
        boolean z = false;
        if (obj2 != value) {
            if (obj2 != null) {
                if (!obj2.equals(value)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        return new ii(this.f29127a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.f29127a.remove(entry.getKey());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f29127a.size();
    }
}
