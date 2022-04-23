package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p131c.p161d.p170b.p224d.p252g.p253a.aa0;
import p131c.p161d.p170b.p224d.p252g.p253a.ca0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzenc.class */
public final class zzenc extends AbstractList<String> implements zzeku, RandomAccess {

    /* renamed from: a */
    public final zzeku f28100a;

    public zzenc(zzeku zzekuVar) {
        this.f28100a = zzekuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeku
    /* renamed from: a */
    public final void mo12328a(zzeip zzeipVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f28100a.get(i);
    }

    @Override // com.google.android.gms.internal.ads.zzeku
    /* renamed from: i */
    public final Object mo12326i(int i) {
        return this.f28100a.mo12326i(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new ca0(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new aa0(this, i);
    }

    @Override // com.google.android.gms.internal.ads.zzeku
    /* renamed from: s */
    public final List<?> mo12325s() {
        return this.f28100a.mo12325s();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f28100a.size();
    }

    @Override // com.google.android.gms.internal.ads.zzeku
    /* renamed from: x */
    public final zzeku mo12324x() {
        return this;
    }
}
