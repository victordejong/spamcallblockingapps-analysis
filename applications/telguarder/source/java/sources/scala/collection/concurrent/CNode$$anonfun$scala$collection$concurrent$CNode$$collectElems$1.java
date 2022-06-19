package scala.collection.concurrent;

import scala.MatchError;
import scala.Option$;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.Iterable;
import scala.collection.Seq;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/CNode$$anonfun$scala$collection$concurrent$CNode$$collectElems$1.class */
public final class CNode$$anonfun$scala$collection$concurrent$CNode$$collectElems$1 extends AbstractFunction1<BasicNode, Iterable<Tuple2<K, V>>> implements Serializable {
    public static final long serialVersionUID = 0;

    public CNode$$anonfun$scala$collection$concurrent$CNode$$collectElems$1(CNode<K, V> cNode) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [scala.collection.Iterable] */
    /* JADX WARN: Type inference failed for: r0v30, types: [scala.collection.Iterable] */
    public final Iterable<Tuple2<K, V>> apply(BasicNode basicNode) {
        Seq seq;
        if (basicNode instanceof SNode) {
            seq = Option$.MODULE$.option2Iterable(new Some(((SNode) basicNode).kvPair()));
        } else if (!(basicNode instanceof INode)) {
            throw new MatchError(basicNode);
        } else {
            Object obj = ((INode) basicNode).mainnode;
            if (obj instanceof TNode) {
                seq = Option$.MODULE$.option2Iterable(new Some(((TNode) obj).kvPair()));
            } else if (obj instanceof LNode) {
                seq = ((LNode) obj).listmap().toList();
            } else if (!(obj instanceof CNode)) {
                throw new MatchError(obj);
            } else {
                seq = ((CNode) obj).scala$collection$concurrent$CNode$$collectElems();
            }
        }
        return seq;
    }
}
