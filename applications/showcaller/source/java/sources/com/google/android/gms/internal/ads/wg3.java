package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wg3.class */
public final class wg3 extends AbstractList<String> implements RandomAccess, we3 {

    /* renamed from: d */
    private final we3 f31579d;

    public wg3(we3 we3Var) {
        this.f31579d = we3Var;
    }

    @Override // com.google.android.gms.internal.ads.we3
    /* renamed from: Z */
    public final Object mo9588Z(int i) {
        return this.f31579d.mo9588Z(i);
    }

    @Override // com.google.android.gms.internal.ads.we3
    /* renamed from: f */
    public final List<?> mo9586f() {
        return this.f31579d.mo9586f();
    }

    @Override // com.google.android.gms.internal.ads.we3
    /* renamed from: g */
    public final void mo9585g(zzgex zzgexVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((ve3) this.f31579d).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new vg3(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new ug3(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f31579d.size();
    }

    @Override // com.google.android.gms.internal.ads.we3
    public final we3 zzi() {
        return this;
    }
}
