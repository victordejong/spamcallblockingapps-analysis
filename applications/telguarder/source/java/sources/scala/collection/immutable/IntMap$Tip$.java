package scala.collection.immutable;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.immutable.IntMap;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap$Tip$.class */
public class IntMap$Tip$ implements Serializable {
    public static final IntMap$Tip$ MODULE$ = null;

    static {
        new IntMap$Tip$();
    }

    public IntMap$Tip$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> IntMap.Tip<T> apply(int i, T t) {
        return new IntMap.Tip<>(i, t);
    }

    public final String toString() {
        return "Tip";
    }

    public <T> Option<Tuple2<Object, T>> unapply(IntMap.Tip<T> tip) {
        return tip == null ? None$.MODULE$ : new Some(new Tuple2(BoxesRunTime.boxToInteger(tip.key()), tip.value()));
    }
}
