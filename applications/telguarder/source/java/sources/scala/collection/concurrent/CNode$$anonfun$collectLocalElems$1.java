package scala.collection.concurrent;

import scala.MatchError;
import scala.Option$;
import scala.Predef$;
import scala.Serializable;
import scala.Some;
import scala.collection.Iterable;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/CNode$$anonfun$collectLocalElems$1.class */
public final class CNode$$anonfun$collectLocalElems$1 extends AbstractFunction1<BasicNode, Iterable<String>> implements Serializable {
    public static final long serialVersionUID = 0;

    public CNode$$anonfun$collectLocalElems$1(CNode<K, V> cNode) {
    }

    public final Iterable<String> apply(BasicNode basicNode) {
        Iterable<String> iterable;
        if (basicNode instanceof SNode) {
            iterable = Option$.MODULE$.option2Iterable(new Some(((SNode) basicNode).kvPair().mo268_2().toString()));
        } else if (!(basicNode instanceof INode)) {
            throw new MatchError(basicNode);
        } else {
            INode iNode = (INode) basicNode;
            Option$ option$ = Option$.MODULE$;
            StringBuilder stringBuilder = new StringBuilder();
            Predef$ predef$ = Predef$.MODULE$;
            iterable = option$.option2Iterable(new Some(stringBuilder.append((Object) ((String) new StringOps(iNode.toString()).drop(14))).append((Object) "(").append(iNode.gen).append((Object) ")").toString()));
        }
        return iterable;
    }
}
