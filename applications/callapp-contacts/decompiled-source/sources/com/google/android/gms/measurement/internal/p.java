package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/p.class */
final class p implements Iterator<String> {

    /* renamed from: a  reason: collision with root package name */
    final Iterator<String> f29967a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ zzaq f29968b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(zzaq zzaqVar) {
        Bundle bundle;
        this.f29968b = zzaqVar;
        bundle = zzaqVar.zza;
        this.f29967a = bundle.keySet().iterator();
    }

    /* renamed from: a */
    public final String next() {
        return this.f29967a.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29967a.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
