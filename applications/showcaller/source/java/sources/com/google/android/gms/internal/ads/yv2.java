package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yv2.class */
class yv2 implements Iterator {

    /* renamed from: d */
    final Iterator f32665d;

    /* renamed from: e */
    final Collection f32666e;

    /* renamed from: f */
    final /* synthetic */ zv2 f32667f;

    public yv2(zv2 zv2Var) {
        this.f32667f = zv2Var;
        Collection collection = zv2Var.f33431e;
        this.f32666e = collection;
        this.f32665d = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    public yv2(zv2 zv2Var, Iterator it) {
        this.f32667f = zv2Var;
        this.f32666e = zv2Var.f33431e;
        this.f32665d = it;
    }

    /* renamed from: a */
    public final void m8682a() {
        this.f32667f.m8160c();
        if (this.f32667f.f33431e == this.f32666e) {
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        m8682a();
        return this.f32665d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        m8682a();
        return this.f32665d.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i;
        this.f32665d.remove();
        zzfnd zzfndVar = this.f32667f.f33434h;
        i = zzfndVar.f34052h;
        zzfndVar.f34052h = i - 1;
        this.f32667f.m8161b();
    }
}
