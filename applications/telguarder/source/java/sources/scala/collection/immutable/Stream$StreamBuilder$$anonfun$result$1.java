package scala.collection.immutable;

import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.collection.immutable.Stream;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$StreamBuilder$$anonfun$result$1.class */
public final class Stream$StreamBuilder$$anonfun$result$1 extends AbstractFunction1<TraversableOnce<A>, Stream<A>> implements Serializable {
    public static final long serialVersionUID = 0;

    public Stream$StreamBuilder$$anonfun$result$1(Stream.StreamBuilder<A> streamBuilder) {
    }

    public final Stream<A> apply(TraversableOnce<A> traversableOnce) {
        return traversableOnce.toStream();
    }
}
