package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Zip$$anonfun$split$19.class */
public final class ParIterableLike$Zip$$anonfun$split$19 extends AbstractFunction1<Tuple2<IterableSplitter<T>, SeqSplitter<S>>, ParIterableLike<T, Repr, Sequential>.Zip<U, S, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.Zip $outer;

    public ParIterableLike$Zip$$anonfun$split$19(ParIterableLike<T, Repr, Sequential>.Zip<U, S, That> zip) {
        Objects.requireNonNull(zip);
        this.$outer = zip;
    }

    public final ParIterableLike<T, Repr, Sequential>.Zip<U, S, That> apply(Tuple2<IterableSplitter<T>, SeqSplitter<S>> tuple2) {
        return new ParIterableLike.Zip<>(this.$outer.mo108x65cdc205(), this.$outer.scala$collection$parallel$ParIterableLike$Zip$$pbf, (IterableSplitter) tuple2.mo269_1(), (SeqSplitter) tuple2.mo268_2());
    }
}
