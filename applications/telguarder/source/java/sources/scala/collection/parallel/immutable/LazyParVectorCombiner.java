package scala.collection.parallel.immutable;

import scala.Function1;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.immutable.VectorBuilder;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u00154Q!\u0001\u0002\u0001\u0005)\u0011Q\u0003T1{sB\u000b'OV3di>\u00148i\\7cS:,'O\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000f!\t!bY8mY\u0016\u001cG/[8o\u0015\u0005I\u0011!B:dC2\fWCA\u0006\u0017'\r\u0001A\u0002\u0005\t\u0003\u001b9i\u0011\u0001C\u0005\u0003\u001f!\u0011a!\u00118z%\u00164\u0007\u0003B\t\u0013)\u0001j\u0011\u0001B\u0005\u0003'\u0011\u0011\u0001bQ8nE&tWM\u001d\t\u0003+Ya\u0001\u0001B\u0003\u0018\u0001\t\u0007\u0011DA\u0001U\u0007\u0001\t\"AG\u000f\u0011\u00055Y\u0012B\u0001\u000f\t\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!\u0004\u0010\n\u0005}A!aA!osB\u0019\u0011E\t\u000b\u000e\u0003\tI!a\t\u0002\u0003\u0013A\u000b'OV3di>\u0014\b\"B\u0013\u0001\t\u00031\u0013A\u0002\u001fj]&$h\bF\u0001(!\r\t\u0003\u0001\u0006\u0005\bS\u0001\u0001\r\u0011\"\u0001+\u0003\t\u0019(0F\u0001,!\tiA&\u0003\u0002.\u0011\t\u0019\u0011J\u001c;\t\u000f=\u0002\u0001\u0019!C\u0001a\u000511O_0%KF$\"!\r\u001b\u0011\u00055\u0011\u0014BA\u001a\t\u0005\u0011)f.\u001b;\t\u000fUr\u0013\u0011!a\u0001W\u0005\u0019\u0001\u0010J\u0019\t\r]\u0002\u0001\u0015)\u0003,\u0003\r\u0019(\u0010\t\u0005\bs\u0001\u0011\r\u0011\"\u0001;\u0003\u001d1Xm\u0019;peN,\u0012a\u000f\t\u0004y}\nU\"A\u001f\u000b\u0005y2\u0011aB7vi\u0006\u0014G.Z\u0005\u0003\u0001v\u00121\"\u0011:sCf\u0014UO\u001a4feB\u0019!\t\u0012\u000b\u000e\u0003\rS!a\u0001\u0004\n\u0005\u0015\u001b%!\u0004,fGR|'OQ;jY\u0012,'\u000f\u0003\u0004H\u0001\u0001\u0006IaO\u0001\tm\u0016\u001cGo\u001c:tA!)\u0011\n\u0001C\u0001U\u0005!1/\u001b>f\u0011\u0015Y\u0005\u0001\"\u0001M\u0003!!\u0003\u000f\\;tI\u0015\fHCA'O\u001b\u0005\u0001\u0001\"B(K\u0001\u0004!\u0012\u0001B3mK6DQ!\u0015\u0001\u0005\u0002I\u000bQa\u00197fCJ$\u0012!\r\u0005\u0006)\u0002!\t!V\u0001\u0007e\u0016\u001cX\u000f\u001c;\u0015\u0003\u0001BQa\u0016\u0001\u0005\u0002a\u000bqaY8nE&tW-F\u0002Z9\u0002$\"AW2\u0011\tE\u00112l\u0018\t\u0003+q#Q!\u0018,C\u0002y\u0013\u0011!V\t\u00035Q\u0001\"!\u00061\u0005\u000b\u00054&\u0019\u00012\u0003\u000b9+w\u000fV8\u0012\u0005\u0001j\u0002\"\u00023W\u0001\u0004Q\u0016!B8uQ\u0016\u0014\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/LazyParVectorCombiner.class */
public class LazyParVectorCombiner<T> implements Combiner<T, ParVector<T>> {
    private volatile transient TaskSupport _combinerTaskSupport;

    /* renamed from: sz */
    private int f1592sz = 0;
    private final ArrayBuffer<VectorBuilder<T>> vectors = new ArrayBuffer().$plus$eq((ArrayBuffer) new VectorBuilder());

    public LazyParVectorCombiner() {
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        _combinerTaskSupport_$eq(package$.MODULE$.defaultTaskSupport());
    }

    @Override // scala.collection.generic.Growable
    public Growable<T> $plus$eq(T t, T t2, Seq<T> seq) {
        Growable<T> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((LazyParVectorCombiner<T>) t).$plus$eq(t2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public LazyParVectorCombiner<T> $plus$eq(T t) {
        vectors().last().$plus$eq((VectorBuilder<T>) t);
        sz_$eq(m104sz() + 1);
        return this;
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

    @Override // scala.collection.parallel.Combiner
    public boolean canBeShared() {
        return Combiner.Cclass.canBeShared(this);
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        vectors().clear();
        vectors().$plus$eq((ArrayBuffer<VectorBuilder<T>>) new VectorBuilder<>());
        sz_$eq(0);
    }

    @Override // scala.collection.parallel.Combiner
    public <U extends T, NewTo> Combiner<U, NewTo> combine(Combiner<U, NewTo> combiner) {
        if (combiner != this) {
            LazyParVectorCombiner lazyParVectorCombiner = (LazyParVectorCombiner) combiner;
            sz_$eq(m104sz() + lazyParVectorCombiner.m104sz());
            vectors().$plus$plus$eq((TraversableOnce<VectorBuilder<T>>) lazyParVectorCombiner.vectors());
        }
        return this;
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
    public <NewTo> Builder<T, NewTo> mapResult(Function1<ParVector<T>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.mutable.Builder
    public ParVector<T> result() {
        VectorBuilder vectorBuilder = new VectorBuilder();
        vectors().foreach(new LazyParVectorCombiner$$anonfun$result$1(this, vectorBuilder));
        return new ParVector<>(vectorBuilder.result());
    }

    @Override // scala.collection.parallel.Combiner
    public Object resultWithTaskSupport() {
        return Combiner.Cclass.resultWithTaskSupport(this);
    }

    @Override // scala.collection.generic.Sizing
    public int size() {
        return m104sz();
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

    /* renamed from: sz */
    public int m104sz() {
        return this.f1592sz;
    }

    public void sz_$eq(int i) {
        this.f1592sz = i;
    }

    public ArrayBuffer<VectorBuilder<T>> vectors() {
        return this.vectors;
    }
}
