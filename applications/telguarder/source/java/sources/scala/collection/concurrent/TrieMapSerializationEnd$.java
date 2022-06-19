package scala.collection.concurrent;

import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/TrieMapSerializationEnd$.class */
public final class TrieMapSerializationEnd$ implements Product, Serializable {
    public static final TrieMapSerializationEnd$ MODULE$ = null;
    public static final long serialVersionUID = -7237891413820527142L;

    static {
        new TrieMapSerializationEnd$();
    }

    private TrieMapSerializationEnd$() {
        MODULE$ = this;
        Product.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof TrieMapSerializationEnd$;
    }

    public int hashCode() {
        return 289833389;
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
        return "TrieMapSerializationEnd";
    }

    public String toString() {
        return "TrieMapSerializationEnd";
    }
}
