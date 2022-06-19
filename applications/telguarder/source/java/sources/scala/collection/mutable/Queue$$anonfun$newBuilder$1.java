package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Queue$$anonfun$newBuilder$1.class */
public final class Queue$$anonfun$newBuilder$1 extends AbstractFunction1<MutableList<A>, Queue<A>> implements Serializable {
    public static final long serialVersionUID = 0;

    public final Queue<A> apply(MutableList<A> mutableList) {
        return mutableList.toQueue();
    }
}
