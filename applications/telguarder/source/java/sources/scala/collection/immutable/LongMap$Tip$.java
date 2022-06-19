package scala.collection.immutable;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.immutable.LongMap;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMap$Tip$.class */
public class LongMap$Tip$ implements Serializable {
    public static final LongMap$Tip$ MODULE$ = null;

    static {
        new LongMap$Tip$();
    }

    public LongMap$Tip$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> LongMap.Tip<T> apply(long j, T t) {
        return new LongMap.Tip<>(j, t);
    }

    public final String toString() {
        return "Tip";
    }

    public <T> Option<Tuple2<Object, T>> unapply(LongMap.Tip<T> tip) {
        return tip == null ? None$.MODULE$ : new Some(new Tuple2(BoxesRunTime.boxToLong(tip.key()), tip.value()));
    }
}
