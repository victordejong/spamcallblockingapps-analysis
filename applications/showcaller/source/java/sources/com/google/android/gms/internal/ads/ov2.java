package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ov2.class */
final class ov2 implements Iterator<Map.Entry> {

    /* renamed from: d */
    final Iterator<Map.Entry> f27750d;

    /* renamed from: e */
    Collection f27751e;

    /* renamed from: f */
    final /* synthetic */ pv2 f27752f;

    public ov2(pv2 pv2Var) {
        this.f27752f = pv2Var;
        this.f27750d = pv2Var.f28176f.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27750d.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        Map.Entry next = this.f27750d.next();
        this.f27751e = (Collection) next.getValue();
        return this.f27752f.m12123b(next);
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        xu2.m9055b(this.f27751e != null, "no calls to next() since the last call to remove()");
        this.f27750d.remove();
        zzfnd zzfndVar = this.f27752f.f28177g;
        i = zzfndVar.f34052h;
        zzfndVar.f34052h = i - this.f27751e.size();
        this.f27751e.clear();
        this.f27751e = null;
    }
}
