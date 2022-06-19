package scala.collection.script;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Include$.class */
public final class Include$ implements Serializable {
    public static final Include$ MODULE$ = null;

    static {
        new Include$();
    }

    private Include$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> Include<A> apply(Location location, A a) {
        return new Include<>(location, a);
    }

    public final String toString() {
        return "Include";
    }

    public <A> Option<Tuple2<Location, A>> unapply(Include<A> include) {
        return include == null ? None$.MODULE$ : new Some(new Tuple2(include.location(), include.elem()));
    }
}
