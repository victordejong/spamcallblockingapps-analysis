package com.google.common.base;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence.class */
public abstract class Equivalence<T> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence$Equals.class */
    public static final class Equals extends Equivalence<Object> implements Serializable {

        /* renamed from: d */
        static final Equals f38588d = new Equals();
        private static final long serialVersionUID = 1;

        Equals() {
        }

        private Object readResolve() {
            return f38588d;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean doEquivalent(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // com.google.common.base.Equivalence
        protected int doHash(Object obj) {
            return obj.hashCode();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence$EquivalentToPredicate.class */
    private static final class EquivalentToPredicate<T> implements AbstractC8757k<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence<T> equivalence;
        private final T target;

        EquivalentToPredicate(Equivalence<T> equivalence, T t) {
            this.equivalence = (Equivalence) C8756j.m2789l(equivalence);
            this.target = t;
        }

        public boolean apply(T t) {
            return this.equivalence.equivalent(t, this.target);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EquivalentToPredicate)) {
                return false;
            }
            EquivalentToPredicate equivalentToPredicate = (EquivalentToPredicate) obj;
            if (!this.equivalence.equals(equivalentToPredicate.equivalence) || !C8751g.m2804a(this.target, equivalentToPredicate.target)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return C8751g.m2803b(this.equivalence, this.target);
        }

        public String toString() {
            return this.equivalence + ".equivalentTo(" + this.target + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence$Identity.class */
    public static final class Identity extends Equivalence<Object> implements Serializable {

        /* renamed from: d */
        static final Identity f38589d = new Identity();
        private static final long serialVersionUID = 1;

        Identity() {
        }

        private Object readResolve() {
            return f38589d;
        }

        @Override // com.google.common.base.Equivalence
        protected boolean doEquivalent(Object obj, Object obj2) {
            return false;
        }

        @Override // com.google.common.base.Equivalence
        protected int doHash(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/Equivalence$Wrapper.class */
    public static final class Wrapper<T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence<? super T> equivalence;
        private final T reference;

        private Wrapper(Equivalence<? super T> equivalence, T t) {
            this.equivalence = (Equivalence) C8756j.m2789l(equivalence);
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
            if (!this.equivalence.equals(wrapper.equivalence)) {
                return false;
            }
            return this.equivalence.equivalent((T) this.reference, (T) wrapper.reference);
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
        return Equals.f38588d;
    }

    public static Equivalence<Object> identity() {
        return Identity.f38589d;
    }

    protected abstract boolean doEquivalent(T t, T t2);

    protected abstract int doHash(T t);

    public final boolean equivalent(T t, T t2) {
        if (t == t2) {
            return true;
        }
        if (t != null && t2 != null) {
            return doEquivalent(t, t2);
        }
        return false;
    }

    public final AbstractC8757k<T> equivalentTo(T t) {
        return new EquivalentToPredicate(this, t);
    }

    public final int hash(T t) {
        if (t == null) {
            return 0;
        }
        return doHash(t);
    }

    public final <F> Equivalence<F> onResultOf(AbstractC8745d<F, ? extends T> abstractC8745d) {
        return new FunctionalEquivalence(abstractC8745d, this);
    }

    public final <S extends T> Equivalence<Iterable<S>> pairwise() {
        return new PairwiseEquivalence(this);
    }

    public final <S extends T> Wrapper<S> wrap(S s) {
        return new Wrapper<>(s);
    }
}
