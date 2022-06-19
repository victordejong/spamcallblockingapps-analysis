package scala.collection.mutable;

import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import scala.Function1;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.LongMap;
import scala.math.package$;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LongMap$.class */
public final class LongMap$ implements Serializable {
    public static final LongMap$ MODULE$ = null;
    private final int IndexMask;
    private final int MissVacant;
    private final int MissingBit;
    private final int VacantBit;
    private final Function1<Object, Nothing$> scala$collection$mutable$LongMap$$exceptionDefault = new LongMap$$anonfun$1();

    static {
        new LongMap$();
    }

    private LongMap$() {
        MODULE$ = this;
    }

    private final int IndexMask() {
        return 1073741823;
    }

    private final int MissVacant() {
        return -1073741824;
    }

    private final int MissingBit() {
        return Integer.MIN_VALUE;
    }

    private final int VacantBit() {
        return BasicMeasure.EXACTLY;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <V> LongMap<V> apply(Seq<Tuple2<Object, V>> seq) {
        int size = seq.hasDefiniteSize() ? seq.size() : 4;
        LongMap<V> longMap = new LongMap<>(size * 2);
        seq.foreach(new LongMap$$anonfun$apply$1(longMap));
        if (longMap.size() < (size >> 3)) {
            longMap.repack();
        }
        return longMap;
    }

    public <V, U> CanBuildFrom<LongMap<V>, Tuple2<Object, U>, LongMap<U>> canBuildFrom() {
        return new CanBuildFrom<LongMap<V>, Tuple2<Object, U>, LongMap<U>>() { // from class: scala.collection.mutable.LongMap$$anon$2
            @Override // scala.collection.generic.CanBuildFrom
            public LongMap.LongMapBuilder<U> apply() {
                return new LongMap.LongMapBuilder<>();
            }

            public LongMap.LongMapBuilder<U> apply(LongMap<V> longMap) {
                return apply();
            }
        };
    }

    public <V> LongMap<V> empty() {
        return new LongMap<>();
    }

    public <V> LongMap<V> fromZip(Iterable<Object> iterable, Iterable<V> iterable2) {
        int min = package$.MODULE$.min(iterable.size(), iterable2.size());
        LongMap<V> longMap = new LongMap<>(min * 2);
        Iterator<Object> it = iterable.iterator();
        Iterator<V> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            longMap.update(BoxesRunTime.unboxToLong(it.next()), (long) it2.next());
        }
        if (longMap.size() < (min >> 3)) {
            longMap.repack();
        }
        return longMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <V> LongMap<V> fromZip(long[] jArr, Object obj) {
        int min = package$.MODULE$.min(jArr.length, ScalaRunTime$.MODULE$.array_length(obj));
        LongMap<V> longMap = (LongMap<V>) new LongMap(min * 2);
        for (int i = 0; i < min; i++) {
            longMap.update(jArr[i], (long) ScalaRunTime$.MODULE$.array_apply(obj, i));
        }
        if (longMap.size() < (min >> 3)) {
            longMap.repack();
        }
        return longMap;
    }

    public Function1<Object, Nothing$> scala$collection$mutable$LongMap$$exceptionDefault() {
        return this.scala$collection$mutable$LongMap$$exceptionDefault;
    }

    public <V> LongMap<V> withDefault(Function1<Object, V> function1) {
        return new LongMap<>(function1);
    }
}
