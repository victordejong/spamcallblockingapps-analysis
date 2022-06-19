package scala.collection;

import scala.collection.Set;
import scala.collection.SetLike;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001E4q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0007TKR\u0004&o\u001c=z\u0019&\\WM\u0003\u0002\u0004\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0002\t'u\u0019B\u0001A\u0005\u000eMA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\t9y\u0011\u0003H\u0007\u0002\u0005%\u0011\u0001C\u0001\u0002\b'\u0016$H*[6f!\t\u00112\u0003\u0004\u0001\u0005\u000bQ\u0001!\u0019A\u000b\u0003\u0003\u0005\u000b\"AF\r\u0011\u0005)9\u0012B\u0001\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0003\u000e\n\u0005m!!aA!osB\u0011!#\b\u0003\u0007=\u0001!)\u0019A\u0010\u0003\tQC\u0017n]\t\u0003-\u0001\u00122!I\u0007$\r\u0011\u0011\u0003\u0001\u0001\u0011\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u00079!\u0013#\u0003\u0002&\u0005\t\u00191+\u001a;\u0011\t99\u0013\u0003H\u0005\u0003Q\t\u0011\u0011#\u0013;fe\u0006\u0014G.\u001a)s_bLH*[6f\u0011\u0015Q\u0003\u0001\"\u0001,\u0003\u0019!\u0013N\\5uIQ\tA\u0006\u0005\u0002\u000b[%\u0011a\u0006\u0002\u0002\u0005+:LG\u000fC\u00031\u0001\u0019\u0005\u0011'A\u0003f[B$\u00180F\u0001\u001d\u0011\u0015\u0019\u0004\u0001\"\u00115\u0003!\u0019wN\u001c;bS:\u001cHCA\u001b9!\tQa'\u0003\u00028\t\t9!i\\8mK\u0006t\u0007\"B\u001d3\u0001\u0004\t\u0012\u0001B3mK6DQa\u000f\u0001\u0005Bq\nQ\u0001\n9mkN$\"\u0001H\u001f\t\u000beR\u0004\u0019A\t\t\u000b}\u0002A\u0011\t!\u0002\r\u0011j\u0017N\\;t)\ta\u0012\tC\u0003:}\u0001\u0007\u0011\u0003C\u0003D\u0001\u0011\u0005C)A\u0004jg\u0016k\u0007\u000f^=\u0016\u0003UBQA\u0012\u0001\u0005B\u001d\u000bQ!\u00199qYf$\"!\u000e%\t\u000be*\u0005\u0019A\t\t\u000b)\u0003A\u0011I&\u0002\u0013%tG/\u001a:tK\u000e$HC\u0001\u000fM\u0011\u0015i\u0015\n1\u0001O\u0003\u0011!\b.\u0019;\u0011\u00079y\u0015#\u0003\u0002Q\u0005\t1q)\u001a8TKRDQA\u0015\u0001\u0005BM\u000bA\u0001J1naR\u0011A\u0004\u0016\u0005\u0006\u001bF\u0003\rA\u0014\u0005\u0006-\u0002!\teV\u0001\u0006k:LwN\u001c\u000b\u00039aCQ!T+A\u00029CQA\u0017\u0001\u0005Bm\u000bA\u0001\n2beR\u0011A\u0004\u0018\u0005\u0006\u001bf\u0003\rA\u0014\u0005\u0006=\u0002!\teX\u0001\u0005I&4g\r\u0006\u0002\u001dA\")Q*\u0018a\u0001\u001d\")!\r\u0001C!G\u0006QA%Y7qIQLG\u000eZ3\u0015\u0005q!\u0007\"B'b\u0001\u0004q\u0005\"\u00024\u0001\t\u0003:\u0017\u0001C:vEN,Go\u00144\u0015\u0005UB\u0007\"B'f\u0001\u0004q\u0005\u0006\u0002\u0001k[>\u0004\"AC6\n\u00051$!A\u00033faJ,7-\u0019;fI\u0006\na.A#Qe>D\u00180\u001b8hA%\u001c\b\u0005Z3qe\u0016\u001c\u0017\r^3eA\u0011,X\r\t;pA1\f7m\u001b\u0011pM\u0002*8/\u001a\u0011b]\u0012\u00043m\\7qS2,'/\f7fm\u0016d\u0007e];qa>\u0014HOL\u0011\u0002a\u00061!GL\u00192]A\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/SetProxyLike.class */
public interface SetProxyLike<A, This extends SetLike<A, This> & Set<A>> extends SetLike<A, This>, IterableProxyLike<A, This> {

    /* renamed from: scala.collection.SetProxyLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/SetProxyLike$class.class */
    public abstract class Cclass {
        public static Set $amp(SetProxyLike setProxyLike, GenSet genSet) {
            return (Set) ((GenSetLike) setProxyLike.self()).$amp(genSet);
        }

        public static Set $amp$tilde(SetProxyLike setProxyLike, GenSet genSet) {
            return (Set) ((GenSetLike) setProxyLike.self()).$amp$tilde(genSet);
        }

        public static Set $bar(SetProxyLike setProxyLike, GenSet genSet) {
            return (Set) ((GenSetLike) setProxyLike.self()).$bar(genSet);
        }

        public static void $init$(SetProxyLike setProxyLike) {
        }

        public static boolean apply(SetProxyLike setProxyLike, Object obj) {
            return ((GenSetLike) setProxyLike.self()).apply((GenSetLike) obj);
        }

        public static boolean contains(SetProxyLike setProxyLike, Object obj) {
            return ((SetLike) setProxyLike.self()).contains(obj);
        }

        public static Set diff(SetProxyLike setProxyLike, GenSet genSet) {
            return ((SetLike) setProxyLike.self()).diff(genSet);
        }

        public static Set intersect(SetProxyLike setProxyLike, GenSet genSet) {
            return (Set) ((GenSetLike) setProxyLike.self()).intersect(genSet);
        }

        public static boolean isEmpty(SetProxyLike setProxyLike) {
            return ((SetLike) setProxyLike.self()).isEmpty();
        }

        public static boolean subsetOf(SetProxyLike setProxyLike, GenSet genSet) {
            return ((GenSetLike) setProxyLike.self()).subsetOf(genSet);
        }

        public static Set union(SetProxyLike setProxyLike, GenSet genSet) {
            return ((SetLike) setProxyLike.self()).union(genSet);
        }
    }

    @Override // scala.collection.GenSetLike
    This $amp(GenSet<A> genSet);

    @Override // scala.collection.GenSetLike
    This $amp$tilde(GenSet<A> genSet);

    @Override // scala.collection.GenSetLike
    This $bar(GenSet<A> genSet);

    @Override // scala.collection.SetLike, scala.collection.generic.Subtractable
    This $minus(A a);

    @Override // scala.collection.SetLike
    This $plus(A a);

    @Override // scala.collection.GenSetLike, scala.Function1
    boolean apply(A a);

    @Override // scala.collection.SetLike
    boolean contains(A a);

    @Override // scala.collection.SetLike
    This diff(GenSet<A> genSet);

    @Override // scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    This empty();

    @Override // scala.collection.GenSetLike
    This intersect(GenSet<A> genSet);

    @Override // scala.collection.SetLike, scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.GenSetLike, scala.collection.SortedSetLike
    boolean subsetOf(GenSet<A> genSet);

    @Override // scala.collection.SetLike
    This union(GenSet<A> genSet);
}
