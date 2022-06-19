package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rv2.class */
final class rv2 implements Iterator {

    /* renamed from: d */
    Map.Entry f29256d;

    /* renamed from: e */
    final /* synthetic */ Iterator f29257e;

    /* renamed from: f */
    final /* synthetic */ sv2 f29258f;

    public rv2(sv2 sv2Var, Iterator it) {
        this.f29258f = sv2Var;
        this.f29257e = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29257e.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f29257e.next();
        this.f29256d = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        xu2.m9055b(this.f29256d != null, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.f29256d.getValue();
        this.f29257e.remove();
        zzfnd zzfndVar = this.f29258f.f29709e;
        i = zzfndVar.f34052h;
        zzfndVar.f34052h = i - collection.size();
        collection.clear();
        this.f29256d = null;
    }
}
