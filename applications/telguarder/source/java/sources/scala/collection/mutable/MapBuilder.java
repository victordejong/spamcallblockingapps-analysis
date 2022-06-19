package scala.collection.mutable;

import scala.Function1;
import scala.Tuple2;
import scala.collection.GenMap;
import scala.collection.GenMapLike;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001I3A!\u0001\u0002\u0001\u0013\tQQ*\u00199Ck&dG-\u001a:\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0005\u0015a\u0011SeE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0011\u0001\u0012c\u0005\u0013\u000e\u0003\tI!A\u0005\u0002\u0003\u000f\t+\u0018\u000e\u001c3feB!A\u0002\u0006\f\"\u0013\t)bA\u0001\u0004UkBdWM\r\t\u0003/aa\u0001\u0001B\u0003\u001a\u0001\t\u0007!DA\u0001B#\tYb\u0004\u0005\u0002\r9%\u0011QD\u0002\u0002\b\u001d>$\b.\u001b8h!\taq$\u0003\u0002!\r\t\u0019\u0011I\\=\u0011\u0005]\u0011C!B\u0012\u0001\u0005\u0004Q\"!\u0001\"\u0011\u0005])C!\u0002\u0014\u0001\u0005\u00049#\u0001B\"pY2\f\"a\u0007\u0015\u0013\u0007%ZsF\u0002\u0003+\u0001\u0001A#\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004\u0003\u0002\u0017.-\u0005j\u0011\u0001B\u0005\u0003]\u0011\u0011aaR3o\u001b\u0006\u0004\b#\u0002\u00171-\u0005\"\u0013BA\u0019\u0005\u0005)9UM\\'ba2K7.\u001a\u0005\tg\u0001\u0011\t\u0011)A\u0005I\u0005)Q-\u001c9us\")Q\u0007\u0001C\u0001m\u00051A(\u001b8jiz\"\"a\u000e\u001d\u0011\u000bA\u0001a#\t\u0013\t\u000bM\"\u0004\u0019\u0001\u0013\t\u000fi\u0002\u0001\u0019!C\tw\u0005)Q\r\\3ngV\tA\u0005C\u0004>\u0001\u0001\u0007I\u0011\u0003 \u0002\u0013\u0015dW-\\:`I\u0015\fHCA C!\ta\u0001)\u0003\u0002B\r\t!QK\\5u\u0011\u001d\u0019E(!AA\u0002\u0011\n1\u0001\u001f\u00132\u0011\u0019)\u0005\u0001)Q\u0005I\u00051Q\r\\3ng\u0002BQa\u0012\u0001\u0005\u0002!\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0003\u0013*k\u0011\u0001\u0001\u0005\u0006\u0017\u001a\u0003\raE\u0001\u0002q\")Q\n\u0001C\u0001\u001d\u0006)1\r\\3beR\tq\bC\u0003Q\u0001\u0011\u0005\u0011+\u0001\u0004sKN,H\u000e\u001e\u000b\u0002I\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MapBuilder.class */
public class MapBuilder<A, B, Coll extends GenMap<A, B> & GenMapLike<A, B, Coll>> implements Builder<Tuple2<A, B>, Coll> {
    private Coll elems;
    private final Coll empty;

    public MapBuilder(Coll coll) {
        this.empty = coll;
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        this.elems = coll;
    }

    @Override // scala.collection.generic.Growable
    public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
        Growable $plus$plus$eq;
        $plus$plus$eq = $plus$eq((MapBuilder<A, B, Coll>) obj).$plus$eq(obj2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    public MapBuilder<A, B, Coll> $plus$eq(Tuple2<A, B> tuple2) {
        elems_$eq(elems().$plus(tuple2));
        return this;
    }

    @Override // scala.collection.generic.Growable
    public Growable<Tuple2<A, B>> $plus$plus$eq(TraversableOnce<Tuple2<A, B>> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        elems_$eq(this.empty);
    }

    public Coll elems() {
        return this.elems;
    }

    public void elems_$eq(Coll coll) {
        this.elems = coll;
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<Tuple2<A, B>, NewTo> mapResult(Function1<Coll, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.mutable.Builder
    public Coll result() {
        return elems();
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
}
