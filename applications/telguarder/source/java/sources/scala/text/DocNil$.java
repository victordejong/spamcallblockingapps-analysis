package scala.text;

import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/text/DocNil$.class */
public final class DocNil$ extends Document implements Product, Serializable {
    public static final DocNil$ MODULE$ = null;

    static {
        new DocNil$();
    }

    private DocNil$() {
        MODULE$ = this;
        Product.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof DocNil$;
    }

    public int hashCode() {
        return 2052320729;
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
        return "DocNil";
    }

    public String toString() {
        return "DocNil";
    }
}
