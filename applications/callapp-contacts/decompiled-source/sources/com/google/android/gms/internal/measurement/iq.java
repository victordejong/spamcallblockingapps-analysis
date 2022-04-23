package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/iq.class */
final class iq implements Iterator<String> {

    /* renamed from: a  reason: collision with root package name */
    final Iterator<String> f29139a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ is f29140b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iq(is isVar) {
        gz gzVar;
        this.f29140b = isVar;
        gzVar = isVar.f29141a;
        this.f29139a = gzVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29139a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f29139a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
