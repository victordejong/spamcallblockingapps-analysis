package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mw2.class */
final class mw2 extends AbstractSet {

    /* renamed from: d */
    final /* synthetic */ zzfns f26899d;

    public mw2(zzfns zzfnsVar) {
        this.f26899d = zzfnsVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f26899d.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f26899d.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfns zzfnsVar = this.f26899d;
        Map zzg = zzfnsVar.zzg();
        return zzg != null ? zzg.keySet().iterator() : new hw2(zzfnsVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        boolean z;
        Object m7863h;
        Object obj2;
        Map zzg = this.f26899d.zzg();
        if (zzg != null) {
            z = zzg.keySet().remove(obj);
        } else {
            m7863h = this.f26899d.m7863h(obj);
            obj2 = zzfns.f34053d;
            if (m7863h != obj2) {
                return true;
            }
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f26899d.size();
    }
}
