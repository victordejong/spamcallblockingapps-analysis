package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Queue$$anonfun$newBuilder$1.class */
public final class Queue$$anonfun$newBuilder$1 extends AbstractFunction1<List<A>, Queue<A>> implements Serializable {
    public static final long serialVersionUID = 0;

    public final Queue<A> apply(List<A> list) {
        return new Queue<>(Nil$.MODULE$, list.toList());
    }
}
