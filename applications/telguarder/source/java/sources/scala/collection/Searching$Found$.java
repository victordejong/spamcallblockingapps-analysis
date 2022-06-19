package scala.collection;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.collection.Searching;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/Searching$Found$.class */
public class Searching$Found$ extends AbstractFunction1<Object, Searching.Found> implements Serializable {
    public static final Searching$Found$ MODULE$ = null;

    static {
        new Searching$Found$();
    }

    public Searching$Found$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public Searching.Found apply(int i) {
        return new Searching.Found(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "Found";
    }

    public Option<Object> unapply(Searching.Found found) {
        return found == null ? None$.MODULE$ : new Some(BoxesRunTime.boxToInteger(found.foundIndex()));
    }
}
