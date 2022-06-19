package scala.collection.parallel;

import java.util.Objects;
import scala.Function2;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.IterableSplitter;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Taken$$anonfun$5.class */
public final class IterableSplitter$Taken$$anonfun$5 extends AbstractFunction1<Tuple2<PI, Tuple2<Object, Object>>, PI> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ IterableSplitter.Taken $outer;
    private final Function2 taker$1;

    /* JADX WARN: Multi-variable type inference failed */
    public IterableSplitter$Taken$$anonfun$5(IterableSplitter.Taken taken, IterableSplitter<T>.Taken taken2) {
        Objects.requireNonNull(taken);
        this.$outer = taken;
        this.taker$1 = taken2;
    }

    public final IterableSplitter apply(Tuple2 tuple2) {
        if (tuple2 == null || tuple2.mo268_2() == null) {
            throw new MatchError(tuple2);
        }
        return (IterableSplitter) (((Tuple2) tuple2.mo268_2())._2$mcI$sp() < this.$outer.remaining() ? tuple2.mo269_1() : this.taker$1.apply(tuple2.mo269_1(), BoxesRunTime.boxToInteger(this.$outer.remaining() - ((Tuple2) tuple2.mo268_2())._1$mcI$sp())));
    }
}
