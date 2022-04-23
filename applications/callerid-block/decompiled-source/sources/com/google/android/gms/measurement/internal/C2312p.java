package com.google.android.gms.measurement.internal;

import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/p.class */
final class C2312p implements Iterator<String> {

    /* renamed from: b */
    final Iterator<String> f10346b;

    /* renamed from: c */
    final /* synthetic */ zzaq f10347c;

    C2312p(zzaq zzaqVar) {
        this.f10347c = zzaqVar;
        this.f10346b = zzaq.G(zzaqVar).keySet().iterator();
    }

    /* renamed from: b */
    public final String next() {
        return this.f10346b.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10346b.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
