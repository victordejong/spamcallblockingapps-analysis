package scala.collection.immutable;

import scala.Serializable;
import scala.Some;
import scala.Tuple4;
import scala.collection.immutable.RedBlackTree;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/RedBlackTree$RedTree$.class */
public class RedBlackTree$RedTree$ implements Serializable {
    public static final RedBlackTree$RedTree$ MODULE$ = null;

    static {
        new RedBlackTree$RedTree$();
    }

    public RedBlackTree$RedTree$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A, B> RedBlackTree.RedTree<A, B> apply(A a, B b, RedBlackTree.Tree<A, B> tree, RedBlackTree.Tree<A, B> tree2) {
        return new RedBlackTree.RedTree<>(a, b, tree, tree2);
    }

    public <A, B> Some<Tuple4<A, B, RedBlackTree.Tree<A, B>, RedBlackTree.Tree<A, B>>> unapply(RedBlackTree.RedTree<A, B> redTree) {
        return new Some<>(new Tuple4(redTree.key(), redTree.value(), redTree.left(), redTree.right()));
    }
}
