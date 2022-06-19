package scala.collection.immutable;

import java.util.NoSuchElementException;
import scala.Serializable;
import scala.collection.GenSeq;
import scala.collection.Iterator;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Nil$.class */
public final class Nil$ extends List<Nothing$> implements Serializable {
    public static final Nil$ MODULE$ = null;
    public static final long serialVersionUID = -8256821097970055419L;

    static {
        new Nil$();
    }

    private Nil$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.collection.AbstractSeq, scala.Equals
    public boolean equals(Object obj) {
        return obj instanceof GenSeq ? ((GenSeq) obj).isEmpty() : false;
    }

    @Override // scala.collection.immutable.List, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Nothing$ head() {
        throw new NoSuchElementException("head of empty list");
    }

    @Override // scala.collection.immutable.List, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
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

    @Override // scala.collection.immutable.List, scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.collection.immutable.List, scala.Product
    public String productPrefix() {
        return "Nil";
    }

    @Override // scala.collection.immutable.List, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public List<Nothing$> tail() {
        throw new UnsupportedOperationException("tail of empty list");
    }
}
