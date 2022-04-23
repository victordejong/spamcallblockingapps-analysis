package com.google.common.base;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence.class */
public abstract class Equivalence<T> {

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence$Equals.class */
    public static final class Equals extends Equivalence<Object> implements Serializable {
        public static final Equals INSTANCE = new Equals();
        public static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Equivalence
        public boolean doEquivalent(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // com.google.common.base.Equivalence
        public int doHash(Object obj) {
            return obj.hashCode();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence$EquivalentToPredicate.class */
    public static final class EquivalentToPredicate<T> implements AbstractC4934o<T>, Serializable {
        public static final long serialVersionUID = 0;
        public final Equivalence<T> equivalence;
        public final T target;

        public EquivalentToPredicate(Equivalence<T> equivalence, T t) {
            C4933n.m24795a(equivalence);
            this.equivalence = equivalence;
            this.target = t;
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean apply(T t) {
            return this.equivalence.equivalent(t, this.target);
        }

        @Override // p131c.p161d.p266c.p267a.AbstractC4934o
        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EquivalentToPredicate)) {
                return false;
            }
            EquivalentToPredicate equivalentToPredicate = (EquivalentToPredicate) obj;
            if (!this.equivalence.equals(equivalentToPredicate.equivalence) || !C4928k.m24808a(this.target, equivalentToPredicate.target)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return C4928k.m24807a(this.equivalence, this.target);
        }

        public String toString() {
            return this.equivalence + ".equivalentTo(" + this.target + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence$Identity.class */
    public static final class Identity extends Equivalence<Object> implements Serializable {
        public static final Identity INSTANCE = new Identity();
        public static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Equivalence
        public boolean doEquivalent(Object obj, Object obj2) {
            return false;
        }

        @Override // com.google.common.base.Equivalence
        public int doHash(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence$Wrapper.class */
    public static final class Wrapper<T> implements Serializable {
        public static final long serialVersionUID = 0;
        public final Equivalence<? super T> equivalence;
        public final T reference;

        public Wrapper(Equivalence<? super T> equivalence, T t) {
            C4933n.m24795a(equivalence);
            this.equivalence = equivalence;
            this.reference = t;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Wrapper)) {
                return false;
            }
            Wrapper wrapper = (Wrapper) obj;
            if (this.equivalence.equals(wrapper.equivalence)) {
                return this.equivalence.equivalent((T) this.reference, (T) wrapper.reference);
            }
            return false;
        }

        public T get() {
            return this.reference;
        }

        public int hashCode() {
            return this.equivalence.hash((T) this.reference);
        }

        public String toString() {
            return this.equivalence + ".wrap(" + this.reference + ")";
        }
    }

    public static Equivalence<Object> equals() {
        return Equals.INSTANCE;
    }

    public static Equivalence<Object> identity() {
        return Identity.INSTANCE;
    }

    public abstract boolean doEquivalent(T t, T t2);

    public abstract int doHash(T t);

    public final boolean equivalent(T t, T t2) {
        if (t == t2) {
            return true;
        }
        if (t == null || t2 == null) {
            return false;
        }
        return doEquivalent(t, t2);
    }

    public final AbstractC4934o<T> equivalentTo(T t) {
        return new EquivalentToPredicate(this, t);
    }

    public final int hash(T t) {
        if (t == null) {
            return 0;
        }
        return doHash(t);
    }

    public final <F> Equivalence<F> onResultOf(AbstractC4920g<F, ? extends T> gVar) {
        return new FunctionalEquivalence(gVar, this);
    }

    public final <S extends T> Equivalence<Iterable<S>> pairwise() {
        return new PairwiseEquivalence(this);
    }

    public final <S extends T> Wrapper<S> wrap(S s) {
        return new Wrapper<>(s);
    }
}
