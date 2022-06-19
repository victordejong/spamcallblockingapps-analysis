package scala.collection.concurrent;

import scala.Console$;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/Debug$$anonfun$flush$1.class */
public final class Debug$$anonfun$flush$1 extends AbstractFunction1<Object, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;

    @Override // scala.Function1
    public final void apply(Object obj) {
        Console$.MODULE$.out().println(obj.toString());
    }
}
