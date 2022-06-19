package scala.collection;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001=4q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u0006Ue\u00064XM]:bE2,'BA\u0002\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0014'\u0019\u0001\u0011\"D\u000f!GA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\t9y\u0011\u0003H\u0007\u0002\u0005%\u0011\u0001C\u0001\u0002\u0010)J\fg/\u001a:tC\ndW\rT5lKB\u0011!c\u0005\u0007\u0001\t\u0019!\u0002\u0001\"b\u0001+\t\t\u0011)\u0005\u0002\u00173A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b5%\u00111\u0004\u0002\u0002\u0004\u0003:L\bc\u0001\b\u0001#A\u0019aBH\t\n\u0005}\u0011!AD$f]R\u0013\u0018M^3sg\u0006\u0014G.\u001a\t\u0004\u001d\u0005\n\u0012B\u0001\u0012\u0003\u0005=!&/\u0019<feN\f'\r\\3P]\u000e,\u0007\u0003\u0002\u0013(#%j\u0011!\n\u0006\u0003M\t\tqaZ3oKJL7-\u0003\u0002)K\tQr)\u001a8fe&\u001cGK]1wKJ\u001c\u0018M\u00197f)\u0016l\u0007\u000f\\1uKB\u0011a\u0002\u0001\u0005\u0006W\u0001!\t\u0001L\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u00035\u0002\"A\u0003\u0018\n\u0005=\"!\u0001B+oSRDQ!\r\u0001\u0005BI\n\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003M\u00022\u0001\n\u001b*\u0013\t)TE\u0001\tHK:,'/[2D_6\u0004\u0018M\\5p]\")q\u0007\u0001C!q\u0005\u00191/Z9\u0016\u0003q9QA\u000f\u0002\t\u0002m\n1\u0002\u0016:bm\u0016\u00148/\u00192mKB\u0011a\u0002\u0010\u0004\u0006\u0003\tA\t!P\n\u0004yy\n\u0005c\u0001\u0013@S%\u0011\u0001)\n\u0002\u0016\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\r\u0006\u001cGo\u001c:z!\r!#)K\u0005\u0003\u0007\u0016\u0012!\u0003\u0016:bm\u0016\u00148/\u00192mK\u001a\u000b7\r^8ss\")Q\t\u0010C\u0001\r\u00061A(\u001b8jiz\"\u0012a\u000f\u0005\t\u0011r\u0012\r\u0011\"\u0001\u0003\u0013\u00061!M]3bWN,\u0012A\u0013\t\u0003\u0017Bk\u0011\u0001\u0014\u0006\u0003\u001b:\u000bqaY8oiJ|GN\u0003\u0002P\t\u0005!Q\u000f^5m\u0013\t\tFJ\u0001\u0004Ce\u0016\f7n\u001d\u0005\u0007'r\u0002\u000b\u0011\u0002&\u0002\u000f\t\u0014X-Y6tA!)Q\u000b\u0010C\u0002-\u0006a1-\u00198Ck&dGM\u0012:p[V\u0011q\u000bY\u000b\u00021B)A%W.`C&\u0011!,\n\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u00039vk\u0011\u0001P\u0005\u0003=R\u0012AaQ8mYB\u0011!\u0003\u0019\u0003\u0006)Q\u0013\r!\u0006\t\u0004\u001d\u0001y\u0006\"B2=\t\u0003!\u0017A\u00038fo\n+\u0018\u000e\u001c3feV\u0011Q-\\\u000b\u0002MB!qM\u001b7o\u001b\u0005A'BA5\u0003\u0003\u001diW\u000f^1cY\u0016L!a\u001b5\u0003\u000f\t+\u0018\u000e\u001c3feB\u0011!#\u001c\u0003\u0006)\t\u0014\r!\u0006\t\u0004\u001d\u0001a\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/Traversable.class */
public interface Traversable<A> extends TraversableLike<A, Traversable<A>>, GenTraversable<A> {

    /* renamed from: scala.collection.Traversable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/Traversable$class.class */
    public abstract class Cclass {
        public static void $init$(Traversable traversable) {
        }

        public static GenericCompanion companion(Traversable traversable) {
            return Traversable$.MODULE$;
        }

        public static Traversable seq(Traversable traversable) {
            return traversable;
        }
    }

    GenericCompanion<Traversable> companion();

    Traversable<A> seq();
}
