package scala.collection.script;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Update$.class */
public final class Update$ implements Serializable {
    public static final Update$ MODULE$ = null;

    static {
        new Update$();
    }

    private Update$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> Update<A> apply(Location location, A a) {
        return new Update<>(location, a);
    }

    public final String toString() {
        return "Update";
    }

    public <A> Option<Tuple2<Location, A>> unapply(Update<A> update) {
        return update == null ? None$.MODULE$ : new Some(new Tuple2(update.location(), update.elem()));
    }
}
