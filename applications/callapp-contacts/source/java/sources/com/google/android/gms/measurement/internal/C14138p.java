package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/p.class */
final class C14138p implements Iterator<String> {

    /* renamed from: a */
    final Iterator<String> f52072a;

    /* renamed from: b */
    final /* synthetic */ zzaq f52073b;

    public C14138p(zzaq zzaqVar) {
        Bundle bundle;
        this.f52073b = zzaqVar;
        bundle = zzaqVar.zza;
        this.f52072a = bundle.keySet().iterator();
    }

    /* renamed from: a */
    public final String next() {
        return this.f52072a.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f52072a.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
