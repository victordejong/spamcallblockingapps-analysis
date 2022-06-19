package scala.collection.immutable;

import scala.Serializable;
import scala.Some;
import scala.Tuple4;
import scala.collection.immutable.RedBlackTree;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/RedBlackTree$BlackTree$.class */
public class RedBlackTree$BlackTree$ implements Serializable {
    public static final RedBlackTree$BlackTree$ MODULE$ = null;

    static {
        new RedBlackTree$BlackTree$();
    }

    public RedBlackTree$BlackTree$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> RedBlackTree.BlackTree<A, B> apply(A a, B b, RedBlackTree.Tree<A, B> tree, RedBlackTree.Tree<A, B> tree2) {
        return new RedBlackTree.BlackTree<>(a, b, tree, tree2);
    }

    public <A, B> Some<Tuple4<A, B, RedBlackTree.Tree<A, B>, RedBlackTree.Tree<A, B>>> unapply(RedBlackTree.BlackTree<A, B> blackTree) {
        return new Some<>(new Tuple4(blackTree.key(), blackTree.value(), blackTree.left(), blackTree.right()));
    }
}
