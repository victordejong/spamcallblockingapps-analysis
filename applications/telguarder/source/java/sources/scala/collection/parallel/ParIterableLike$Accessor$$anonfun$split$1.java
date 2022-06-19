package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Accessor$$anonfun$split$1.class */
public final class ParIterableLike$Accessor$$anonfun$split$1 extends AbstractFunction1<IterableSplitter<T>, ParIterableLike<T, Repr, Sequential>.Accessor<R, Tp>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.Accessor $outer;

    public ParIterableLike$Accessor$$anonfun$split$1(ParIterableLike<T, Repr, Sequential>.Accessor<R, Tp> accessor) {
        Objects.requireNonNull(accessor);
        this.$outer = accessor;
    }

    public final ParIterableLike<T, Repr, Sequential>.Accessor<R, Tp> apply(IterableSplitter<T> iterableSplitter) {
        return this.$outer.newSubtask(iterableSplitter);
    }
}
