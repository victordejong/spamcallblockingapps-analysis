package scala.collection.generic;

import scala.collection.GenTraversable;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParIterable;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001e3Q!\u0001\u0002\u0002\u0002%\u0011!\u0002U1s\r\u0006\u001cGo\u001c:z\u0015\t\u0019A!A\u0004hK:,'/[2\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2c\u0001\u0001\fYA\u0019A\"D\b\u000e\u0003\tI!A\u0004\u0002\u0003+\u001d+g\u000e\u0016:bm\u0016\u00148/\u00192mK\u001a\u000b7\r^8ssB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\t\u00195)\u0006\u0002\u0015GE\u0011Q#\u0007\t\u0003-]i\u0011AB\u0005\u00031\u0019\u0011qAT8uQ&twME\u0002\u001b9%2Aa\u0007\u0001\u00013\taAH]3gS:,W.\u001a8u}A\u0019Q\u0004\t\u0012\u000e\u0003yQ!a\b\u0003\u0002\u0011A\f'/\u00197mK2L!!\t\u0010\u0003\u0017A\u000b'/\u0013;fe\u0006\u0014G.\u001a\t\u0003!\r\"Q\u0001J\tC\u0002\u0015\u0012\u0011\u0001W\t\u0003+\u0019\u0002\"AF\u0014\n\u0005!2!aA!osB!AB\u000b\u0012\u0010\u0013\tY#A\u0001\nHK:,'/[2QCJ$V-\u001c9mCR,\u0007c\u0001\u0007.\u001f%\u0011aF\u0001\u0002\u0014\u000f\u0016tWM]5d!\u0006\u00148i\\7qC:LwN\u001c\u0005\u0006a\u0001!\t!M\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003I\u00022\u0001\u0004\u0001\u0010\r\u0011!\u0004\u0001A\u001b\u0003+\u001d+g.\u001a:jG\u000e\u000bgnQ8nE&tWM\u0012:p[V\u0011a\u0007P\n\u0004g]r\u0004c\u0001\u001d:w5\t\u0001!\u0003\u0002;\u001b\t\u0019r)\u001a8fe&\u001c7)\u00198Ck&dGM\u0012:p[B\u0011\u0001\u0003\u0010\u0003\u0006{M\u0012\r!\n\u0002\u0002\u0003B)AbP!<\r&\u0011\u0001I\u0001\u0002\u000f\u0007\u0006t7i\\7cS:,gI]8na\t\u0011E\tE\u0002\u0011#\r\u0003\"\u0001\u0005#\u0005\u0013\u0015\u001b\u0014\u0011!A\u0001\u0006\u0003)#aA0%cA\u0019\u0001#E\u001e\t\u000bA\u001aD\u0011\u0001%\u0015\u0003%\u00032\u0001O\u001a<\u0011\u0015Y5\u0007\"\u0011M\u0003\u0015\t\u0007\u000f\u001d7z)\ti\u0005\u000b\u0005\u0003\u001e\u001dn2\u0015BA(\u001f\u0005!\u0019u.\u001c2j]\u0016\u0014\b\"B)K\u0001\u0004\u0011\u0016\u0001\u00024s_6\u0004\"\u0001O*\n\u0005Q+&\u0001B\"pY2L!A\u0016\u0002\u0003!\u001d+g.\u001a:jG\u000e{W\u000e]1oS>t\u0007\"B&4\t\u0003BF#A'")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/ParFactory.class */
public abstract class ParFactory<CC extends ParIterable<Object>> extends GenTraversableFactory<CC> implements GenericParCompanion<CC> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/ParFactory$GenericCanCombineFrom.class */
    public class GenericCanCombineFrom<A> extends GenTraversableFactory<CC>.GenericCanBuildFrom<A> implements CanCombineFrom<CC, A, CC> {
        public GenericCanCombineFrom(ParFactory<CC> parFactory) {
            super(parFactory);
        }

        @Override // scala.collection.generic.GenTraversableFactory.GenericCanBuildFrom
        public /* bridge */ /* synthetic */ Builder apply(GenTraversable genTraversable) {
            return apply((GenericCanCombineFrom<A>) ((ParIterable) genTraversable));
        }

        @Override // scala.collection.generic.GenTraversableFactory.GenericCanBuildFrom, scala.collection.generic.CanBuildFrom
        public Combiner<A, CC> apply() {
            return (Combiner<A, CC>) m165xac275581().newBuilder();
        }

        public Combiner<A, CC> apply(CC cc) {
            return cc.genericCombiner();
        }

        /* renamed from: scala$collection$generic$ParFactory$GenericCanCombineFrom$$$outer */
        public /* synthetic */ ParFactory m165xac275581() {
            return (ParFactory) this.$outer;
        }
    }
}
