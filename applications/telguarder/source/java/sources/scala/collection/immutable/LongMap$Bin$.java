package scala.collection.immutable;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple4;
import scala.collection.immutable.LongMap;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMap$Bin$.class */
public class LongMap$Bin$ implements Serializable {
    public static final LongMap$Bin$ MODULE$ = null;

    static {
        new LongMap$Bin$();
    }

    public LongMap$Bin$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> LongMap.Bin<T> apply(long j, long j2, LongMap<T> longMap, LongMap<T> longMap2) {
        return new LongMap.Bin<>(j, j2, longMap, longMap2);
    }

    public final String toString() {
        return "Bin";
    }

    public <T> Option<Tuple4<Object, Object, LongMap<T>, LongMap<T>>> unapply(LongMap.Bin<T> bin) {
        return bin == null ? None$.MODULE$ : new Some(new Tuple4(BoxesRunTime.boxToLong(bin.prefix()), BoxesRunTime.boxToLong(bin.mask()), bin.left(), bin.right()));
    }
}
