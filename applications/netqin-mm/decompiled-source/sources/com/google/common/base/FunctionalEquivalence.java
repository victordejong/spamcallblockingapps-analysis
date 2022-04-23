package com.google.common.base;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/FunctionalEquivalence.class */
public final class FunctionalEquivalence<F, T> extends Equivalence<F> implements Serializable {
    public static final long serialVersionUID = 0;
    public final AbstractC4920g<F, ? extends T> function;
    public final Equivalence<T> resultEquivalence;

    public FunctionalEquivalence(AbstractC4920g<F, ? extends T> gVar, Equivalence<T> equivalence) {
        C4933n.m24795a(gVar);
        this.function = gVar;
        C4933n.m24795a(equivalence);
        this.resultEquivalence = equivalence;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.base.Equivalence
    public boolean doEquivalent(F f, F f2) {
        return this.resultEquivalence.equivalent(this.function.apply(f), this.function.apply(f2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.base.Equivalence
    public int doHash(F f) {
        return this.resultEquivalence.hash(this.function.apply(f));
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FunctionalEquivalence)) {
            return false;
        }
        FunctionalEquivalence functionalEquivalence = (FunctionalEquivalence) obj;
        if (!this.function.equals(functionalEquivalence.function) || !this.resultEquivalence.equals(functionalEquivalence.resultEquivalence)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(this.function, this.resultEquivalence);
    }

    public String toString() {
        return this.resultEquivalence + ".onResultOf(" + this.function + ")";
    }
}
