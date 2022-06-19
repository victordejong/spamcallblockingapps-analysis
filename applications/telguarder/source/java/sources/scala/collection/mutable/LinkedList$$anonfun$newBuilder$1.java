package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedList$$anonfun$newBuilder$1.class */
public final class LinkedList$$anonfun$newBuilder$1 extends AbstractFunction1<MutableList<A>, LinkedList<A>> implements Serializable {
    public static final long serialVersionUID = 0;

    public final LinkedList<A> apply(MutableList<A> mutableList) {
        return mutableList.toLinkedList();
    }
}
