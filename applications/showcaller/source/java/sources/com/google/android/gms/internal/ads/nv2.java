package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nv2.class */
final class nv2 extends ox2 {

    /* renamed from: d */
    final /* synthetic */ pv2 f27334d;

    public nv2(pv2 pv2Var) {
        this.f27334d = pv2Var;
    }

    @Override // com.google.android.gms.internal.ads.ox2
    /* renamed from: c */
    final Map mo12477c() {
        return this.f27334d;
    }

    @Override // com.google.android.gms.internal.ads.ox2, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        boolean z;
        Set entrySet = this.f27334d.f28176f.entrySet();
        Objects.requireNonNull(entrySet);
        try {
            z = entrySet.contains(obj);
        } catch (ClassCastException | NullPointerException e) {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        return new ov2(this.f27334d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        zzfnd.zzm(this.f27334d.f28177g, entry.getKey());
        return true;
    }
}
