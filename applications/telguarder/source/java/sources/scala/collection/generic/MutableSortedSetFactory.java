package scala.collection.generic;

import scala.collection.mutable.Builder;
import scala.collection.mutable.GrowingBuilder;
import scala.collection.mutable.SortedSet;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001-3Q!\u0001\u0002\u0002\u0002%\u0011q#T;uC\ndWmU8si\u0016$7+\u001a;GC\u000e$xN]=\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0003\u0015E\u0019\"\u0001A\u0006\u0011\u00071iq\"D\u0001\u0003\u0013\tq!A\u0001\tT_J$X\rZ*fi\u001a\u000b7\r^8ssB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\t\u00195)\u0006\u0002\u0015GE\u0011Q#\u0007\t\u0003-]i\u0011AB\u0005\u00031\u0019\u0011qAT8uQ&twME\u0003\u001b9%r\u0013G\u0002\u0003\u001c\u0001\u0001I\"\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004cA\u000f!E5\taD\u0003\u0002 \t\u00059Q.\u001e;bE2,\u0017BA\u0011\u001f\u0005%\u0019vN\u001d;fIN+G\u000f\u0005\u0002\u0011G\u0011)A%\u0005b\u0001K\t\t\u0011)\u0005\u0002\u0016MA\u0011acJ\u0005\u0003Q\u0019\u00111!\u00118z!\u0011Q3FI\u0017\u000e\u0003\u0011I!\u0001\f\u0003\u0003\u001bM{'\u000f^3e'\u0016$H*[6f!\r\u0001\u0012C\t\t\u0004;=\u0012\u0013B\u0001\u0019\u001f\u0005\r\u0019V\r\u001e\t\u0005;I\u0012S&\u0003\u00024=\t91+\u001a;MS.,\u0007\"B\u001b\u0001\t\u00031\u0014A\u0002\u001fj]&$h\bF\u00018!\ra\u0001a\u0004\u0005\u0006s\u0001!\tEO\u0001\u000b]\u0016<()^5mI\u0016\u0014XCA\u001eA)\ta$\t\u0005\u0003\u001e{}\n\u0015B\u0001 \u001f\u0005\u001d\u0011U/\u001b7eKJ\u0004\"\u0001\u0005!\u0005\u000b\u0011B$\u0019A\u0013\u0011\u0007A\tr\bC\u0003Dq\u0001\u000fA)A\u0002pe\u0012\u00042!\u0012%@\u001d\t1b)\u0003\u0002H\r\u00059\u0001/Y2lC\u001e,\u0017BA%K\u0005!y%\u000fZ3sS:<'BA$\u0007\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/MutableSortedSetFactory.class */
public abstract class MutableSortedSetFactory<CC extends SortedSet<Object>> extends SortedSetFactory<CC> {
    @Override // scala.collection.generic.SortedSetFactory
    public <A> Builder<A, CC> newBuilder(Ordering<A> ordering) {
        return new GrowingBuilder((Growable) empty(ordering));
    }
}
