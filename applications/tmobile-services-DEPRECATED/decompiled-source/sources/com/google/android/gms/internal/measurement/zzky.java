package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzky.class */
final class zzky implements Iterator<String> {

    /* renamed from: f */
    private Iterator<String> f8642f;

    /* renamed from: g */
    private final /* synthetic */ zzkw f8643g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzky(zzkw zzkwVar) {
        zzis zzisVar;
        this.f8643g = zzkwVar;
        zzisVar = this.f8643g.f8630f;
        this.f8642f = zzisVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8642f.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f8642f.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
