package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzke.class */
final class zzke implements Iterator<String> {
    private final /* synthetic */ zzkc zzxk;
    private Iterator<String> zzyg;

    public zzke(zzkc zzkcVar) {
        zzhx zzhxVar;
        this.zzxk = zzkcVar;
        zzhxVar = this.zzxk.zzxl;
        this.zzyg = zzhxVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzyg.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzyg.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
