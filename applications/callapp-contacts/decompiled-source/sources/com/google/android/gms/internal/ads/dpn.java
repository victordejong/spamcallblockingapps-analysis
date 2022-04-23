package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpn.class */
final class dpn implements Iterator<dmd> {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque<dpm> f27072a;

    /* renamed from: b  reason: collision with root package name */
    private dmd f27073b;

    private dpn(dlw dlwVar) {
        dlw dlwVar2;
        if (dlwVar instanceof dpm) {
            dpm dpmVar = (dpm) dlwVar;
            ArrayDeque<dpm> arrayDeque = new ArrayDeque<>(dpmVar.i());
            this.f27072a = arrayDeque;
            arrayDeque.push(dpmVar);
            dlwVar2 = dpmVar.f27071d;
            this.f27073b = a(dlwVar2);
            return;
        }
        this.f27072a = null;
        this.f27073b = (dmd) dlwVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dpn(dlw dlwVar, dpl dplVar) {
        this(dlwVar);
    }

    private final dmd a(dlw dlwVar) {
        while (dlwVar instanceof dpm) {
            dpm dpmVar = (dpm) dlwVar;
            this.f27072a.push(dpmVar);
            dlwVar = dpmVar.f27071d;
        }
        return (dmd) dlwVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27073b != null;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ dmd next() {
        dmd dmdVar;
        dlw dlwVar;
        dmd dmdVar2 = this.f27073b;
        if (dmdVar2 != null) {
            do {
                ArrayDeque<dpm> arrayDeque = this.f27072a;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    dmdVar = null;
                    break;
                }
                dlwVar = this.f27072a.pop().e;
                dmdVar = a(dlwVar);
            } while (dmdVar.c());
            this.f27073b = dmdVar;
            return dmdVar2;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
