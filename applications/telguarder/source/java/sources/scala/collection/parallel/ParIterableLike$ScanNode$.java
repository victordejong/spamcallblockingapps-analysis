package scala.collection.parallel;

import java.util.Objects;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$ScanNode$.class */
public class ParIterableLike$ScanNode$ implements Serializable {
    private final /* synthetic */ ParIterableLike $outer;

    public ParIterableLike$ScanNode$(ParIterableLike<T, Repr, Sequential> parIterableLike) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
    }

    private Object readResolve() {
        return this.$outer.ScanNode();
    }

    public <U> ParIterableLike<T, Repr, Sequential>.ScanNode<U> apply(ParIterableLike<T, Repr, Sequential>.ScanTree<U> scanTree, ParIterableLike<T, Repr, Sequential>.ScanTree<U> scanTree2) {
        return new ParIterableLike.ScanNode<>(this.$outer, scanTree, scanTree2);
    }

    public final String toString() {
        return "ScanNode";
    }

    public <U> Option<Tuple2<ParIterableLike<T, Repr, Sequential>.ScanTree<U>, ParIterableLike<T, Repr, Sequential>.ScanTree<U>>> unapply(ParIterableLike<T, Repr, Sequential>.ScanNode<U> scanNode) {
        return scanNode == null ? None$.MODULE$ : new Some(new Tuple2(scanNode.left(), scanNode.right()));
    }
}
