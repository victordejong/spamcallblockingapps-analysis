package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqn.class */
final class dqn implements Iterator<String> {

    /* renamed from: a */
    private Iterator<String> f47447a;

    /* renamed from: b */
    private final /* synthetic */ dql f47448b;

    public dqn(dql dqlVar) {
        dnz dnzVar;
        this.f47448b = dqlVar;
        dnzVar = dqlVar.f47422a;
        this.f47447a = dnzVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f47447a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f47447a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
