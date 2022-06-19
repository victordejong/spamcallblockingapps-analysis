package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.MatchError;
import scala.Predef$;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.immutable.Repetition;
import scala.runtime.AbstractFunction1;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/Repetition$ParIterator$$anonfun$psplit$2.class */
public final class Repetition$ParIterator$$anonfun$psplit$2 extends AbstractFunction1<Tuple2<Object, Object>, Repetition<T>.ParIterator> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Repetition.ParIterator $outer;

    public Repetition$ParIterator$$anonfun$psplit$2(Repetition<T>.ParIterator parIterator) {
        Objects.requireNonNull(parIterator);
        this.$outer = parIterator;
    }

    public final Repetition<T>.ParIterator apply(Tuple2<Object, Object> tuple2) {
        if (tuple2 != null) {
            Repetition m94x9080b34a = this.$outer.m94x9080b34a();
            int m95i = this.$outer.m95i();
            int _1$mcI$sp = tuple2._1$mcI$sp();
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return new Repetition.ParIterator(m94x9080b34a, m95i + _1$mcI$sp, richInt$.min$extension(this.$outer.m95i() + tuple2._2$mcI$sp(), this.$outer.until()), this.$outer.scala$collection$parallel$immutable$Repetition$ParIterator$$elem);
        }
        throw new MatchError(tuple2);
    }
}
