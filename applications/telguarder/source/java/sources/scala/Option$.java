package scala;

import scala.collection.Iterable;
/* loaded from: classes3-dex2jar.jar:scala/Option$.class */
public final class Option$ implements Serializable {
    public static final Option$ MODULE$ = null;

    static {
        new Option$();
    }

    private Option$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> Option<A> apply(A a) {
        return a == null ? None$.MODULE$ : new Some(a);
    }

    public <A> Option<A> empty() {
        return None$.MODULE$;
    }

    public <A> Iterable<A> option2Iterable(Option<A> option) {
        return option.toList();
    }
}
