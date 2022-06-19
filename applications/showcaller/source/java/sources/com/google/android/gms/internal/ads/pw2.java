package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pw2.class */
final class pw2 extends AbstractCollection {

    /* renamed from: d */
    final /* synthetic */ zzfns f28190d;

    public pw2(zzfns zzfnsVar) {
        this.f28190d = zzfnsVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f28190d.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzfns zzfnsVar = this.f28190d;
        Map zzg = zzfnsVar.zzg();
        return zzg != null ? zzg.values().iterator() : new jw2(zzfnsVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f28190d.size();
    }
}
