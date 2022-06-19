package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenh.class */
final class zzenh implements Iterator<zzejy> {
    private final ArrayDeque<zzeng> zziua;
    private zzejy zziub;

    private zzenh(zzejr zzejrVar) {
        zzejr zzejrVar2;
        if (!(zzejrVar instanceof zzeng)) {
            this.zziua = null;
            this.zziub = (zzejy) zzejrVar;
            return;
        }
        zzeng zzengVar = (zzeng) zzejrVar;
        ArrayDeque<zzeng> arrayDeque = new ArrayDeque<>(zzengVar.zzbgm());
        this.zziua = arrayDeque;
        arrayDeque.push(zzengVar);
        zzejrVar2 = zzengVar.zzitw;
        this.zziub = zzal(zzejrVar2);
    }

    public /* synthetic */ zzenh(zzejr zzejrVar, zzenf zzenfVar) {
        this(zzejrVar);
    }

    private final zzejy zzal(zzejr zzejrVar) {
        zzejr zzejrVar2;
        while (zzejrVar instanceof zzeng) {
            zzeng zzengVar = (zzeng) zzejrVar;
            this.zziua.push(zzengVar);
            zzejrVar2 = zzengVar.zzitw;
            zzejrVar = zzejrVar2;
        }
        return (zzejy) zzejrVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zziub != null;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ zzejy next() {
        zzejy zzejyVar;
        zzejr zzejrVar;
        zzejy zzejyVar2 = this.zziub;
        if (zzejyVar2 != null) {
            do {
                ArrayDeque<zzeng> arrayDeque = this.zziua;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    zzejyVar = null;
                    break;
                }
                zzejrVar = this.zziua.pop().zzitx;
                zzejyVar = zzal(zzejrVar);
            } while (zzejyVar.isEmpty());
            this.zziub = zzejyVar;
            return zzejyVar2;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
