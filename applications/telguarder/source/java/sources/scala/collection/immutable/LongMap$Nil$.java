package scala.collection.immutable;

import scala.Product;
import scala.Serializable;
import scala.collection.GenMapLike;
import scala.collection.Iterator;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMap$Nil$.class */
public class LongMap$Nil$ extends LongMap<Nothing$> implements Product, Serializable {
    public static final LongMap$Nil$ MODULE$ = null;

    static {
        new LongMap$Nil$();
    }

    public LongMap$Nil$() {
        MODULE$ = this;
        Product.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.AbstractMap, scala.Equals
    public boolean equals(Object obj) {
        return (!(obj instanceof Object) || this != obj) ? obj instanceof LongMap ? false : GenMapLike.Cclass.equals(this, obj) : true;
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
        return "Nil";
    }
}
