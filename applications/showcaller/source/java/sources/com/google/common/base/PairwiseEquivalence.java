package com.google.common.base;

import java.io.Serializable;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/PairwiseEquivalence.class */
final class PairwiseEquivalence<T> extends Equivalence<Iterable<T>> implements Serializable {
    private static final long serialVersionUID = 1;
    final Equivalence<? super T> elementEquivalence;

    public PairwiseEquivalence(Equivalence<? super T> equivalence) {
        this.elementEquivalence = (Equivalence) C8756j.m2789l(equivalence);
    }

    protected boolean doEquivalent(Iterable<T> iterable, Iterable<T> iterable2) {
        Iterator<T> it = iterable.iterator();
        Iterator<T> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            if (!this.elementEquivalence.equivalent(it.next(), it2.next())) {
                return false;
            }
        }
        boolean z = false;
        if (!it.hasNext()) {
            z = false;
            if (!it2.hasNext()) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.google.common.base.Equivalence
    protected /* bridge */ /* synthetic */ boolean doEquivalent(Object obj, Object obj2) {
        return doEquivalent((Iterable) ((Iterable) obj), (Iterable) ((Iterable) obj2));
    }

    protected int doHash(Iterable<T> iterable) {
        Iterator<T> it = iterable.iterator();
        int i = 78721;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = (i2 * 24943) + this.elementEquivalence.hash(it.next());
            } else {
                return i2;
            }
        }
    }

    @Override // com.google.common.base.Equivalence
    protected /* bridge */ /* synthetic */ int doHash(Object obj) {
        return doHash((Iterable) ((Iterable) obj));
    }

    public boolean equals(Object obj) {
        if (obj instanceof PairwiseEquivalence) {
            return this.elementEquivalence.equals(((PairwiseEquivalence) obj).elementEquivalence);
        }
        return false;
    }

    public int hashCode() {
        return this.elementEquivalence.hashCode() ^ 1185147655;
    }

    public String toString() {
        return this.elementEquivalence + ".pairwise()";
    }
}
