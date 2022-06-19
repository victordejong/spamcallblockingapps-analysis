package com.google.common.base;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/FunctionalEquivalence.class */
final class FunctionalEquivalence<F, T> extends Equivalence<F> implements Serializable {
    private static final long serialVersionUID = 0;
    private final AbstractC8745d<F, ? extends T> function;
    private final Equivalence<T> resultEquivalence;

    public FunctionalEquivalence(AbstractC8745d<F, ? extends T> abstractC8745d, Equivalence<T> equivalence) {
        this.function = (AbstractC8745d) C8756j.m2789l(abstractC8745d);
        this.resultEquivalence = (Equivalence) C8756j.m2789l(equivalence);
    }

    @Override // com.google.common.base.Equivalence
    protected boolean doEquivalent(F f, F f2) {
        return this.resultEquivalence.equivalent(this.function.m2819a(f), this.function.m2819a(f2));
    }

    @Override // com.google.common.base.Equivalence
    protected int doHash(F f) {
        return this.resultEquivalence.hash(this.function.m2819a(f));
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
        return C8751g.m2803b(this.function, this.resultEquivalence);
    }

    public String toString() {
        return this.resultEquivalence + ".onResultOf(" + this.function + ")";
    }
}
