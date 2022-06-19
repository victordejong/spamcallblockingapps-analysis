package scala.collection.concurrent;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/CNode$$anonfun$string$1.class */
public final class CNode$$anonfun$string$1 extends AbstractFunction1<BasicNode, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final int lev$3;

    /* JADX WARN: Multi-variable type inference failed */
    public CNode$$anonfun$string$1(CNode cNode, CNode<K, V> cNode2) {
        this.lev$3 = cNode2;
    }

    public final String apply(BasicNode basicNode) {
        return basicNode.string(this.lev$3 + 1);
    }
}
