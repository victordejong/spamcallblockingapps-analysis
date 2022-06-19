package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$CreateScanTree$$anonfun$split$27.class */
public final class ParIterableLike$CreateScanTree$$anonfun$split$27 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, ParIterableLike<T, Repr, Sequential>.CreateScanTree<U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.CreateScanTree $outer;

    public ParIterableLike$CreateScanTree$$anonfun$split$27(ParIterableLike<T, Repr, Sequential>.CreateScanTree<U> createScanTree) {
        Objects.requireNonNull(createScanTree);
        this.$outer = createScanTree;
    }

    public final ParIterableLike<T, Repr, Sequential>.CreateScanTree<U> apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return new ParIterableLike.CreateScanTree<>(this.$outer.mo108x65cdc205(), tuple2._2$mcI$sp(), ((IterableSplitter) tuple2.mo269_1()).remaining(), this.$outer.scala$collection$parallel$ParIterableLike$CreateScanTree$$z, this.$outer.scala$collection$parallel$ParIterableLike$CreateScanTree$$op, (IterableSplitter) tuple2.mo269_1());
        }
        throw new MatchError(tuple2);
    }
}
