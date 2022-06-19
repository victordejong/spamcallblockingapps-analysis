package scala.collection;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.collection.Searching;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/Searching$InsertionPoint$.class */
public class Searching$InsertionPoint$ extends AbstractFunction1<Object, Searching.InsertionPoint> implements Serializable {
    public static final Searching$InsertionPoint$ MODULE$ = null;

    static {
        new Searching$InsertionPoint$();
    }

    public Searching$InsertionPoint$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public Searching.InsertionPoint apply(int i) {
        return new Searching.InsertionPoint(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "InsertionPoint";
    }

    public Option<Object> unapply(Searching.InsertionPoint insertionPoint) {
        return insertionPoint == null ? None$.MODULE$ : new Some(BoxesRunTime.boxToInteger(insertionPoint.insertionPoint()));
    }
}
