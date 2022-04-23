package com.google.common.collect;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/NaturalOrdering.class */
public final class NaturalOrdering extends Ordering<Comparable> implements Serializable {
    public static final NaturalOrdering INSTANCE = new NaturalOrdering();
    public static final long serialVersionUID = 0;
    public transient Ordering<Comparable> nullsFirst;
    public transient Ordering<Comparable> nullsLast;

    private Object readResolve() {
        return INSTANCE;
    }

    public int compare(Comparable comparable, Comparable comparable2) {
        C4933n.m24795a(comparable);
        C4933n.m24795a(comparable2);
        return comparable.compareTo(comparable2);
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable> Ordering<S> nullsFirst() {
        Ordering<Comparable> ordering = this.nullsFirst;
        Ordering<S> ordering2 = (Ordering<S>) ordering;
        if (ordering == null) {
            ordering2 = super.nullsFirst();
            this.nullsFirst = ordering2;
        }
        return ordering2;
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable> Ordering<S> nullsLast() {
        Ordering<Comparable> ordering = this.nullsLast;
        Ordering<S> ordering2 = (Ordering<S>) ordering;
        if (ordering == null) {
            ordering2 = super.nullsLast();
            this.nullsLast = ordering2;
        }
        return ordering2;
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable> Ordering<S> reverse() {
        return ReverseNaturalOrdering.INSTANCE;
    }

    public String toString() {
        return "Ordering.natural()";
    }
}
