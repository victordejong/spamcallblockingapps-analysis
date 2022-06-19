package scala.collection.parallel;

import java.util.Objects;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple6;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$ScanLeaf$.class */
public class ParIterableLike$ScanLeaf$ implements Serializable {
    private final /* synthetic */ ParIterableLike $outer;

    public ParIterableLike$ScanLeaf$(ParIterableLike<T, Repr, Sequential> parIterableLike) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
    }

    private Object readResolve() {
        return this.$outer.ScanLeaf();
    }

    public <U> ParIterableLike<T, Repr, Sequential>.ScanLeaf<U> apply(IterableSplitter<U> iterableSplitter, Function2<U, U, U> function2, int i, int i2, Option<ParIterableLike<T, Repr, Sequential>.ScanLeaf<U>> option, U u) {
        return new ParIterableLike.ScanLeaf<>(this.$outer, iterableSplitter, function2, i, i2, option, u);
    }

    public final String toString() {
        return "ScanLeaf";
    }

    public <U> Option<Tuple6<IterableSplitter<U>, Function2<U, U, U>, Object, Object, Option<ParIterableLike<T, Repr, Sequential>.ScanLeaf<U>>, U>> unapply(ParIterableLike<T, Repr, Sequential>.ScanLeaf<U> scanLeaf) {
        return scanLeaf == null ? None$.MODULE$ : new Some(new Tuple6(scanLeaf.pit(), scanLeaf.m114op(), BoxesRunTime.boxToInteger(scanLeaf.from()), BoxesRunTime.boxToInteger(scanLeaf.len()), scanLeaf.prev(), scanLeaf.acc()));
    }
}
