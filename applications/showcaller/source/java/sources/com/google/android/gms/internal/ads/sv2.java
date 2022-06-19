package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sv2.class */
public class sv2 extends px2 {

    /* renamed from: e */
    final /* synthetic */ zzfnd f29709e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sv2(zzfnd zzfndVar, Map map) {
        super(map);
        this.f29709e = zzfndVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        jx2.m14014b(iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        return this.f28213d.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return this == obj || this.f28213d.keySet().equals(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f28213d.keySet().hashCode();
    }

    @Override // com.google.android.gms.internal.ads.px2, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new rv2(this, this.f28213d.entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i;
        Collection collection = (Collection) this.f28213d.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfnd zzfndVar = this.f29709e;
            i = zzfndVar.f34052h;
            zzfndVar.f34052h = i - size;
            return size > 0;
        }
        return false;
    }
}
