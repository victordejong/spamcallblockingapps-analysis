package scala.collection.mutable;

import scala.Product;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.mutable.AVLTree;
import scala.math.Ordering;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Leaf$.class */
public final class Leaf$ implements AVLTree<Nothing$>, Product {
    public static final Leaf$ MODULE$ = null;
    private final int balance = 0;
    private final int depth = -1;

    static {
        new Leaf$();
    }

    private Leaf$() {
        MODULE$ = this;
        AVLTree.Cclass.$init$(this);
        Product.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.mutable.AVLTree
    public int balance() {
        return this.balance;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Leaf$;
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> boolean contains(B b, Ordering<B> ordering) {
        return AVLTree.Cclass.contains(this, b, ordering);
    }

    @Override // scala.collection.mutable.AVLTree
    public int depth() {
        return this.depth;
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> Node<B> doubleLeftRotation() {
        return AVLTree.Cclass.doubleLeftRotation(this);
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> Node<B> doubleRightRotation() {
        return AVLTree.Cclass.doubleRightRotation(this);
    }

    public int hashCode() {
        return 2364286;
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> AVLTree<B> insert(B b, Ordering<B> ordering) {
        return AVLTree.Cclass.insert(this, b, ordering);
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> Iterator<B> iterator() {
        return AVLTree.Cclass.iterator(this);
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> Node<B> leftRotation() {
        return AVLTree.Cclass.leftRotation(this);
    }

    @Override // scala.Product
    public int productArity() {
        return 0;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "Leaf";
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> AVLTree<B> rebalance() {
        return AVLTree.Cclass.rebalance(this);
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> AVLTree<Nothing$> remove(B b, Ordering<B> ordering) {
        return AVLTree.Cclass.remove(this, b, ordering);
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> Tuple2<B, AVLTree<B>> removeMax() {
        return AVLTree.Cclass.removeMax(this);
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> Tuple2<B, AVLTree<B>> removeMin() {
        return AVLTree.Cclass.removeMin(this);
    }

    @Override // scala.collection.mutable.AVLTree
    public <B> Node<B> rightRotation() {
        return AVLTree.Cclass.rightRotation(this);
    }

    public String toString() {
        return "Leaf";
    }
}
