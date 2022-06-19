package scala.collection;

import scala.None$;
import scala.Option;
import scala.Some;
import scala.collection.SortedSet;
import scala.collection.SortedSetLike;
import scala.collection.generic.Sorted;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001Q4\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005q!\u000b\u0002\u000e'>\u0014H/\u001a3TKRd\u0015n[3\u000b\u0005\r!\u0011AC2pY2,7\r^5p]*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007!)rd\u0005\u0003\u0001\u00135Q\u0003C\u0001\u0006\f\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB!a\"E\n\u001f\u001b\u0005y!B\u0001\t\u0003\u0003\u001d9WM\\3sS\u000eL!AE\b\u0003\rM{'\u000f^3e!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\f\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u0005)I\u0012B\u0001\u000e\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0003\u000f\n\u0005u!!aA!osB\u0011Ac\b\u0003\u0007A\u0001!)\u0019A\u0011\u0003\tQC\u0017n]\t\u00031\t\u00122aI\u0013*\r\u0011!\u0003\u0001\u0001\u0012\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u0007\u0019:3#D\u0001\u0003\u0013\tA#AA\u0005T_J$X\rZ*fiB!a\u0005A\n\u001f!\u001113f\u0005\u0010\n\u00051\u0012!aB*fi2K7.\u001a\u0005\u0006]\u0001!\taL\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003A\u0002\"AC\u0019\n\u0005I\"!\u0001B+oSRDQ\u0001\u000e\u0001\u0007\u0004U\n\u0001b\u001c:eKJLgnZ\u000b\u0002mA\u0019qGO\n\u000f\u0005)A\u0014BA\u001d\u0005\u0003\u001d\u0001\u0018mY6bO\u0016L!a\u000f\u001f\u0003\u0011=\u0013H-\u001a:j]\u001eT!!\u000f\u0003\t\u000by\u0002A\u0011I \u0002\r-,\u0017pU3u+\u0005q\u0002\"B!\u0001\t\u0003\u0012\u0015\u0001\u00034jeN$8*Z=\u0016\u0003MAQ\u0001\u0012\u0001\u0005B\t\u000bq\u0001\\1ti.+\u0017\u0010C\u0003G\u0001\u0019\u0005q)A\u0005sC:<W-S7qYR\u0019a\u0004S'\t\u000b%+\u0005\u0019\u0001&\u0002\t\u0019\u0014x.\u001c\t\u0004\u0015-\u001b\u0012B\u0001'\u0005\u0005\u0019y\u0005\u000f^5p]\")a*\u0012a\u0001\u0015\u0006)QO\u001c;jY\")\u0011\n\u0001C!!R\u0011a$\u0015\u0005\u0006\u0013>\u0003\ra\u0005\u0005\u0006\u001d\u0002!\te\u0015\u000b\u0003=QCQA\u0014*A\u0002MAQA\u0016\u0001\u0005B]\u000bQA]1oO\u0016$2A\b-Z\u0011\u0015IU\u000b1\u0001\u0014\u0011\u0015qU\u000b1\u0001\u0014\u0011\u0015Y\u0006\u0001\"\u0011]\u0003!\u0019XOY:fi>3GCA/a!\tQa,\u0003\u0002`\t\t9!i\\8mK\u0006t\u0007\"B1[\u0001\u0004\u0011\u0017\u0001\u0002;iCR\u00042AJ2\u0014\u0013\t!'A\u0001\u0004HK:\u001cV\r\u001e\u0005\u0006M\u0002!\taZ\u0001\rSR,'/\u0019;pe\u001a\u0013x.\u001c\u000b\u0003Q.\u00042AJ5\u0014\u0013\tQ'A\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u0015aW\r1\u0001\u0014\u0003\u0015\u0019H/\u0019:u\u0011-q\u0007\u0001%A\u0002\u0002\u0003%Ia\\9\u0002\u001dM,\b/\u001a:%gV\u00147/\u001a;PMR\u0011Q\f\u001d\u0005\u0006C6\u0004\rAY\u0005\u00037JL!a\u001d\u0002\u0003\u0015\u001d+gnU3u\u0019&\\W\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedSetLike.class */
public interface SortedSetLike<A, This extends SortedSet<A> & SortedSetLike<A, This>> extends Sorted<A, This>, SetLike<A, This> {

    /* renamed from: scala.collection.SortedSetLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/SortedSetLike$class.class */
    public abstract class Cclass {
        public static void $init$(SortedSetLike sortedSetLike) {
        }

        public static Object firstKey(SortedSetLike sortedSetLike) {
            return sortedSetLike.head();
        }

        public static SortedSet from(SortedSetLike sortedSetLike, Object obj) {
            return sortedSetLike.rangeImpl((Option) new Some(obj), (Option) None$.MODULE$);
        }

        public static Iterator iteratorFrom(SortedSetLike sortedSetLike, Object obj) {
            return sortedSetLike.keysIteratorFrom(obj);
        }

        public static SortedSet keySet(SortedSetLike sortedSetLike) {
            return (SortedSet) sortedSetLike.repr();
        }

        public static Object lastKey(SortedSetLike sortedSetLike) {
            return sortedSetLike.last();
        }

        public static SortedSet range(SortedSetLike sortedSetLike, Object obj, Object obj2) {
            return sortedSetLike.rangeImpl((Option) new Some(obj), (Option) new Some(obj2));
        }

        public static boolean subsetOf(SortedSetLike sortedSetLike, GenSet genSet) {
            boolean z;
            if (genSet instanceof SortedSet) {
                SortedSet sortedSet = (SortedSet) genSet;
                Ordering<A> ordering = sortedSet.ordering();
                Ordering<A> ordering2 = sortedSetLike.ordering();
                if (ordering != null ? ordering.equals(ordering2) : ordering2 == null) {
                    z = sortedSet.hasAll(sortedSetLike.iterator());
                    return z;
                }
            }
            z = sortedSetLike.scala$collection$SortedSetLike$$super$subsetOf(genSet);
            return z;
        }

        public static SortedSet until(SortedSetLike sortedSetLike, Object obj) {
            return sortedSetLike.rangeImpl((Option) None$.MODULE$, (Option) new Some(obj));
        }
    }

    @Override // scala.collection.generic.Sorted
    A firstKey();

    @Override // scala.collection.generic.Sorted
    This from(A a);

    Iterator<A> iteratorFrom(A a);

    @Override // scala.collection.generic.Sorted
    This keySet();

    @Override // scala.collection.generic.Sorted
    A lastKey();

    @Override // scala.collection.generic.Sorted
    Ordering<A> ordering();

    @Override // scala.collection.generic.Sorted
    This range(A a, A a2);

    @Override // scala.collection.generic.Sorted
    This rangeImpl(Option<A> option, Option<A> option2);

    /* synthetic */ boolean scala$collection$SortedSetLike$$super$subsetOf(GenSet genSet);

    boolean subsetOf(GenSet<A> genSet);

    @Override // scala.collection.generic.Sorted
    This until(A a);
}
