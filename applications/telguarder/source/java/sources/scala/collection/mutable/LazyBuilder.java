package scala.collection.mutable;

import scala.Function1;
import scala.Predef$;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.immutable.List$;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001)3Q!\u0001\u0002\u0002\u0002%\u00111\u0002T1{s\n+\u0018\u000e\u001c3fe*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQQcH\n\u0004\u0001-y\u0001C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB!\u0001#E\n\u001f\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\u001d\u0011U/\u001b7eKJ\u0004\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t!Q\t\\3n#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\b\u001d>$\b.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\u0005QyBA\u0002\u0011\u0001\t\u000b\u0007qC\u0001\u0002U_\")!\u0005\u0001C\u0001G\u00051A(\u001b8jiz\"\u0012\u0001\n\t\u0005!\u0001\u0019b\u0004C\u0004'\u0001\u0001\u0007I\u0011C\u0014\u0002\u000bA\f'\u000f^:\u0016\u0003!\u00022\u0001E\u0015,\u0013\tQ#A\u0001\u0006MSN$()\u001e4gKJ\u00042\u0001L\u0017\u0014\u001b\u0005!\u0011B\u0001\u0018\u0005\u0005=!&/\u0019<feN\f'\r\\3P]\u000e,\u0007b\u0002\u0019\u0001\u0001\u0004%\t\"M\u0001\na\u0006\u0014Ho]0%KF$\"AM\u001b\u0011\u00051\u0019\u0014B\u0001\u001b\u0007\u0005\u0011)f.\u001b;\t\u000fYz\u0013\u0011!a\u0001Q\u0005\u0019\u0001\u0010J\u0019\t\ra\u0002\u0001\u0015)\u0003)\u0003\u0019\u0001\u0018M\u001d;tA!)!\b\u0001C\u0001w\u0005AA\u0005\u001d7vg\u0012*\u0017\u000f\u0006\u0002={5\t\u0001\u0001C\u0003?s\u0001\u00071#A\u0001y\u0011\u0015\u0001\u0005\u0001\"\u0011B\u00035!\u0003\u000f\\;tIAdWo\u001d\u0013fcR\u0011AH\u0011\u0005\u0006\u0007~\u0002\raK\u0001\u0003qNDQ!\u0012\u0001\u0007\u0002\u0019\u000baA]3tk2$H#\u0001\u0010\t\u000b!\u0003A\u0011A%\u0002\u000b\rdW-\u0019:\u0015\u0003I\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LazyBuilder.class */
public abstract class LazyBuilder<Elem, To> implements Builder<Elem, To> {
    private ListBuffer<TraversableOnce<Elem>> parts = new ListBuffer<>();

    public LazyBuilder() {
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
    }

    @Override // scala.collection.generic.Growable
    public Growable<Elem> $plus$eq(Elem elem, Elem elem2, Seq<Elem> seq) {
        Growable<Elem> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((LazyBuilder<Elem, To>) elem).$plus$eq(elem2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public LazyBuilder<Elem, To> $plus$eq(Elem elem) {
        parts().$plus$eq((ListBuffer<TraversableOnce<Elem>>) List$.MODULE$.apply((Seq) Predef$.MODULE$.genericWrapArray(new Object[]{elem})));
        return this;
    }

    @Override // scala.collection.generic.Growable
    public LazyBuilder<Elem, To> $plus$plus$eq(TraversableOnce<Elem> traversableOnce) {
        parts().$plus$eq((ListBuffer<TraversableOnce<Elem>>) traversableOnce);
        return this;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        parts().clear();
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<Elem, NewTo> mapResult(Function1<To, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    public ListBuffer<TraversableOnce<Elem>> parts() {
        return this.parts;
    }

    public void parts_$eq(ListBuffer<TraversableOnce<Elem>> listBuffer) {
        this.parts = listBuffer;
    }

    @Override // scala.collection.mutable.Builder
    public abstract To result();

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
}
