package scala.collection.immutable;

import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListSerializeEnd$.class */
public final class ListSerializeEnd$ implements Product, Serializable {
    public static final ListSerializeEnd$ MODULE$ = null;
    public static final long serialVersionUID = -8476791151975527571L;

    static {
        new ListSerializeEnd$();
    }

    private ListSerializeEnd$() {
        MODULE$ = this;
        Product.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof ListSerializeEnd$;
    }

    public int hashCode() {
        return -1720972871;
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
        return "ListSerializeEnd";
    }

    public String toString() {
        return "ListSerializeEnd";
    }
}
