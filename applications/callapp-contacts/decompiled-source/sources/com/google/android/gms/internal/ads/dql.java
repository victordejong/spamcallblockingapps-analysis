package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dql.class */
public final class dql extends AbstractList<String> implements dnz, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private final dnz f27110a;

    public dql(dnz dnzVar) {
        this.f27110a = dnzVar;
    }

    @Override // com.google.android.gms.internal.ads.dnz
    public final List<?> I_() {
        return this.f27110a.I_();
    }

    @Override // com.google.android.gms.internal.ads.dnz
    public final dnz J_() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.dnz
    public final void a(dlw dlwVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.dnz
    public final Object b(int i) {
        return this.f27110a.b(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f27110a.get(i);
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
        return this.f27110a.size();
    }
}
