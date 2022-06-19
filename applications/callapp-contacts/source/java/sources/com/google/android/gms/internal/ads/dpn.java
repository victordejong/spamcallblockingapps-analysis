package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpn.class */
final class dpn implements Iterator<dmd> {

    /* renamed from: a */
    private final ArrayDeque<dpm> f47376a;

    /* renamed from: b */
    private dmd f47377b;

    private dpn(dlw dlwVar) {
        dlw dlwVar2;
        if (!(dlwVar instanceof dpm)) {
            this.f47376a = null;
            this.f47377b = (dmd) dlwVar;
            return;
        }
        dpm dpmVar = (dpm) dlwVar;
        ArrayDeque<dpm> arrayDeque = new ArrayDeque<>(dpmVar.mo16129i());
        this.f47376a = arrayDeque;
        arrayDeque.push(dpmVar);
        dlwVar2 = dpmVar.f47372d;
        this.f47377b = m16127a(dlwVar2);
    }

    public /* synthetic */ dpn(dlw dlwVar, dpl dplVar) {
        this(dlwVar);
    }

    /* renamed from: a */
    private final dmd m16127a(dlw dlwVar) {
        dlw dlwVar2;
        while (dlwVar instanceof dpm) {
            dpm dpmVar = (dpm) dlwVar;
            this.f47376a.push(dpmVar);
            dlwVar2 = dpmVar.f47372d;
            dlwVar = dlwVar2;
        }
        return (dmd) dlwVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f47377b != null;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ dmd next() {
        dmd dmdVar;
        dlw dlwVar;
        dmd dmdVar2 = this.f47377b;
        if (dmdVar2 != null) {
            do {
                ArrayDeque<dpm> arrayDeque = this.f47376a;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    dmdVar = null;
                    break;
                }
                dlwVar = this.f47376a.pop().f47373e;
                dmdVar = m16127a(dlwVar);
            } while (dmdVar.m16470c());
            this.f47377b = dmdVar;
            return dmdVar2;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
