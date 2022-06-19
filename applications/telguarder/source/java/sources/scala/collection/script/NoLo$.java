package scala.collection.script;

import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/script/NoLo$.class */
public final class NoLo$ extends Location implements Product, Serializable {
    public static final NoLo$ MODULE$ = null;

    static {
        new NoLo$();
    }

    private NoLo$() {
        MODULE$ = this;
        Product.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof NoLo$;
    }

    public int hashCode() {
        return 2432836;
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
        return "NoLo";
    }

    public String toString() {
        return "NoLo";
    }
}
