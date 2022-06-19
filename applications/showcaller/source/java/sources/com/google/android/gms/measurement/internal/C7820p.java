package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/p.class */
final class C7820p implements Iterator<String> {

    /* renamed from: d */
    final Iterator<String> f35564d;

    /* renamed from: e */
    final /* synthetic */ zzaq f35565e;

    public C7820p(zzaq zzaqVar) {
        Bundle bundle;
        this.f35565e = zzaqVar;
        bundle = zzaqVar.f35871d;
        this.f35564d = bundle.keySet().iterator();
    }

    /* renamed from: a */
    public final String next() {
        return this.f35564d.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f35564d.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
