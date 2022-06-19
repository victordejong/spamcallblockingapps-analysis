package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qv2.class */
public class qv2<T> implements Iterator<T> {

    /* renamed from: d */
    final Iterator<Map.Entry> f28638d;

    /* renamed from: e */
    Object f28639e = null;

    /* renamed from: f */
    Collection f28640f = null;

    /* renamed from: g */
    Iterator f28641g = zzfow.INSTANCE;

    /* renamed from: h */
    final /* synthetic */ zzfnd f28642h;

    public qv2(zzfnd zzfndVar) {
        Map map;
        this.f28642h = zzfndVar;
        map = zzfndVar.f34051g;
        this.f28638d = map.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f28638d.hasNext() || this.f28641g.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!this.f28641g.hasNext()) {
            Map.Entry next = this.f28638d.next();
            this.f28639e = next.getKey();
            Collection collection = (Collection) next.getValue();
            this.f28640f = collection;
            this.f28641g = collection.iterator();
        }
        return (T) this.f28641g.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        this.f28641g.remove();
        Collection collection = this.f28640f;
        collection.getClass();
        if (collection.isEmpty()) {
            this.f28638d.remove();
        }
        zzfnd zzfndVar = this.f28642h;
        i = zzfndVar.f34052h;
        zzfndVar.f34052h = i - 1;
    }
}
