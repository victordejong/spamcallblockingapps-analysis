package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzey;
import com.google.android.gms.internal.firebase-perf.zzhb;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzhd.class */
final class zzhd implements Iterator<String> {
    private final /* synthetic */ zzhb zzuh;
    private Iterator<String> zzvd;

    public zzhd(zzhb zzhbVar) {
        zzey zzeyVar;
        this.zzuh = zzhbVar;
        zzeyVar = ((zzhb) this.zzuh).zzui;
        this.zzvd = zzeyVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzvd.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzvd.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
