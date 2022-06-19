package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.collection.mutable.ArrayBuffer;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$newIterator$1.class */
public final class TraversableOnce$BufferedCanBuildFrom$$anonfun$newIterator$1 extends AbstractFunction1<ArrayBuffer<A>, CC> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableOnce.BufferedCanBuildFrom $outer;

    public TraversableOnce$BufferedCanBuildFrom$$anonfun$newIterator$1(TraversableOnce.BufferedCanBuildFrom<A, CC> bufferedCanBuildFrom) {
        Objects.requireNonNull(bufferedCanBuildFrom);
        this.$outer = bufferedCanBuildFrom;
    }

    public final TraversableOnce apply(ArrayBuffer arrayBuffer) {
        return this.$outer.bufferToColl(arrayBuffer);
    }
}
