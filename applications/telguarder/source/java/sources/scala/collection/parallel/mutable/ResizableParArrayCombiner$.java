package scala.collection.parallel.mutable;

import scala.Function1;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.mutable.LazyCombiner;
import scala.collection.parallel.mutable.ResizableParArrayCombiner;
import scala.runtime.TraitSetter;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ResizableParArrayCombiner$.class */
public final class ResizableParArrayCombiner$ {
    public static final ResizableParArrayCombiner$ MODULE$ = null;

    static {
        new ResizableParArrayCombiner$();
    }

    private ResizableParArrayCombiner$() {
        MODULE$ = this;
    }

    public <T> ResizableParArrayCombiner<T> apply() {
        return apply(new ArrayBuffer().$plus$eq((ArrayBuffer) new ExposedArrayBuffer()));
    }

    public <T> ResizableParArrayCombiner<T> apply(ArrayBuffer<ExposedArrayBuffer<T>> arrayBuffer) {
        return new ResizableParArrayCombiner<T>(arrayBuffer) { // from class: scala.collection.parallel.mutable.ResizableParArrayCombiner$$anon$1
            private volatile transient TaskSupport _combinerTaskSupport;
            private final ArrayBuffer<ExposedArrayBuffer<T>> chain;
            private final Growable lastbuff;

            {
                this.chain = arrayBuffer;
                Growable.Cclass.$init$(this);
                Builder.Cclass.$init$(this);
                Combiner.Cclass.$init$(this);
                LazyCombiner.Cclass.$init$(this);
                ResizableParArrayCombiner.Cclass.$init$(this);
            }

            @Override // scala.collection.generic.Growable
            public Growable<T> $plus$eq(T t, T t2, Seq<T> seq) {
                return Growable.Cclass.$plus$eq(this, t, t2, seq);
            }

            @Override // scala.collection.parallel.mutable.LazyCombiner, scala.collection.mutable.Builder, scala.collection.generic.Growable
            public LazyCombiner<T, ParArray<T>, ExposedArrayBuffer<T>> $plus$eq(T t) {
                return LazyCombiner.Cclass.$plus$eq(this, t);
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

            @Override // scala.collection.parallel.mutable.ResizableParArrayCombiner, scala.collection.parallel.mutable.LazyCombiner
            public ParArray<T> allocateAndCopy() {
                return ResizableParArrayCombiner.Cclass.allocateAndCopy(this);
            }

            @Override // scala.collection.parallel.Combiner
            public boolean canBeShared() {
                return Combiner.Cclass.canBeShared(this);
            }

            @Override // scala.collection.parallel.mutable.LazyCombiner
            public ArrayBuffer<ExposedArrayBuffer<T>> chain() {
                return this.chain;
            }

            @Override // scala.collection.parallel.mutable.LazyCombiner, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
            public void clear() {
                LazyCombiner.Cclass.clear(this);
            }

            @Override // scala.collection.parallel.mutable.LazyCombiner, scala.collection.parallel.Combiner
            public <N extends T, NewTo> Combiner<N, NewTo> combine(Combiner<N, NewTo> combiner) {
                return LazyCombiner.Cclass.combine(this, combiner);
            }

            @Override // scala.collection.parallel.Combiner
            public TaskSupport combinerTaskSupport() {
                return Combiner.Cclass.combinerTaskSupport(this);
            }

            @Override // scala.collection.parallel.Combiner
            public void combinerTaskSupport_$eq(TaskSupport taskSupport) {
                Combiner.Cclass.combinerTaskSupport_$eq(this, taskSupport);
            }

            @Override // scala.collection.parallel.mutable.LazyCombiner
            public Growable lastbuff() {
                return this.lastbuff;
            }

            @Override // scala.collection.mutable.Builder
            public <NewTo> Builder<T, NewTo> mapResult(Function1<ParArray<T>, NewTo> function1) {
                return Builder.Cclass.mapResult(this, function1);
            }

            @Override // scala.collection.parallel.mutable.ResizableParArrayCombiner, scala.collection.parallel.mutable.LazyCombiner
            public final ResizableParArrayCombiner<T> newLazyCombiner(ArrayBuffer<ExposedArrayBuffer<T>> arrayBuffer2) {
                return ResizableParArrayCombiner.Cclass.newLazyCombiner(this, arrayBuffer2);
            }

            @Override // scala.collection.parallel.mutable.LazyCombiner, scala.collection.mutable.Builder
            public Object result() {
                return LazyCombiner.Cclass.result(this);
            }

            @Override // scala.collection.parallel.Combiner
            public Object resultWithTaskSupport() {
                return Combiner.Cclass.resultWithTaskSupport(this);
            }

            @Override // scala.collection.parallel.mutable.LazyCombiner
            /* renamed from: scala$collection$parallel$mutable$LazyCombiner$_setter_$lastbuff_$eq */
            public void mo68x80ab82b3(Growable growable) {
                this.lastbuff = growable;
            }

            @Override // scala.collection.parallel.mutable.LazyCombiner, scala.collection.generic.Sizing
            public int size() {
                return LazyCombiner.Cclass.size(this);
            }

            @Override // scala.collection.parallel.mutable.ResizableParArrayCombiner, scala.collection.mutable.Builder
            public void sizeHint(int i) {
                ResizableParArrayCombiner.Cclass.sizeHint(this, i);
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

            @Override // scala.collection.parallel.mutable.ResizableParArrayCombiner
            public String toString() {
                return ResizableParArrayCombiner.Cclass.toString(this);
            }
        };
    }
}
