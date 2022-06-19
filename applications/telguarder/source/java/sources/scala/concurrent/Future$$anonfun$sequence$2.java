package scala.concurrent;

import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$sequence$2.class */
public final class Future$$anonfun$sequence$2 extends AbstractFunction1<Builder<A, M>, M> implements Serializable {
    public static final long serialVersionUID = 0;

    public final TraversableOnce apply(Builder builder) {
        return (TraversableOnce) builder.result();
    }
}
