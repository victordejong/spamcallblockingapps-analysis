package com.google.android.gms.internal.icing;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfc.class */
final class zzfc implements Iterator<String> {
    private final /* synthetic */ zzfa zzlr;
    private Iterator<String> zzls;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfc(zzfa zzfaVar) {
        zzdb zzdbVar;
        this.zzlr = zzfaVar;
        zzdbVar = this.zzlr.zzlp;
        this.zzls = zzdbVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzls.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzls.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
