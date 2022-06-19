package scala.runtime;

import scala.collection.immutable.NumericRange;
import scala.collection.immutable.NumericRange$;
import scala.collection.immutable.Range;
import scala.math.Fractional;
import scala.math.Integral;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u001d4q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\bGe\u0006\u001cG/[8oC2\u0004&o\u001c=z\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\t'M!\u0001!C\u0007\u001a!\tQ1\"D\u0001\u0005\u0013\taAAA\u0002B]f\u00042AD\b\u0012\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005A\u00196-\u00197b\u001dVl'-\u001a:Qe>D\u0018\u0010\u0005\u0002\u0013'1\u0001A!\u0002\u000b\u0001\u0005\u0004)\"!\u0001+\u0012\u0005YI\u0001C\u0001\u0006\u0018\u0013\tABAA\u0004O_RD\u0017N\\4\u0011\u00079Q\u0012#\u0003\u0002\u001c\u0005\tY!+\u00198hK\u0012\u0004&o\u001c=z\u0011\u0015i\u0002\u0001\"\u0001\u001f\u0003\u0019!\u0013N\\5uIQ\tq\u0004\u0005\u0002\u000bA%\u0011\u0011\u0005\u0002\u0002\u0005+:LG\u000fC\u0003$\u0001\u0019MA%A\u0002ok6,\u0012!\n\t\u0004M%\nbB\u0001\u0006(\u0013\tAC!A\u0004qC\u000e\\\u0017mZ3\n\u0005)Z#A\u0003$sC\u000e$\u0018n\u001c8bY*\u0011\u0001\u0006\u0002\u0005\u0006[\u00011\u0019BL\u0001\fS:$Xm\u001a:bY:+X.F\u00010!\r1\u0003'E\u0005\u0003c-\u0012\u0001\"\u00138uK\u001e\u0014\u0018\r\\\u0003\u0005g\u0001\u0001AGA\tSKN,H\u000e^,ji\"|W\u000f^*uKB\u0004B!\u000e\u001d\u0012\u007f9\u0011aEN\u0005\u0003o-\nQAU1oO\u0016L!!\u000f\u001e\u0003\u000fA\u000b'\u000f^5bY*\u0011qg\u000f\u0006\u0003yu\n\u0011\"[7nkR\f'\r\\3\u000b\u0005y\"\u0011AC2pY2,7\r^5p]B\u0019\u0001)Q\t\u000e\u0003mJ!AQ\u001e\u0003\u00199+X.\u001a:jGJ\u000bgnZ3\t\u000b\u0011\u0003A\u0011A#\u0002\u000f%\u001cx\u000b[8mKR\ta\t\u0005\u0002\u000b\u000f&\u0011\u0001\n\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015Q\u0005\u0001\"\u0001L\u0003\u0015)h\u000e^5m)\tae\n\u0005\u0002Ne5\t\u0001\u0001C\u0003P\u0013\u0002\u0007\u0011#A\u0002f]\u0012DQA\u0013\u0001\u0005\u0002E#2AU-[!\r\u0019f+\u0005\b\u0003\u0001RK!!V\u001e\u0002\u00199+X.\u001a:jGJ\u000bgnZ3\n\u0005]C&!C#yG2,8/\u001b<f\u0015\t)6\bC\u0003P!\u0002\u0007\u0011\u0003C\u0003\\!\u0002\u0007\u0011#\u0001\u0003ti\u0016\u0004\b\"B/\u0001\t\u0003q\u0016A\u0001;p)\tau\fC\u0003P9\u0002\u0007\u0011\u0003C\u0003^\u0001\u0011\u0005\u0011\rF\u0002cK\u001a\u00042aU2\u0012\u0013\t!\u0007LA\u0005J]\u000edWo]5wK\")q\n\u0019a\u0001#!)1\f\u0019a\u0001#\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/FractionalProxy.class */
public interface FractionalProxy<T> extends ScalaNumberProxy<T>, RangedProxy<T> {

    /* renamed from: scala.runtime.FractionalProxy$class */
    /* loaded from: classes3-dex2jar.jar:scala/runtime/FractionalProxy$class.class */
    public abstract class Cclass {
        public static void $init$(FractionalProxy fractionalProxy) {
        }

        public static boolean isWhole(FractionalProxy fractionalProxy) {
            return false;
        }

        /* renamed from: to */
        public static NumericRange.Inclusive m26to(FractionalProxy fractionalProxy, Object obj, Object obj2) {
            return NumericRange$.MODULE$.inclusive(fractionalProxy.self(), obj, obj2, fractionalProxy.integralNum());
        }

        /* renamed from: to */
        public static Range.Partial m27to(FractionalProxy fractionalProxy, Object obj) {
            return new Range.Partial(new FractionalProxy$$anonfun$to$1(fractionalProxy, obj));
        }

        public static NumericRange.Exclusive until(FractionalProxy fractionalProxy, Object obj, Object obj2) {
            return NumericRange$.MODULE$.apply(fractionalProxy.self(), obj, obj2, fractionalProxy.integralNum());
        }

        public static Range.Partial until(FractionalProxy fractionalProxy, Object obj) {
            return new Range.Partial(new FractionalProxy$$anonfun$until$1(fractionalProxy, obj));
        }
    }

    Integral<T> integralNum();

    @Override // scala.math.ScalaNumericAnyConversions
    boolean isWhole();

    @Override // scala.runtime.ScalaNumberProxy
    Fractional<T> num();

    @Override // scala.runtime.RangedProxy
    /* renamed from: to */
    NumericRange.Inclusive<T> mo20to(T t, T t2);

    @Override // scala.runtime.RangedProxy
    /* renamed from: to */
    Range.Partial<T, NumericRange<T>> mo21to(T t);

    @Override // scala.runtime.RangedProxy
    NumericRange.Exclusive<T> until(T t, T t2);

    @Override // scala.runtime.RangedProxy
    Range.Partial<T, NumericRange<T>> until(T t);
}
