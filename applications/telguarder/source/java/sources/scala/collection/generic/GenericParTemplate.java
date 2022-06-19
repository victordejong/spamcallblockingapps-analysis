package scala.collection.generic;

import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParIterable;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000114q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\nHK:,'/[2QCJ$V-\u001c9mCR,'BA\u0002\u0005\u0003\u001d9WM\\3sS\u000eT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)2AC\u000b '\u0011\u00011b\u0004\u0017\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\r\u0005\u0003\u0011#MqR\"\u0001\u0002\n\u0005I\u0011!AG$f]\u0016\u0014\u0018n\u0019+sCZ,'o]1cY\u0016$V-\u001c9mCR,\u0007C\u0001\u000b\u0016\u0019\u0001!aA\u0006\u0001\u0005\u0006\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0003)}!a\u0001\t\u0001\u0005\u0006\u0004\t#AA\"D+\t\u0011#&\u0005\u0002\u0019GA\u0019AeJ\u0015\u000e\u0003\u0015R!A\n\u0003\u0002\u0011A\f'/\u00197mK2L!\u0001K\u0013\u0003\u0017A\u000b'/\u0013;fe\u0006\u0014G.\u001a\t\u0003))\"QaK\u0010C\u0002]\u0011\u0011\u0001\u0017\t\u0005!5\u001ar&\u0003\u0002/\u0005\tq\u0001*Y:OK^\u001cu.\u001c2j]\u0016\u0014(F\u0001\u00192!\r!rdE\u0016\u0002eA\u00111\u0007O\u0007\u0002i)\u0011QGN\u0001\nk:\u001c\u0007.Z2lK\u0012T!a\u000e\u0004\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u0002:i\t\tRO\\2iK\u000e\\W\r\u001a,be&\fgnY3\t\u000bm\u0002A\u0011\u0001\u001f\u0002\r\u0011Jg.\u001b;%)\u0005i\u0004C\u0001\u0007?\u0013\tydA\u0001\u0003V]&$\b\"B!\u0001\r\u0003\u0011\u0015!C2p[B\fg.[8o+\u0005\u0019%c\u0001#G\u0013\u001a!Q\t\u0001\u0001D\u00051a$/\u001a4j]\u0016lWM\u001c;?!\r\u0001rIH\u0005\u0003\u0011\n\u0011\u0001cR3oKJL7mQ8na\u0006t\u0017n\u001c8\u0011\u0007AQe$\u0003\u0002L\u0005\t\u0019r)\u001a8fe&\u001c\u0007+\u0019:D_6\u0004\u0018M\\5p]\"1Q\n\u0001Q\u0005R9\u000b!B\\3x\u0005VLG\u000eZ3s+\u0005y\u0005\u0003\u0002)T'Aj\u0011!\u0015\u0006\u0003%\u0012\tq!\\;uC\ndW-\u0003\u0002U#\n9!)^5mI\u0016\u0014\bB\u0002,\u0001A\u0013Es+A\u0006oK^\u001cu.\u001c2j]\u0016\u0014X#\u0001-\u0011\t\u0011J6\u0003M\u0005\u00035\u0016\u0012\u0001bQ8nE&tWM\u001d\u0005\u00069\u0002!\t%X\u0001\u000fO\u0016tWM]5d\u0005VLG\u000eZ3s+\tq\u0016-F\u0001`!\u0011!\u0013\fY2\u0011\u0005Q\tG!\u00022\\\u0005\u00049\"!\u0001\"\u0011\u0007Qy\u0002\rC\u0003f\u0001\u0011\u0005a-A\bhK:,'/[2D_6\u0014\u0017N\\3s+\t9'.F\u0001i!\u0011!\u0013,[6\u0011\u0005QQG!\u00022e\u0005\u00049\u0002c\u0001\u000b S\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericParTemplate.class */
public interface GenericParTemplate<A, CC extends ParIterable<Object>> extends GenericTraversableTemplate<A, CC>, HasNewCombiner<A, CC> {

    /* renamed from: scala.collection.generic.GenericParTemplate$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenericParTemplate$class.class */
    public abstract class Cclass {
        public static void $init$(GenericParTemplate genericParTemplate) {
        }

        public static Combiner genericBuilder(GenericParTemplate genericParTemplate) {
            return genericParTemplate.genericCombiner();
        }

        public static Combiner genericCombiner(GenericParTemplate genericParTemplate) {
            return ((GenericParCompanion) genericParTemplate.companion()).newCombiner();
        }

        public static Builder newBuilder(GenericParTemplate genericParTemplate) {
            return genericParTemplate.newCombiner();
        }

        public static Combiner newCombiner(GenericParTemplate genericParTemplate) {
            return ((GenericParCompanion) genericParTemplate.companion()).newCombiner();
        }
    }

    @Override // scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<CC> companion();

    @Override // scala.collection.generic.GenericTraversableTemplate
    <B> Combiner<B, CC> genericBuilder();

    <B> Combiner<B, CC> genericCombiner();

    @Override // scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    Builder<A, CC> newBuilder();

    Combiner<A, CC> newCombiner();
}
