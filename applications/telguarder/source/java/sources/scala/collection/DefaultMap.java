package scala.collection;

import scala.Tuple2;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001e2\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005q\u0001\u000f\u0002\u000b\t\u00164\u0017-\u001e7u\u001b\u0006\u0004(BA\u0002\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001Qc\u0001\u0005\u0014;M\u0019\u0001!C\u0007\u0011\u0005)YQ\"\u0001\u0003\n\u00051!!AB!osJ+g\r\u0005\u0003\u000f\u001fEaR\"\u0001\u0002\n\u0005A\u0011!aA'baB\u0011!c\u0005\u0007\u0001\t\u0015!\u0002A1\u0001\u0016\u0005\u0005\t\u0015C\u0001\f\u001a!\tQq#\u0003\u0002\u0019\t\t9aj\u001c;iS:<\u0007C\u0001\u0006\u001b\u0013\tYBAA\u0002B]f\u0004\"AE\u000f\u0005\ry\u0001AQ1\u0001\u0016\u0005\u0005\u0011\u0005\"\u0002\u0011\u0001\t\u0003\t\u0013A\u0002\u0013j]&$H\u0005F\u0001#!\tQ1%\u0003\u0002%\t\t!QK\\5u\u0011\u00151\u0003\u0001\"\u0011(\u0003\u0015!\u0003\u000f\\;t+\tA3\u0006\u0006\u0002*]A!abD\t+!\t\u00112\u0006B\u0003-K\t\u0007QF\u0001\u0002CcE\u0011A$\u0007\u0005\u0006_\u0015\u0002\r\u0001M\u0001\u0003WZ\u0004BAC\u0019\u0012U%\u0011!\u0007\u0002\u0002\u0007)V\u0004H.\u001a\u001a\t\u000bQ\u0002A\u0011I\u001b\u0002\r\u0011j\u0017N\\;t)\tia\u0007C\u00038g\u0001\u0007\u0011#A\u0002lKf\u0004BA\u0004\u0001\u00129\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/DefaultMap.class */
public interface DefaultMap<A, B> extends Map<A, B> {

    /* renamed from: scala.collection.DefaultMap$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/DefaultMap$class.class */
    public abstract class Cclass {
        public static void $init$(DefaultMap defaultMap) {
        }

        public static Map $minus(DefaultMap defaultMap, Object obj) {
            Builder<Tuple2<A, B>, This> newBuilder = defaultMap.newBuilder();
            newBuilder.$plus$plus$eq((TraversableOnce) defaultMap.filter(new DefaultMap$$anonfun$$minus$1(defaultMap, obj)));
            return (Map) newBuilder.result();
        }

        public static Map $plus(DefaultMap defaultMap, Tuple2 tuple2) {
            Builder<Tuple2<A, B>, CC> newBuilder = Map$.MODULE$.newBuilder();
            newBuilder.$plus$plus$eq(defaultMap);
            newBuilder.$plus$eq((Builder<Tuple2<A, B>, CC>) new Tuple2<>(tuple2.mo269_1(), tuple2.mo268_2()));
            return (Map) newBuilder.result();
        }
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    Map<A, B> $minus(A a);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2);
}
