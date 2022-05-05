package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzap.class */
public final class zzap implements Iterator<String> {

    /* renamed from: f */
    private Iterator<String> f8880f;

    /* renamed from: g */
    private final /* synthetic */ zzam f8881g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzap(zzam zzamVar) {
        Bundle bundle;
        this.f8881g = zzamVar;
        bundle = this.f8881g.f8868f;
        this.f8880f = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8880f.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f8880f.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
