package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1.class */
public final class TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1 extends AbstractFunction1<Traversable<A>, CC> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableOnce.BufferedCanBuildFrom $outer;

    public TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1(TraversableOnce.BufferedCanBuildFrom<A, CC> bufferedCanBuildFrom) {
        Objects.requireNonNull(bufferedCanBuildFrom);
        this.$outer = bufferedCanBuildFrom;
    }

    public final TraversableOnce apply(Traversable traversable) {
        return this.$outer.traversableToColl(traversable);
    }
}
