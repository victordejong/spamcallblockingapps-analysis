package scala.collection.mutable;

import scala.Function1;
import scala.Serializable;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Growable;
import scala.collection.generic.SeqFactory;
import scala.collection.mutable.Builder;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DoubleLinkedList$.class */
public final class DoubleLinkedList$ extends SeqFactory<DoubleLinkedList> implements Serializable {
    public static final DoubleLinkedList$ MODULE$ = null;

    static {
        new DoubleLinkedList$();
    }

    private DoubleLinkedList$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<DoubleLinkedList<?>, A, DoubleLinkedList<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, DoubleLinkedList<A>> newBuilder() {
        return new Builder<A, DoubleLinkedList<A>>() { // from class: scala.collection.mutable.DoubleLinkedList$$anon$1
            private DoubleLinkedList<A> current = emptyList();

            {
                Growable.Cclass.$init$(this);
                Builder.Cclass.$init$(this);
            }

            private DoubleLinkedList<A> current() {
                return this.current;
            }

            private void current_$eq(DoubleLinkedList<A> doubleLinkedList) {
                this.current = doubleLinkedList;
            }

            private DoubleLinkedList<A> emptyList() {
                return new DoubleLinkedList<>();
            }

            @Override // scala.collection.generic.Growable
            public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
                Growable<A> $plus$plus$eq;
                $plus$plus$eq = $plus$eq((DoubleLinkedList$$anon$1) a).$plus$eq(a2).$plus$plus$eq(seq);
                return $plus$plus$eq;
            }

            @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
            public DoubleLinkedList$$anon$1 $plus$eq(A a) {
                if (current().isEmpty()) {
                    current_$eq(new DoubleLinkedList(a, emptyList()));
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                } else {
                    current().append(new DoubleLinkedList(a, emptyList()));
                }
                return this;
            }

            @Override // scala.collection.generic.Growable
            public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
                return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }

            @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
            public void clear() {
                current_$eq(emptyList());
            }

            @Override // scala.collection.mutable.Builder
            public <NewTo> Builder<A, NewTo> mapResult(Function1<DoubleLinkedList<A>, NewTo> function1) {
                return Builder.Cclass.mapResult(this, function1);
            }

            @Override // scala.collection.mutable.Builder
            public DoubleLinkedList<A> result() {
                return current();
            }

            @Override // scala.collection.mutable.Builder
            public void sizeHint(int i) {
                Builder.Cclass.sizeHint(this, i);
            }

            @Override // scala.collection.mutable.Builder
            public void sizeHint(TraversableLike<?, ?> traversableLike) {
                Builder.Cclass.sizeHint(this, traversableLike);
            }

            @Override // scala.collection.mutable.Builder
            public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
                Builder.Cclass.sizeHint(this, traversableLike, i);
            }

            @Override // scala.collection.mutable.Builder
            public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
                Builder.Cclass.sizeHintBounded(this, i, traversableLike);
            }
        };
    }
}
