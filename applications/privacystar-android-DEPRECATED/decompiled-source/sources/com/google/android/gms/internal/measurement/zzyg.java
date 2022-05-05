package com.google.android.gms.internal.measurement;

import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyg.class */
final class zzyg implements Iterator<String> {
    private final /* synthetic */ zzye zzcct;
    private Iterator<String> zzccu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzyg(zzye zzyeVar) {
        zzwc zzwcVar;
        this.zzcct = zzyeVar;
        zzwcVar = this.zzcct.zzccq;
        this.zzccu = zzwcVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzccu.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzccu.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
