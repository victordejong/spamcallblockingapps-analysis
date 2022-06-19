package scala;

import java.util.NoSuchElementException;
import scala.collection.Iterator;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/None$.class */
public final class None$ extends Option<Nothing$> {
    public static final None$ MODULE$ = null;
    public static final long serialVersionUID = 5066590221178148012L;

    static {
        new None$();
    }

    private None$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof None$;
    }

    @Override // scala.Option
    /* renamed from: get */
    public Nothing$ get2() {
        throw new NoSuchElementException("None.get");
    }

    public int hashCode() {
        return 2433880;
    }

    @Override // scala.Option
    public boolean isEmpty() {
        return true;
    }

    @Override // scala.Product
    public int productArity() {
        return 0;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.Option, scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Option, scala.Product
    public String productPrefix() {
        return "None";
    }

    public String toString() {
        return "None";
    }
}
