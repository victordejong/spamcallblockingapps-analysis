package scala.collection.immutable;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple4;
import scala.collection.immutable.IntMap;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap$Bin$.class */
public class IntMap$Bin$ implements Serializable {
    public static final IntMap$Bin$ MODULE$ = null;

    static {
        new IntMap$Bin$();
    }

    public IntMap$Bin$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> IntMap.Bin<T> apply(int i, int i2, IntMap<T> intMap, IntMap<T> intMap2) {
        return new IntMap.Bin<>(i, i2, intMap, intMap2);
    }

    public final String toString() {
        return "Bin";
    }

    public <T> Option<Tuple4<Object, Object, IntMap<T>, IntMap<T>>> unapply(IntMap.Bin<T> bin) {
        return bin == null ? None$.MODULE$ : new Some(new Tuple4(BoxesRunTime.boxToInteger(bin.prefix()), BoxesRunTime.boxToInteger(bin.mask()), bin.left(), bin.right()));
    }
}
