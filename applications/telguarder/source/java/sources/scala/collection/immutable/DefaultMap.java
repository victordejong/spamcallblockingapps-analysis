package scala.collection.immutable;

import scala.Tuple2;
import scala.collection.mutable.Builder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001m2\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u000f\u0002\u000b\t\u00164\u0017-\u001e7u\u001b\u0006\u0004(BA\u0002\u0005\u0003%IW.\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000b+}\u00192\u0001A\u0006\u0010!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0005!E\u0019b$D\u0001\u0003\u0013\t\u0011\"AA\u0002NCB\u0004\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\bC\u0001\u000b \t\u0019\u0001\u0003\u0001\"b\u0001/\t\t!\tC\u0003#\u0001\u0011\u00051%\u0001\u0004%S:LG\u000f\n\u000b\u0002IA\u0011A\"J\u0005\u0003M\u0019\u0011A!\u00168ji\")\u0001\u0006\u0001C!S\u0005)A\u0005\u001d7vgV\u0011!&\f\u000b\u0003WA\u0002B\u0001E\t\u0014YA\u0011A#\f\u0003\u0006]\u001d\u0012\ra\f\u0002\u0003\u0005F\n\"AH\u000e\t\u000bE:\u0003\u0019\u0001\u001a\u0002\u0005-4\b\u0003\u0002\u00074'1J!\u0001\u000e\u0004\u0003\rQ+\b\u000f\\33\u0011\u00151\u0004\u0001\"\u00118\u0003\u0019!S.\u001b8vgR\u0011q\u0002\u000f\u0005\u0006sU\u0002\raE\u0001\u0004W\u0016L\b\u0003\u0002\t\u0001'y\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/DefaultMap.class */
public interface DefaultMap<A, B> extends Map<A, B> {

    /* renamed from: scala.collection.immutable.DefaultMap$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/DefaultMap$class.class */
    public abstract class Cclass {
        public static void $init$(DefaultMap defaultMap) {
        }

        public static Map $minus(DefaultMap defaultMap, Object obj) {
            Builder<Tuple2<A, B>, This> newBuilder = defaultMap.newBuilder();
            defaultMap.withFilter(new DefaultMap$$anonfun$$minus$1(defaultMap, obj)).foreach(new DefaultMap$$anonfun$$minus$2(defaultMap, newBuilder));
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

    @Override // scala.collection.immutable.Map, scala.collection.GenMapLike, scala.collection.MapLike
    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2);
}
