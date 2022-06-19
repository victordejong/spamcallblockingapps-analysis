package scala.collection.mutable;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001m3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0002TKRT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"F\n\u0007\u0001-ya$\t\u0015\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rE\u0002\u0011#Mi\u0011AA\u0005\u0003%\t\u0011\u0001\"\u0013;fe\u0006\u0014G.\u001a\t\u0003)Ua\u0001\u0001B\u0003\u0017\u0001\t\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\b\u001d>$\b.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\u0007}\u00013#D\u0001\u0005\u0013\t\tA\u0001\u0005\u0003#KM9S\"A\u0012\u000b\u0005\u0011\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003M\r\u0012!cR3oKJL7mU3u)\u0016l\u0007\u000f\\1uKB\u0011\u0001\u0003\u0001\t\u0005!%\u001a2&\u0003\u0002+\u0005\t91+\u001a;MS.,\u0007c\u0001\t\u0001'!)Q\u0006\u0001C\u0001]\u00051A%\u001b8ji\u0012\"\u0012a\f\t\u0003\u0019AJ!!\r\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006g\u0001!\t\u0005N\u0001\nG>l\u0007/\u00198j_:,\u0012!\u000e\t\u0004EY:\u0013BA\u001c$\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eC\u0003:\u0001\u0011\u0005#(A\u0002tKF,\u0012aK\u0004\u0006y\tA\t!P\u0001\u0004'\u0016$\bC\u0001\t?\r\u0015\t!\u0001#\u0001@'\tq\u0004\tE\u0002#\u0003\u001eJ!AQ\u0012\u0003#5+H/\u00192mKN+GOR1di>\u0014\u0018\u0010C\u0003E}\u0011\u0005Q)\u0001\u0004=S:LGO\u0010\u000b\u0002{!)qI\u0010C\u0002\u0011\u0006a1-\u00198Ck&dGM\u0012:p[V\u0011\u0011JU\u000b\u0002\u0015B)!eS'R'&\u0011Aj\t\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u0003\u001d>k\u0011AP\u0005\u0003!Z\u0012AaQ8mYB\u0011AC\u0015\u0003\u0006-\u0019\u0013\ra\u0006\t\u0004!\u0001\t\u0006\"B+?\t\u00032\u0016!B3naRLXCA,[+\u0005A\u0006c\u0001\t\u00013B\u0011AC\u0017\u0003\u0006-Q\u0013\ra\u0006")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Set.class */
public interface Set<A> extends Iterable<A>, scala.collection.Set<A>, SetLike<A, Set<A>> {

    /* renamed from: scala.collection.mutable.Set$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Set$class.class */
    public abstract class Cclass {
        public static void $init$(Set set) {
        }

        public static GenericCompanion companion(Set set) {
            return Set$.MODULE$;
        }

        public static Set seq(Set set) {
            return set;
        }
    }

    @Override // scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<Set> companion();

    @Override // scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Set<A> seq();
}
