package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dw2.class */
final class dw2 extends AbstractCollection {

    /* renamed from: d */
    final /* synthetic */ ew2 f21894d;

    public dw2(ew2 ew2Var) {
        this.f21894d = ew2Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f21894d.zzi();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f21894d.zzr(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return this.f21894d.zzo();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f21894d.zzg();
    }
}
