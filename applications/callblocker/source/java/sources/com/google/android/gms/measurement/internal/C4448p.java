package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Iterator;
/* renamed from: com.google.android.gms.measurement.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/p.class */
public final class C4448p implements Iterator<String> {

    /* renamed from: a */
    private Iterator<String> f19384a;

    /* renamed from: b */
    private final /* synthetic */ C4445m f19385b;

    public C4448p(C4445m c4445m) {
        Bundle bundle;
        this.f19385b = c4445m;
        bundle = this.f19385b.f19372a;
        this.f19384a = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19384a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f19384a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
