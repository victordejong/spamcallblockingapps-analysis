package scala.collection.mutable;

import scala.Tuple2;
import scala.collection.convert.Wrappers;
import scala.collection.convert.Wrappers$;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Subtractable;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001-4A!\u0001\u0002\u0001\u0013\tYq+Z1l\u0011\u0006\u001c\b.T1q\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007)QReE\u0002\u0001\u0017\u001d\u0002B\u0001\u0004\u000b\u0019I9\u0011Q\"\u0005\b\u0003\u001d=i\u0011\u0001B\u0005\u0003!\u0011\tqaY8om\u0016\u0014H/\u0003\u0002\u0013'\u0005AqK]1qa\u0016\u00148O\u0003\u0002\u0011\t%\u0011QC\u0006\u0002\f\u00156\u000b\u0007o\u0016:baB,'/\u0003\u0002\u0018'\tAqK]1qa\u0016\u00148\u000f\u0005\u0002\u001a51\u0001A!B\u000e\u0001\u0005\u0004a\"!A!\u0012\u0005u\t\u0003C\u0001\u0010 \u001b\u00051\u0011B\u0001\u0011\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\b\u0012\n\u0005\r2!aA!osB\u0011\u0011$\n\u0003\u0006M\u0001\u0011\r\u0001\b\u0002\u0002\u0005B)A\u0002\u000b\r%U%\u0011\u0011F\u0006\u0002\u0010\u00156\u000b\u0007o\u0016:baB,'\u000fT5lKB!1\u0006\u0001\r%\u001b\u0005\u0011\u0001\"B\u0017\u0001\t\u0003q\u0013A\u0002\u001fj]&$h\bF\u0001+\u0011\u0015\u0001\u0004\u0001\"\u00112\u0003\u0015)W\u000e\u001d;z+\u0005Qs!B\u001a\u0003\u0011\u0003!\u0014aC,fC.D\u0015m\u001d5NCB\u0004\"aK\u001b\u0007\u000b\u0005\u0011\u0001\u0012\u0001\u001c\u0014\u0007U:d\bE\u00029wuj\u0011!\u000f\u0006\u0003u\u0011\tqaZ3oKJL7-\u0003\u0002=s\t\tR*\u001e;bE2,W*\u00199GC\u000e$xN]=\u0011\u0005-\u0002\u0001C\u0001\u0010@\u0013\t\u0001eA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0003.k\u0011\u0005!\tF\u00015\u0011\u0015!U\u0007b\u0001F\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\r1EKV\u000b\u0002\u000fB)\u0001\b\u0013&Q/&\u0011\u0011*\u000f\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u0003\u00172k\u0011!N\u0005\u0003\u001b:\u0013AaQ8mY&\u0011q*\u000f\u0002\u000e\u000f\u0016tW*\u00199GC\u000e$xN]=\u0011\ty\t6+V\u0005\u0003%\u001a\u0011a\u0001V;qY\u0016\u0014\u0004CA\rU\t\u0015Y2I1\u0001\u001d!\tIb\u000bB\u0003'\u0007\n\u0007A\u0004\u0005\u0003,\u0001M+\u0006\"\u0002\u00196\t\u0003IVc\u0001.^?V\t1\f\u0005\u0003,\u0001qs\u0006CA\r^\t\u0015Y\u0002L1\u0001\u001d!\tIr\fB\u0003'1\n\u0007A\u0004C\u0004bk\u0005\u0005I\u0011\u00022\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0002GB\u0011A-[\u0007\u0002K*\u0011amZ\u0001\u0005Y\u0006twMC\u0001i\u0003\u0011Q\u0017M^1\n\u0005),'AB(cU\u0016\u001cG\u000f")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/WeakHashMap.class */
public class WeakHashMap<A, B> extends Wrappers.JMapWrapper<A, B> {
    public WeakHashMap() {
        super(Wrappers$.MODULE$, new java.util.WeakHashMap());
    }

    public static <A, B> CanBuildFrom<WeakHashMap<?, ?>, Tuple2<A, B>, WeakHashMap<A, B>> canBuildFrom() {
        return WeakHashMap$.MODULE$.canBuildFrom();
    }

    @Override // scala.collection.convert.Wrappers.JMapWrapper, scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public WeakHashMap<A, B> empty() {
        return new WeakHashMap<>();
    }

    @Override // scala.collection.convert.Wrappers.JMapWrapper, scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }
}
