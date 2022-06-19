package scala.collection.mutable;

import scala.Function0;
import scala.Function2;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.mutable.Map;
import scala.collection.mutable.MapLike;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParMap;
import scala.collection.parallel.mutable.ParMap$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005eg\u0001C\u0001\u0003!\u0003\r\t!C\u0014\u0003\u000f5\u000b\u0007\u000fT5lK*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\u0011QACH\u0011\u0014\u0011\u0001Yq\u0002\f\u001a9wy\u0002\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\u0015\u0001\u0012CE\u000f!\u001b\u0005!\u0011BA\u0001\u0005!\t\u0019B\u0003\u0004\u0001\u0005\u000bU\u0001!\u0019\u0001\f\u0003\u0003\u0005\u000b\"a\u0006\u000e\u0011\u00051A\u0012BA\r\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001D\u000e\n\u0005q1!aA!osB\u00111C\b\u0003\u0006?\u0001\u0011\rA\u0006\u0002\u0002\u0005B\u00111#\t\u0003\u0007E\u0001!)\u0019A\u0012\u0003\tQC\u0017n]\t\u0003/\u0011\u00122!J\u0014*\r\u00111\u0003\u0001\u0001\u0013\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u000b!\u0002!#\b\u0011\u000e\u0003\t\u0001B\u0001\u000b\u0016\u0013;%\u00111F\u0001\u0002\u0004\u001b\u0006\u0004\b\u0003\u0002\u0015._\u0001J!A\f\u0002\u0003\u000f\t+\u0018\u000e\u001c3feB!A\u0002\r\n\u001e\u0013\t\tdA\u0001\u0004UkBdWM\r\t\u0004gYzS\"\u0001\u001b\u000b\u0005U\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003oQ\u0012\u0001b\u0012:po\u0006\u0014G.\u001a\t\u0004ge\u0012\u0012B\u0001\u001e5\u0005)\u0019\u0006N]5oW\u0006\u0014G.\u001a\t\u0004Qq\u0002\u0013BA\u001f\u0003\u0005%\u0019En\u001c8fC\ndW\r\u0005\u0003\u0011\u007f=\n\u0015B\u0001!\u0005\u00059\u0001\u0016M]1mY\u0016d\u0017N_1cY\u0016\u0004BA\u0011$\u0013;5\t1I\u0003\u0002\u0004\t*\u0011Q\tB\u0001\ta\u0006\u0014\u0018\r\u001c7fY&\u0011qi\u0011\u0002\u0007!\u0006\u0014X*\u00199\t\u000b%\u0003A\u0011\u0001&\u0002\r\u0011Jg.\u001b;%)\u0005Y\u0005C\u0001\u0007M\u0013\tieA\u0001\u0003V]&$\bBB(\u0001A\u0013E\u0003+\u0001\u0006oK^\u0014U/\u001b7eKJ,\u0012\u0001\f\u0005\u0007%\u0002\u0001K\u0011K*\u0002\u0017A\f'oQ8nE&tWM]\u000b\u0002)B!QKV\u0018B\u001b\u0005!\u0015BA,E\u0005!\u0019u.\u001c2j]\u0016\u0014\b\"B-\u0001\t\u0003Q\u0016a\u00019viR\u00191L\u00181\u0011\u00071aV$\u0003\u0002^\r\t1q\n\u001d;j_:DQa\u0018-A\u0002I\t1a[3z\u0011\u0015\t\u0007\f1\u0001\u001e\u0003\u00151\u0018\r\\;f\u0011\u0015\u0019\u0007\u0001\"\u0001e\u0003\u0019)\b\u000fZ1uKR\u00191*\u001a4\t\u000b}\u0013\u0007\u0019\u0001\n\t\u000b\u0005\u0014\u0007\u0019A\u000f\t\u000b!\u0004a\u0011A5\u0002\u0011\u0011\u0002H.^:%KF$\"A[6\u000e\u0003\u0001AQ\u0001\\4A\u0002=\n!a\u001b<\t\u000b9\u0004A\u0011I8\u0002\u000fU\u0004H-\u0019;fIV\u0011\u0001o\u001d\u000b\u0004cZ<\b\u0003\u0002\u0015+%I\u0004\"aE:\u0005\u000bQl'\u0019A;\u0003\u0005\t\u000b\u0014CA\u000f\u001b\u0011\u0015yV\u000e1\u0001\u0013\u0011\u0015\tW\u000e1\u0001s\u0011\u0015I\b\u0001\"\u0001{\u0003\u0015!\u0003\u000f\\;t+\tYh\u0010\u0006\u0002}\u007fB!\u0001F\u000b\n~!\t\u0019b\u0010B\u0003uq\n\u0007Q\u000f\u0003\u0004mq\u0002\u0007\u0011\u0011\u0001\t\u0005\u0019A\u0012R\u0010K\u0004y\u0003\u000b\t\t\"!\u0006\u0011\t\u0005\u001d\u0011QB\u0007\u0003\u0003\u0013Q1!a\u0003\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0005\u0003\u001f\tIAA\u0005nS\u001e\u0014\u0018\r^5p]\u0006\u0012\u00111C\u0001ZA.\u0002\u0007e\u0019:fCR,7\u000fI1!]\u0016<\b%\\1q]\u0001*6/\u001a\u0011aWu\u0002\u0007\u0005^8!C\u0012$\u0007%\u00198!K2,W.\u001a8uAQ|\u0007\u0005\u001e5jg\u0002j\u0017\r\u001d\u0011b]\u0012\u0004#/\u001a;ve:\u0004C\u000f[1uA5\f\u0007\u000fI5ug\u0016dgML\u0011\u0003\u0003/\tQA\r\u00189]ABa!\u001f\u0001\u0005B\u0005mQ\u0003BA\u000f\u0003G!\u0002\"a\b\u0002&\u0005-\u0012q\u0006\t\u0006Q)\u0012\u0012\u0011\u0005\t\u0004'\u0005\rBA\u0002;\u0002\u001a\t\u0007Q\u000f\u0003\u0005\u0002(\u0005e\u0001\u0019AA\u0015\u0003\u0015)G.Z72!\u0015a\u0001GEA\u0011\u0011!\ti#!\u0007A\u0002\u0005%\u0012!B3mK6\u0014\u0004\u0002CA\u0019\u00033\u0001\r!a\r\u0002\u000b\u0015dW-\\:\u0011\u000b1\t)$!\u000b\n\u0007\u0005]bA\u0001\u0006=e\u0016\u0004X-\u0019;fIzB\u0003\"!\u0007\u0002\u0006\u0005E\u0011Q\u0003\u0005\b\u0003{\u0001A\u0011IA \u0003)!\u0003\u000f\\;tIAdWo]\u000b\u0005\u0003\u0003\n9\u0005\u0006\u0003\u0002D\u0005%\u0003#\u0002\u0015+%\u0005\u0015\u0003cA\n\u0002H\u00111A/a\u000fC\u0002UD\u0001\"a\u0013\u0002<\u0001\u0007\u0011QJ\u0001\u0003qN\u0004R\u0001EA(\u0003'J1!!\u0015\u0005\u0005I9UM\u001c+sCZ,'o]1cY\u0016|enY3\u0011\u000b1\u0001$#!\u0012)\u0011\u0005m\u0012QAA,\u0003+\t#!!\u0017\u00027\u0002\\3\u0006\u0019\u0011de\u0016\fG/Z:!C\u0002rWm\u001e\u0011nCBt\u0003%V:fA\u0001\\3&\u00101!i>\u0004\u0013\r\u001a3!C:\u0004S\r\\3nK:$\b\u0005^8!i\"L7\u000fI7ba\u0002\ng\u000e\u001a\u0011sKR,(O\u001c\u0011uQ\u0006$\b%\\1qA%$8/\u001a7g]!9\u0011Q\f\u0001\u0005\u0002\u0005}\u0013A\u0002:f[>4X\rF\u0002\\\u0003CBaaXA.\u0001\u0004\u0011\u0002bBA3\u0001\u0019\u0005\u0011qM\u0001\nI5Lg.^:%KF$2A[A5\u0011\u0019y\u00161\ra\u0001%!9\u0011Q\u000e\u0001\u0005B\u0005=\u0014A\u0002\u0013nS:,8\u000fF\u0002!\u0003cBaaXA6\u0001\u0004\u0011\u0002\u0006CA6\u0003\u000b\t)(!\u0006\"\u0005\u0005]\u0014A\u00181.A\u0002\u001a'/Z1uKN\u0004\u0013\r\t8fo\u0002j\u0017\r\u001d\u0018!+N,\u0007\u0005Y\u0017>A\u0002\"x\u000e\t:f[>4X\rI1oA\u0015dW-\\3oi\u00022'o\\7!i\"L7\u000fI7ba\u0002\ng\u000e\u001a\u0011sKR,(O\u001c\u0011uQ\u0006$\b%\\1qA%$8/\u001a7g]!1\u00111\u0010\u0001\u0005\u0002)\u000bQa\u00197fCJDq!a \u0001\t\u0003\t\t)A\bhKR|%/\u00127tKV\u0003H-\u0019;f)\u0015i\u00121QAC\u0011\u0019y\u0016Q\u0010a\u0001%!I\u0011qQA?\t\u0003\u0007\u0011\u0011R\u0001\u0003_B\u0004B\u0001DAF;%\u0019\u0011Q\u0012\u0004\u0003\u0011q\u0012\u0017P\\1nKzBq!!%\u0001\t\u0003\t\u0019*A\u0005ue\u0006t7OZ8s[R\u0019!.!&\t\u0011\u0005]\u0015q\u0012a\u0001\u00033\u000b\u0011A\u001a\t\u0007\u0019\u0005m%#H\u000f\n\u0007\u0005ueAA\u0005Gk:\u001cG/[8oe!9\u0011\u0011\u0015\u0001\u0005\u0002\u0005\r\u0016A\u0002:fi\u0006Lg\u000eF\u0002k\u0003KC\u0001\"a*\u0002 \u0002\u0007\u0011\u0011V\u0001\u0002aB9A\"a'\u0013;\u0005-\u0006c\u0001\u0007\u0002.&\u0019\u0011q\u0016\u0004\u0003\u000f\t{w\u000e\\3b]\"9\u00111\u0017\u0001\u0005B\u0005U\u0016!B2m_:,G#\u0001\u0011\t\u000f\u0005e\u0006\u0001\"\u0001\u00026\u00061!/Z:vYRDq!!\u001c\u0001\t\u0003\ni\fF\u0004!\u0003\u007f\u000b\t-a1\t\u000f\u0005\u001d\u00121\u0018a\u0001%!9\u0011QFA^\u0001\u0004\u0011\u0002\u0002CA\u0019\u0003w\u0003\r!!2\u0011\t1\t)D\u0005\u0015\t\u0003w\u000b)!!\u001e\u0002\u0016!9\u00111\u001a\u0001\u0005B\u00055\u0017\u0001\u0004\u0013nS:,8\u000fJ7j]V\u001cHc\u0001\u0011\u0002P\"A\u00111JAe\u0001\u0004\t\t\u000e\u0005\u0003\u0011\u0003\u001f\u0012\u0002\u0006CAe\u0003\u000b\t).!\u0006\"\u0005\u0005]\u0017\u0001\u00191.[\u0001\u00043M]3bi\u0016\u001c\b%\u0019\u0011oK^\u0004S.\u00199/AU\u001bX\r\t1.[u\u0002\u0007\u0005^8!e\u0016lwN^3!C:\u0004S\r\\3nK:$\bE\u001a:p[\u0002\"\b.[:![\u0006\u0004\b%\u00198eAI,G/\u001e:oAQD\u0017\r\u001e\u0011nCB\u0004\u0013\u000e^:fY\u001at\u0003")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MapLike.class */
public interface MapLike<A, B, This extends MapLike<A, B, This> & Map<A, B>> extends scala.collection.MapLike<A, B, This>, Builder<Tuple2<A, B>, This>, Shrinkable<A>, Cloneable<This> {

    /* renamed from: scala.collection.mutable.MapLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MapLike$class.class */
    public abstract class Cclass {
        public static void $init$(MapLike mapLike) {
        }

        public static Map $minus(MapLike mapLike, Object obj) {
            return (Map) mapLike.clone().$minus$eq((Map) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Map $minus(MapLike mapLike, Object obj, Object obj2, Seq seq) {
            return (Map) mapLike.clone().$minus$eq((Map) obj).$minus$eq((MapLike<A, B, This>) obj2).$minus$minus$eq(seq);
        }

        public static Map $minus$minus(MapLike mapLike, GenTraversableOnce genTraversableOnce) {
            return (Map) mapLike.clone().$minus$minus$eq(genTraversableOnce.seq());
        }

        public static Map $plus(MapLike mapLike, Tuple2 tuple2) {
            return (Map) mapLike.clone().$plus$eq(tuple2);
        }

        public static Map $plus(MapLike mapLike, Tuple2 tuple2, Tuple2 tuple22, Seq seq) {
            return (Map) mapLike.clone().$plus$eq(tuple2).$plus$eq(tuple22).$plus$plus$eq(seq);
        }

        public static Map $plus$plus(MapLike mapLike, GenTraversableOnce genTraversableOnce) {
            return (Map) mapLike.clone().$plus$plus$eq(genTraversableOnce.seq());
        }

        public static void clear(MapLike mapLike) {
            mapLike.keysIterator().foreach(new MapLike$$anonfun$clear$1(mapLike));
        }

        public static Map clone(MapLike mapLike) {
            return (Map) ((Growable) mapLike.empty()).$plus$plus$eq((TraversableOnce) mapLike.repr());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Object getOrElseUpdate(MapLike mapLike, Object obj, Function0 function0) {
            Object obj2;
            Option option = mapLike.get(obj);
            if (option instanceof Some) {
                obj2 = ((Some) option).m362x();
            } else if (!None$.MODULE$.equals(option)) {
                throw new MatchError(option);
            } else {
                Object apply = function0.apply();
                mapLike.update(obj, apply);
                obj2 = apply;
            }
            return obj2;
        }

        public static Builder newBuilder(MapLike mapLike) {
            return (Builder) mapLike.empty();
        }

        public static Combiner parCombiner(MapLike mapLike) {
            return ParMap$.MODULE$.newCombiner();
        }

        public static Option put(MapLike mapLike, Object obj, Object obj2) {
            Option<B> option = mapLike.get(obj);
            mapLike.update(obj, obj2);
            return option;
        }

        public static Option remove(MapLike mapLike, Object obj) {
            Option<B> option = mapLike.get(obj);
            mapLike.$minus$eq((MapLike) obj);
            return option;
        }

        public static Map result(MapLike mapLike) {
            return (Map) mapLike.repr();
        }

        public static MapLike retain(MapLike mapLike, Function2 function2) {
            mapLike.toList().withFilter(new MapLike$$anonfun$retain$1(mapLike)).foreach(new MapLike$$anonfun$retain$2(mapLike, function2));
            return mapLike;
        }

        public static MapLike transform(MapLike mapLike, Function2 function2) {
            mapLike.iterator().foreach(new MapLike$$anonfun$transform$1(mapLike, function2));
            return mapLike;
        }

        public static void update(MapLike mapLike, Object obj, Object obj2) {
            mapLike.$plus$eq((Tuple2) new Tuple2<>(obj, obj2));
        }

        public static Map updated(MapLike mapLike, Object obj, Object obj2) {
            return mapLike.$plus(new Tuple2(obj, obj2));
        }
    }

    @Override // scala.collection.MapLike, scala.collection.generic.Subtractable
    This $minus(A a);

    @Override // scala.collection.generic.Subtractable
    This $minus(A a, A a2, Seq<A> seq);

    MapLike<A, B, This> $minus$eq(A a);

    @Override // scala.collection.generic.Subtractable
    This $minus$minus(GenTraversableOnce<A> genTraversableOnce);

    @Override // scala.collection.MapLike
    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2);

    @Override // scala.collection.MapLike
    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq);

    MapLike<A, B, This> $plus$eq(Tuple2<A, B> tuple2);

    @Override // scala.collection.MapLike
    <B1> Map<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce);

    void clear();

    This clone();

    B getOrElseUpdate(A a, Function0<B> function0);

    @Override // scala.collection.MapLike
    Builder<Tuple2<A, B>, This> newBuilder();

    @Override // scala.collection.MapLike, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner();

    Option<B> put(A a, B b);

    Option<B> remove(A a);

    This result();

    MapLike<A, B, This> retain(Function2<A, B, Object> function2);

    MapLike<A, B, This> transform(Function2<A, B, B> function2);

    void update(A a, B b);

    @Override // scala.collection.MapLike
    <B1> Map<A, B1> updated(A a, B1 b1);
}
