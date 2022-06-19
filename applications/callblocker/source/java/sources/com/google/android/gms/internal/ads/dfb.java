package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfb.class */
final class dfb implements Iterator<dbu> {

    /* renamed from: a */
    private final ArrayDeque<dew> f14193a;

    /* renamed from: b */
    private dbu f14194b;

    private dfb(dbi dbiVar) {
        dbi dbiVar2;
        if (!(dbiVar instanceof dew)) {
            this.f14193a = null;
            this.f14194b = (dbu) dbiVar;
            return;
        }
        dew dewVar = (dew) dbiVar;
        this.f14193a = new ArrayDeque<>(dewVar.mo9902i());
        this.f14193a.push(dewVar);
        dbiVar2 = dewVar.f14178d;
        this.f14194b = m9848a(dbiVar2);
    }

    public /* synthetic */ dfb(dbi dbiVar, dez dezVar) {
        this(dbiVar);
    }

    /* renamed from: a */
    private final dbu m9848a(dbi dbiVar) {
        dbi dbiVar2;
        while (dbiVar instanceof dew) {
            dew dewVar = (dew) dbiVar;
            this.f14193a.push(dewVar);
            dbiVar2 = dewVar.f14178d;
            dbiVar = dbiVar2;
        }
        return (dbu) dbiVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14194b != null;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ dbu next() {
        dbu dbuVar;
        dbi dbiVar;
        if (this.f14194b == null) {
            throw new NoSuchElementException();
        }
        dbu dbuVar2 = this.f14194b;
        while (this.f14193a != null && !this.f14193a.isEmpty()) {
            dbiVar = this.f14193a.pop().f14179e;
            dbuVar = m9848a(dbiVar);
            if (!dbuVar.m10213c()) {
                break;
            }
        }
        dbuVar = null;
        this.f14194b = dbuVar;
        return dbuVar2;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
