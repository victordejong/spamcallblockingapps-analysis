package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dql.class */
public final class dql extends AbstractList<String> implements dnz, RandomAccess {

    /* renamed from: a */
    private final dnz f47422a;

    public dql(dnz dnzVar) {
        this.f47422a = dnzVar;
    }

    @Override // com.google.android.gms.internal.ads.dnz
    /* renamed from: I_ */
    public final List<?> mo16001I_() {
        return this.f47422a.mo16001I_();
    }

    @Override // com.google.android.gms.internal.ads.dnz
    /* renamed from: J_ */
    public final dnz mo16000J_() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.dnz
    /* renamed from: a */
    public final void mo15999a(dlw dlwVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.dnz
    /* renamed from: b */
    public final Object mo15997b(int i) {
        return this.f47422a.mo15997b(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f47422a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new dqn(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new dqk(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f47422a.size();
    }
}
