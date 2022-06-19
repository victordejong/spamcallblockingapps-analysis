package scala.collection.mutable;

import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import scala.Function1;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.mutable.AnyRefMap;
import scala.math.package$;
import scala.runtime.Nothing$;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AnyRefMap$.class */
public final class AnyRefMap$ {
    public static final AnyRefMap$ MODULE$ = null;
    private final int IndexMask;
    private final int MissVacant;
    private final int MissingBit;
    private final int VacantBit;
    private final Function1<Object, Nothing$> scala$collection$mutable$AnyRefMap$$exceptionDefault = new AnyRefMap$$anonfun$1();

    static {
        new AnyRefMap$();
    }

    private AnyRefMap$() {
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

    public <K, V> AnyRefMap<K, V> apply(Seq<Tuple2<K, V>> seq) {
        int size = seq.hasDefiniteSize() ? seq.size() : 4;
        AnyRefMap<K, V> anyRefMap = new AnyRefMap<>(size * 2);
        seq.foreach(new AnyRefMap$$anonfun$apply$1(anyRefMap));
        if (anyRefMap.size() < (size >> 3)) {
            anyRefMap.repack();
        }
        return anyRefMap;
    }

    public <K, V, J, U> CanBuildFrom<AnyRefMap<K, V>, Tuple2<J, U>, AnyRefMap<J, U>> canBuildFrom() {
        return new CanBuildFrom<AnyRefMap<K, V>, Tuple2<J, U>, AnyRefMap<J, U>>() { // from class: scala.collection.mutable.AnyRefMap$$anon$2
            @Override // scala.collection.generic.CanBuildFrom
            public AnyRefMap.AnyRefMapBuilder<J, U> apply() {
                return new AnyRefMap.AnyRefMapBuilder<>();
            }

            public AnyRefMap.AnyRefMapBuilder<J, U> apply(AnyRefMap<K, V> anyRefMap) {
                return apply();
            }
        };
    }

    public <K, V> AnyRefMap<K, V> empty() {
        return new AnyRefMap<>();
    }

    public <K, V> AnyRefMap<K, V> fromZip(Iterable<K> iterable, Iterable<V> iterable2) {
        int min = package$.MODULE$.min(iterable.size(), iterable2.size());
        AnyRefMap<K, V> anyRefMap = new AnyRefMap<>(min * 2);
        Iterator<K> it = iterable.iterator();
        Iterator<V> it2 = iterable2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            anyRefMap.update(it.next(), it2.next());
        }
        if (anyRefMap.size() < (min >> 3)) {
            anyRefMap.repack();
        }
        return anyRefMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K, V> AnyRefMap<K, V> fromZip(K[] kArr, Object obj) {
        int min = package$.MODULE$.min(kArr.length, ScalaRunTime$.MODULE$.array_length(obj));
        AnyRefMap<K, V> anyRefMap = (AnyRefMap<K, V>) new AnyRefMap(min * 2);
        for (int i = 0; i < min; i++) {
            anyRefMap.update(kArr[i], ScalaRunTime$.MODULE$.array_apply(obj, i));
        }
        if (anyRefMap.size() < (min >> 3)) {
            anyRefMap.repack();
        }
        return anyRefMap;
    }

    public Function1<Object, Nothing$> scala$collection$mutable$AnyRefMap$$exceptionDefault() {
        return this.scala$collection$mutable$AnyRefMap$$exceptionDefault;
    }

    public <K, V> AnyRefMap<K, V> withDefault(Function1<K, V> function1) {
        return new AnyRefMap<>(function1);
    }
}
