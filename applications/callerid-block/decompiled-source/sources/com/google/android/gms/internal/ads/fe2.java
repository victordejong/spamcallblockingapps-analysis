package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fe2.class */
final class fe2 implements Iterator<zzesb> {

    /* renamed from: b */
    private final ArrayDeque<zzeve> f6488b;

    /* renamed from: c */
    private zzesb f6489c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ fe2(zzesf zzesfVar, de2 de2Var) {
        zzesb zzesbVar;
        if (zzesfVar instanceof zzeve) {
            zzeve zzeveVar = (zzeve) zzesfVar;
            ArrayDeque<zzeve> arrayDeque = new ArrayDeque<>(zzeveVar.zzf());
            this.f6488b = arrayDeque;
            arrayDeque.push(zzeveVar);
            zzesbVar = m7545c(zzeve.zzE(zzeveVar));
        } else {
            this.f6488b = null;
            zzesbVar = (zzesb) zzesfVar;
        }
        this.f6489c = zzesbVar;
    }

    /* renamed from: c */
    private final zzesb m7545c(zzesf zzesfVar) {
        while (zzesfVar instanceof zzeve) {
            zzeve zzeveVar = (zzeve) zzesfVar;
            this.f6488b.push(zzeveVar);
            zzesfVar = zzeve.zzE(zzeveVar);
        }
        return (zzesb) zzesfVar;
    }

    /* renamed from: b */
    public final zzesb next() {
        zzesb zzesbVar;
        zzesb zzesbVar2 = this.f6489c;
        if (zzesbVar2 != null) {
            while (true) {
                ArrayDeque<zzeve> arrayDeque = this.f6488b;
                zzesbVar = null;
                if (arrayDeque != null) {
                    if (!arrayDeque.isEmpty()) {
                        zzesbVar = m7545c(zzeve.zzF(this.f6488b.pop()));
                        if (!zzesbVar.zzq()) {
                            break;
                        }
                    } else {
                        zzesbVar = null;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.f6489c = zzesbVar;
            return zzesbVar2;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6489c != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
