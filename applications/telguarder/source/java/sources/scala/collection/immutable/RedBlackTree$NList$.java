package scala.collection.immutable;

import scala.Function2;
import scala.collection.immutable.RedBlackTree;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/RedBlackTree$NList$.class */
public final class RedBlackTree$NList$ {
    public static final RedBlackTree$NList$ MODULE$ = null;

    static {
        new RedBlackTree$NList$();
    }

    public RedBlackTree$NList$() {
        MODULE$ = this;
    }

    public <B> RedBlackTree.NList<B> cons(B b, RedBlackTree.NList<B> nList) {
        return new RedBlackTree.NList<>(b, nList);
    }

    public <A, B> B foldLeft(RedBlackTree.NList<A> nList, B b, Function2<B, A, B> function2) {
        while (nList != null) {
            b = function2.apply(b, nList.head());
            nList = nList.tail();
        }
        return b;
    }
}
