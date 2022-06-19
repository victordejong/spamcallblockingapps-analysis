package scala.collection;

import scala.collection.Parallel;
import scala.collection.parallel.Combiner;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001I2q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u000bDkN$x.\u001c)be\u0006dG.\u001a7ju\u0006\u0014G.\u001a\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0004\u0011MQ2c\u0001\u0001\n\u001bA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0004\u0003:L\b\u0003\u0002\b\u0010#ei\u0011AA\u0005\u0003!\t\u0011a\u0002U1sC2dW\r\\5{C\ndW\r\u0005\u0002\u0013'1\u0001AA\u0002\u000b\u0001\t\u000b\u0007QCA\u0001B#\t1\u0012\u0002\u0005\u0002\u000b/%\u0011\u0001\u0004\u0002\u0002\b\u001d>$\b.\u001b8h!\t\u0011\"\u0004\u0002\u0004\u001c\u0001\u0011\u0015\r\u0001\b\u0002\b!\u0006\u0014(+\u001a9s#\t1R\u0004\u0005\u0002\u000f=%\u0011qD\u0001\u0002\t!\u0006\u0014\u0018\r\u001c7fY\")\u0011\u0005\u0001C\u0001E\u00051A%\u001b8ji\u0012\"\u0012a\t\t\u0003\u0015\u0011J!!\n\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006O\u00011\t\u0005K\u0001\u0004a\u0006\u0014X#A\r\t\r)\u0002\u0001\u0015\"\u0015,\u0003-\u0001\u0018M]\"p[\nLg.\u001a:\u0016\u00031\u0002B!\f\u0019\u001235\taF\u0003\u00020\u0005\u0005A\u0001/\u0019:bY2,G.\u0003\u00022]\tA1i\\7cS:,'\u000f")
/* loaded from: classes3-dex2jar.jar:scala/collection/CustomParallelizable.class */
public interface CustomParallelizable<A, ParRepr extends Parallel> extends Parallelizable<A, ParRepr> {

    /* renamed from: scala.collection.CustomParallelizable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/CustomParallelizable$class.class */
    public abstract class Cclass {
        public static void $init$(CustomParallelizable customParallelizable) {
        }

        public static Combiner parCombiner(CustomParallelizable customParallelizable) {
            throw new UnsupportedOperationException("");
        }
    }

    @Override // scala.collection.Parallelizable
    ParRepr par();

    @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    Combiner<A, ParRepr> parCombiner();
}
