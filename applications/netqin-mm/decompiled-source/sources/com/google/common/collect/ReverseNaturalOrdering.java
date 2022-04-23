package com.google.common.collect;

import java.io.Serializable;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ReverseNaturalOrdering.class */
public final class ReverseNaturalOrdering extends Ordering<Comparable> implements Serializable {
    public static final ReverseNaturalOrdering INSTANCE = new ReverseNaturalOrdering();
    public static final long serialVersionUID = 0;

    private Object readResolve() {
        return INSTANCE;
    }

    public int compare(Comparable comparable, Comparable comparable2) {
        C4933n.m24795a(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public <E extends Comparable> E max(E e, E e2) {
        return (E) ((Comparable) NaturalOrdering.INSTANCE.min(e, e2));
    }

    public <E extends Comparable> E max(E e, E e2, E e3, E... eArr) {
        return (E) ((Comparable) NaturalOrdering.INSTANCE.min(e, e2, e3, eArr));
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E max(Iterable<E> iterable) {
        return (E) ((Comparable) NaturalOrdering.INSTANCE.min(iterable));
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E max(Iterator<E> it) {
        return (E) ((Comparable) NaturalOrdering.INSTANCE.min(it));
    }

    public <E extends Comparable> E min(E e, E e2) {
        return (E) ((Comparable) NaturalOrdering.INSTANCE.max(e, e2));
    }

    public <E extends Comparable> E min(E e, E e2, E e3, E... eArr) {
        return (E) ((Comparable) NaturalOrdering.INSTANCE.max(e, e2, e3, eArr));
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E min(Iterable<E> iterable) {
        return (E) ((Comparable) NaturalOrdering.INSTANCE.max(iterable));
    }

    @Override // com.google.common.collect.Ordering
    public <E extends Comparable> E min(Iterator<E> it) {
        return (E) ((Comparable) NaturalOrdering.INSTANCE.max(it));
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable> Ordering<S> reverse() {
        return Ordering.natural();
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }
}
