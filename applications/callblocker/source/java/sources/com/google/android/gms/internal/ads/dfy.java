package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfy.class */
final class dfy implements Iterator<String> {

    /* renamed from: a */
    private Iterator<String> f14229a;

    /* renamed from: b */
    private final /* synthetic */ dfw f14230b;

    public dfy(dfw dfwVar) {
        ddm ddmVar;
        this.f14230b = dfwVar;
        ddmVar = this.f14230b.f14228a;
        this.f14229a = ddmVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14229a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f14229a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
