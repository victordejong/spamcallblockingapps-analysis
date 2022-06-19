package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.measurement.iq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/iq.class */
final class C13585iq implements Iterator<String> {

    /* renamed from: a */
    final Iterator<String> f50858a;

    /* renamed from: b */
    final /* synthetic */ C13587is f50859b;

    public C13585iq(C13587is c13587is) {
        AbstractC13540gz abstractC13540gz;
        this.f50859b = c13587is;
        abstractC13540gz = c13587is.f50860a;
        this.f50858a = abstractC13540gz.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f50858a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f50858a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
