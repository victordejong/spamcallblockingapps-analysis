package scala.collection.script;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Remove$.class */
public final class Remove$ implements Serializable {
    public static final Remove$ MODULE$ = null;

    static {
        new Remove$();
    }

    private Remove$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> Remove<A> apply(Location location, A a) {
        return new Remove<>(location, a);
    }

    public final String toString() {
        return "Remove";
    }

    public <A> Option<Tuple2<Location, A>> unapply(Remove<A> remove) {
        return remove == null ? None$.MODULE$ : new Some(new Tuple2(remove.location(), remove.elem()));
    }
}
