package scala.collection.immutable;

import scala.Serializable;
import scala.collection.immutable.RedBlackTree;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/RedBlackTree$$anonfun$1.class */
public final class RedBlackTree$$anonfun$1 extends AbstractFunction2<RedBlackTree.Tree<A, B>, RedBlackTree.Tree<A, B>, RedBlackTree.Tree<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final boolean leftMost$1;

    public RedBlackTree$$anonfun$1(boolean z) {
        this.leftMost$1 = z;
    }

    public final RedBlackTree.Tree<A, B> apply(RedBlackTree.Tree<A, B> tree, RedBlackTree.Tree<A, B> tree2) {
        return this.leftMost$1 ? RedBlackTree$.MODULE$.scala$collection$immutable$RedBlackTree$$balanceLeft(RedBlackTree$.MODULE$.scala$collection$immutable$RedBlackTree$$isBlackTree(tree2), tree2.key(), tree2.value(), tree, tree2.right()) : RedBlackTree$.MODULE$.scala$collection$immutable$RedBlackTree$$balanceRight(RedBlackTree$.MODULE$.scala$collection$immutable$RedBlackTree$$isBlackTree(tree2), tree2.key(), tree2.value(), tree2.left(), tree);
    }
}
