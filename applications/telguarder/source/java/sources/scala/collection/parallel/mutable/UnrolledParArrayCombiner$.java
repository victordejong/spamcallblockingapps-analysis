package scala.collection.parallel.mutable;

import scala.Function1;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.mutable.UnrolledParArrayCombiner;
import scala.collection.parallel.package$;
import scala.reflect.ClassTag$;
import scala.runtime.TraitSetter;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/UnrolledParArrayCombiner$.class */
public final class UnrolledParArrayCombiner$ {
    public static final UnrolledParArrayCombiner$ MODULE$ = null;

    static {
        new UnrolledParArrayCombiner$();
    }

    private UnrolledParArrayCombiner$() {
        MODULE$ = this;
    }

    public <T> UnrolledParArrayCombiner<T> apply() {
        return new UnrolledParArrayCombiner<T>() { // from class: scala.collection.parallel.mutable.UnrolledParArrayCombiner$$anon$1
            private volatile transient TaskSupport _combinerTaskSupport;
            private final DoublingUnrolledBuffer<Object> buff;

            {
                Growable.Cclass.$init$(this);
                Builder.Cclass.$init$(this);
                _combinerTaskSupport_$eq(package$.MODULE$.defaultTaskSupport());
                mo66xab746c76(new DoublingUnrolledBuffer(ClassTag$.MODULE$.Any()));
            }

            @Override // scala.collection.generic.Growable
            public Growable<T> $plus$eq(T t, T t2, Seq<T> seq) {
                Growable<T> $plus$plus$eq;
                $plus$plus$eq = $plus$eq((UnrolledParArrayCombiner$$anon$1) t).$plus$eq(t2).$plus$plus$eq(seq);
                return $plus$plus$eq;
            }

            @Override // scala.collection.parallel.mutable.UnrolledParArrayCombiner, scala.collection.mutable.Builder, scala.collection.generic.Growable
            public UnrolledParArrayCombiner<T> $plus$eq(T t) {
                return buff().$plus$eq((Object) t);
            }

            @Override // scala.collection.generic.Growable
            public Growable<T> $plus$plus$eq(TraversableOnce<T> traversableOnce) {
                return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
            }

            @Override // scala.collection.parallel.Combiner
            public TaskSupport _combinerTaskSupport() {
                return this._combinerTaskSupport;
            }

            @Override // scala.collection.parallel.Combiner
            @TraitSetter
            public void _combinerTaskSupport_$eq(TaskSupport taskSupport) {
                this._combinerTaskSupport = taskSupport;
            }

            @Override // scala.collection.parallel.mutable.UnrolledParArrayCombiner
            public DoublingUnrolledBuffer<Object> buff() {
                return this.buff;
            }

            @Override // scala.collection.parallel.Combiner
            public boolean canBeShared() {
                return Combiner.Cclass.canBeShared(this);
            }

            @Override // scala.collection.parallel.mutable.UnrolledParArrayCombiner, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
            public void clear() {
                UnrolledParArrayCombiner.Cclass.clear(this);
            }

            @Override // scala.collection.parallel.mutable.UnrolledParArrayCombiner, scala.collection.parallel.Combiner
            public <N extends T, NewTo> Combiner<N, NewTo> combine(Combiner<N, NewTo> combiner) {
                return UnrolledParArrayCombiner.Cclass.combine(this, combiner);
            }

            @Override // scala.collection.parallel.Combiner
            public TaskSupport combinerTaskSupport() {
                return Combiner.Cclass.combinerTaskSupport(this);
            }

            @Override // scala.collection.parallel.Combiner
            public void combinerTaskSupport_$eq(TaskSupport taskSupport) {
                _combinerTaskSupport_$eq(taskSupport);
            }

            @Override // scala.collection.mutable.Builder
            public <NewTo> Builder<T, NewTo> mapResult(Function1<ParArray<T>, NewTo> function1) {
                return Builder.Cclass.mapResult(this, function1);
            }

            @Override // scala.collection.parallel.mutable.UnrolledParArrayCombiner, scala.collection.mutable.Builder
            public ParArray<T> result() {
                return UnrolledParArrayCombiner.Cclass.result(this);
            }

            @Override // scala.collection.parallel.Combiner
            public Object resultWithTaskSupport() {
                return Combiner.Cclass.resultWithTaskSupport(this);
            }

            @Override // scala.collection.parallel.mutable.UnrolledParArrayCombiner
            /* renamed from: scala$collection$parallel$mutable$UnrolledParArrayCombiner$_setter_$buff_$eq */
            public void mo66xab746c76(DoublingUnrolledBuffer doublingUnrolledBuffer) {
                this.buff = doublingUnrolledBuffer;
            }

            @Override // scala.collection.parallel.mutable.UnrolledParArrayCombiner, scala.collection.generic.Sizing
            public int size() {
                return UnrolledParArrayCombiner.Cclass.size(this);
            }

            @Override // scala.collection.parallel.mutable.UnrolledParArrayCombiner, scala.collection.mutable.Builder
            public void sizeHint(int i) {
                UnrolledParArrayCombiner.Cclass.sizeHint(this, i);
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
