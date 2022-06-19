package scala.collection.mutable;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple3;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Node$.class */
public final class Node$ implements Serializable {
    public static final Node$ MODULE$ = null;

    static {
        new Node$();
    }

    private Node$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> Node<A> apply(A a, AVLTree<A> aVLTree, AVLTree<A> aVLTree2) {
        return new Node<>(a, aVLTree, aVLTree2);
    }

    public final String toString() {
        return "Node";
    }

    public <A> Option<Tuple3<A, AVLTree<A>, AVLTree<A>>> unapply(Node<A> node) {
        return node == null ? None$.MODULE$ : new Some(new Tuple3(node.data(), node.left(), node.right()));
    }
}
