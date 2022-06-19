package scala.collection.parallel;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.collection.Set;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/CompositeThrowable$.class */
public final class CompositeThrowable$ extends AbstractFunction1<Set<Throwable>, CompositeThrowable> implements Serializable {
    public static final CompositeThrowable$ MODULE$ = null;

    static {
        new CompositeThrowable$();
    }

    private CompositeThrowable$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public CompositeThrowable apply(Set<Throwable> set) {
        return new CompositeThrowable(set);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "CompositeThrowable";
    }

    public Option<Set<Throwable>> unapply(CompositeThrowable compositeThrowable) {
        return compositeThrowable == null ? None$.MODULE$ : new Some(compositeThrowable.throwables());
    }
}
