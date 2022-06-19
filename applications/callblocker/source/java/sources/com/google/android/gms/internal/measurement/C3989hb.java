package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.measurement.hb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/hb.class */
final class C3989hb implements Iterator<String> {

    /* renamed from: a */
    private Iterator<String> f18268a;

    /* renamed from: b */
    private final /* synthetic */ C3982gz f18269b;

    public C3989hb(C3982gz c3982gz) {
        AbstractC3923eu abstractC3923eu;
        this.f18269b = c3982gz;
        abstractC3923eu = this.f18269b.f18238a;
        this.f18268a = abstractC3923eu.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18268a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f18268a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
