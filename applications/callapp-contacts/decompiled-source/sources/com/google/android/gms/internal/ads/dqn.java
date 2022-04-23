package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqn.class */
final class dqn implements Iterator<String> {

    /* renamed from: a  reason: collision with root package name */
    private Iterator<String> f27116a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dql f27117b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dqn(dql dqlVar) {
        dnz dnzVar;
        this.f27117b = dqlVar;
        dnzVar = dqlVar.f27110a;
        this.f27116a = dnzVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27116a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f27116a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
