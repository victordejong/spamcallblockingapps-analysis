package scala.collection.parallel.mutable;

import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.Set;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001i4\u0001\"\u0001\u0002\u0011\u0002\u0007\u00051\"\r\u0002\u0007!\u0006\u00148+\u001a;\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000f!\t!bY8mY\u0016\u001cG/[8o\u0015\u0005I\u0011!B:dC2\f7\u0001A\u000b\u0003\u0019]\u0019r\u0001A\u0007\u0012A\u0011:c\u0006\u0005\u0002\u000f\u001f5\t\u0001\"\u0003\u0002\u0011\u0011\t1\u0011I\\=SK\u001a\u00042AE\n\u0016\u001b\u00051\u0011B\u0001\u000b\u0007\u0005\u00199UM\\*fiB\u0011ac\u0006\u0007\u0001\t\u0015A\u0002A1\u0001\u001a\u0005\u0005!\u0016C\u0001\u000e\u001e!\tq1$\u0003\u0002\u001d\u0011\t9aj\u001c;iS:<\u0007C\u0001\b\u001f\u0013\ty\u0002BA\u0002B]f\u00042!\t\u0012\u0016\u001b\u0005\u0011\u0011BA\u0012\u0003\u0005-\u0001\u0016M]%uKJ\f'\r\\3\u0011\u0007\u00152S#D\u0001\u0005\u0013\t\tA\u0001\u0005\u0003)WUiS\"A\u0015\u000b\u0005)2\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003Y%\u0012!cR3oKJL7\rU1s)\u0016l\u0007\u000f\\1uKB\u0011\u0011\u0005\u0001\t\u0006C=*\u0012GM\u0005\u0003a\t\u0011!\u0002U1s'\u0016$H*[6f!\r\t\u0003!\u0006\t\u0004gU*R\"\u0001\u001b\u000b\u0005\r1\u0011B\u0001\u001c5\u0005\r\u0019V\r\u001e\u0005\u0006q\u0001!\t!O\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003i\u0002\"AD\u001e\n\u0005qB!\u0001B+oSRDQA\u0010\u0001\u0005B}\n\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003\u0001\u00132!Q\"G\r\u0011\u0011\u0005\u0001\u0001!\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u0007!\"U&\u0003\u0002FS\t\u0001r)\u001a8fe&\u001c7i\\7qC:LwN\u001c\t\u0004Q\u001dk\u0013B\u0001%*\u0005M9UM\\3sS\u000e\u0004\u0016M]\"p[B\fg.[8o\u0011\u0015Q\u0005\u0001\"\u0011L\u0003\u0015)W\u000e\u001d;z+\u0005\t\u0004\"B'\u0001\r\u0003q\u0015aA:fcV\t!gB\u0003Q\u0005!\u0005\u0011+\u0001\u0004QCJ\u001cV\r\u001e\t\u0003CI3Q!\u0001\u0002\t\u0002M\u001b\"A\u0015+\u0011\u0007!*V&\u0003\u0002WS\ti\u0001+\u0019:TKR4\u0015m\u0019;pefDQ\u0001\u0017*\u0005\u0002e\u000ba\u0001P5oSRtD#A)\t\u000bm\u0013F1\u0001/\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\u0005u3W#\u00010\u0011\u000b!z\u0016-Z4\n\u0005\u0001L#AD\"b]\u000e{WNY5oK\u001a\u0013x.\u001c\t\u0003E\u000el\u0011AU\u0005\u0003I\u0012\u0013AaQ8mYB\u0011aC\u001a\u0003\u00061i\u0013\r!\u0007\t\u0004C\u0001)\u0007\"B5S\t\u0003R\u0017A\u00038fo\n+\u0018\u000e\u001c3feV\u00111\u000e]\u000b\u0002YB!Q%\\8r\u0013\tqGA\u0001\u0005D_6\u0014\u0017N\\3s!\t1\u0002\u000fB\u0003\u0019Q\n\u0007\u0011\u0004E\u0002\"\u0001=DQa\u001d*\u0005BQ\f1B\\3x\u0007>l'-\u001b8feV\u0011Q\u000f_\u000b\u0002mB!Q%\\<z!\t1\u0002\u0010B\u0003\u0019e\n\u0007\u0011\u0004E\u0002\"\u0001]\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParSet.class */
public interface ParSet<T> extends ParIterable<T>, scala.collection.parallel.ParSet<T>, ParSetLike<T, ParSet<T>, Set<T>> {

    /* renamed from: scala.collection.parallel.mutable.ParSet$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParSet$class.class */
    public abstract class Cclass {
        public static void $init$(ParSet parSet) {
        }

        public static GenericCompanion companion(ParSet parSet) {
            return ParSet$.MODULE$;
        }

        public static ParSet empty(ParSet parSet) {
            return (ParSet) ParHashSet$.MODULE$.apply(Nil$.MODULE$);
        }
    }

    @Override // scala.collection.parallel.mutable.ParIterable, scala.collection.parallel.ParIterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<ParSet> companion();

    ParSet<T> empty();

    @Override // scala.collection.parallel.mutable.ParIterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Set<T> seq();
}
