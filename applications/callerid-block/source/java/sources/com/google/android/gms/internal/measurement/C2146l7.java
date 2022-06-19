package com.google.android.gms.internal.measurement;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.l7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/l7.class */
public final class C2146l7 extends AbstractSet<Map.Entry> {

    /* renamed from: b */
    final /* synthetic */ C2150m7 f9785b;

    public /* synthetic */ C2146l7(C2150m7 c2150m7, f7 f7Var) {
        this.f9785b = c2150m7;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            this.f9785b.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f9785b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f9785b.get(entry.getKey());
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
        return new C2141k7(this.f9785b, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            this.f9785b.remove(entry.getKey());
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f9785b.size();
    }
}
