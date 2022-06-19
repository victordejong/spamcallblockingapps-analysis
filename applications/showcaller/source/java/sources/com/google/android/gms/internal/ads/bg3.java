package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bg3.class */
final class bg3 implements Iterator<zzges> {

    /* renamed from: d */
    private final ArrayDeque<zzghy> f20444d;

    /* renamed from: e */
    private zzges f20445e;

    public /* synthetic */ bg3(zzgex zzgexVar, ag3 ag3Var) {
        zzgex zzgexVar2;
        if (!(zzgexVar instanceof zzghy)) {
            this.f20444d = null;
            this.f20445e = (zzges) zzgexVar;
            return;
        }
        zzghy zzghyVar = (zzghy) zzgexVar;
        ArrayDeque<zzghy> arrayDeque = new ArrayDeque<>(zzghyVar.zzf());
        this.f20444d = arrayDeque;
        arrayDeque.push(zzghyVar);
        zzgexVar2 = zzghyVar.zzd;
        this.f20445e = m16378b(zzgexVar2);
    }

    /* renamed from: b */
    private final zzges m16378b(zzgex zzgexVar) {
        zzgex zzgexVar2;
        while (zzgexVar instanceof zzghy) {
            zzghy zzghyVar = (zzghy) zzgexVar;
            this.f20444d.push(zzghyVar);
            zzgexVar2 = zzghyVar.zzd;
            zzgexVar = zzgexVar2;
        }
        return (zzges) zzgexVar;
    }

    /* renamed from: a */
    public final zzges next() {
        zzges zzgesVar;
        zzgex zzgexVar;
        zzges zzgesVar2 = this.f20445e;
        if (zzgesVar2 != null) {
            while (true) {
                ArrayDeque<zzghy> arrayDeque = this.f20444d;
                zzgesVar = null;
                if (arrayDeque != null) {
                    if (!arrayDeque.isEmpty()) {
                        zzgexVar = this.f20444d.pop().zze;
                        zzgesVar = m16378b(zzgexVar);
                        if (!zzgesVar.zzr()) {
                            break;
                        }
                    } else {
                        zzgesVar = null;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.f20445e = zzgesVar;
            return zzgesVar2;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f20445e != null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
