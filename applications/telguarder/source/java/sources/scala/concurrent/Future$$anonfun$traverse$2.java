package scala.concurrent;

import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$traverse$2.class */
public final class Future$$anonfun$traverse$2 extends AbstractFunction1<Builder<B, M>, M> implements Serializable {
    public static final long serialVersionUID = 0;

    public final TraversableOnce apply(Builder builder) {
        return (TraversableOnce) builder.result();
    }
}
