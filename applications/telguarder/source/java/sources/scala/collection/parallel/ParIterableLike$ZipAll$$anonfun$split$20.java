package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20.class */
public final class ParIterableLike$ZipAll$$anonfun$split$20 extends AbstractFunction1<Tuple2<Tuple2<IterableSplitter<T>, SeqSplitter<S>>, Object>, ParIterableLike<T, Repr, Sequential>.ZipAll<U, S, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.ZipAll $outer;

    public ParIterableLike$ZipAll$$anonfun$split$20(ParIterableLike<T, Repr, Sequential>.ZipAll<U, S, That> zipAll) {
        Objects.requireNonNull(zipAll);
        this.$outer = zipAll;
    }

    public final ParIterableLike<T, Repr, Sequential>.ZipAll<U, S, That> apply(Tuple2<Tuple2<IterableSplitter<T>, SeqSplitter<S>>, Object> tuple2) {
        return new ParIterableLike.ZipAll<>(this.$outer.mo108x65cdc205(), tuple2._2$mcI$sp(), this.$outer.scala$collection$parallel$ParIterableLike$ZipAll$$thiselem, this.$outer.scala$collection$parallel$ParIterableLike$ZipAll$$thatelem, this.$outer.scala$collection$parallel$ParIterableLike$ZipAll$$pbf, (IterableSplitter) ((Tuple2) tuple2.mo269_1()).mo269_1(), (SeqSplitter) ((Tuple2) tuple2.mo269_1()).mo268_2());
    }
}
