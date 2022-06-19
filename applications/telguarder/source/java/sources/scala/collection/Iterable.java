package scala.collection;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\t4q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0005Ji\u0016\u0014\u0018M\u00197f\u0015\t\u0019A!\u0001\u0006d_2dWm\u0019;j_:T\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tA1c\u0005\u0004\u0001\u00135arD\n\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u0011a!\u00118z%\u00164\u0007c\u0001\b\u0010#5\t!!\u0003\u0002\u0011\u0005\tYAK]1wKJ\u001c\u0018M\u00197f!\t\u00112\u0003\u0004\u0001\u0005\rQ\u0001AQ1\u0001\u0016\u0005\u0005\t\u0015C\u0001\f\u001a!\tQq#\u0003\u0002\u0019\t\t9aj\u001c;iS:<\u0007C\u0001\u0006\u001b\u0013\tYBAA\u0002B]f\u00042AD\u000f\u0012\u0013\tq\"AA\u0006HK:LE/\u001a:bE2,\u0007\u0003\u0002\u0011$#\u0015j\u0011!\t\u0006\u0003E\t\tqaZ3oKJL7-\u0003\u0002%C\tQr)\u001a8fe&\u001cGK]1wKJ\u001c\u0018M\u00197f)\u0016l\u0007\u000f\\1uKB\u0011a\u0002\u0001\t\u0005\u001d\u001d\n\u0012&\u0003\u0002)\u0005\ta\u0011\n^3sC\ndW\rT5lKB\u0019a\u0002A\t\t\u000b-\u0002A\u0011\u0001\u0017\u0002\r\u0011Jg.\u001b;%)\u0005i\u0003C\u0001\u0006/\u0013\tyCA\u0001\u0003V]&$\b\"B\u0019\u0001\t\u0003\u0012\u0014!C2p[B\fg.[8o+\u0005\u0019\u0004c\u0001\u00115K%\u0011Q'\t\u0002\u0011\u000f\u0016tWM]5d\u0007>l\u0007/\u00198j_:DQa\u000e\u0001\u0005Ba\n1a]3r+\u0005Is!\u0002\u001e\u0003\u0011\u0003Y\u0014\u0001C%uKJ\f'\r\\3\u0011\u00059ad!B\u0001\u0003\u0011\u0003i4c\u0001\u001f?\u0003B\u0019\u0001eP\u0013\n\u0005\u0001\u000b#!F$f]R\u0013\u0018M^3sg\u0006\u0014G.\u001a$bGR|'/\u001f\t\u0004A\t+\u0013BA\"\"\u0005I!&/\u0019<feN\f'\r\\3GC\u000e$xN]=\t\u000b\u0015cD\u0011\u0001$\u0002\rqJg.\u001b;?)\u0005Y\u0004\"\u0002%=\t\u0007I\u0015\u0001D2b]\n+\u0018\u000e\u001c3Ge>lWC\u0001&T+\u0005Y\u0005#\u0002\u0011M\u001dJ#\u0016BA'\"\u00051\u0019\u0015M\u001c\"vS2$gI]8n!\ty\u0005+D\u0001=\u0013\t\tFG\u0001\u0003D_2d\u0007C\u0001\nT\t\u0015!rI1\u0001\u0016!\rq\u0001A\u0015\u0005\u0006-r\"\taV\u0001\u000b]\u0016<()^5mI\u0016\u0014XC\u0001-a+\u0005I\u0006\u0003\u0002.^?\u0006l\u0011a\u0017\u0006\u00039\n\tq!\\;uC\ndW-\u0003\u0002_7\n9!)^5mI\u0016\u0014\bC\u0001\na\t\u0015!RK1\u0001\u0016!\rq\u0001a\u0018")
/* loaded from: classes3-dex2jar.jar:scala/collection/Iterable.class */
public interface Iterable<A> extends Traversable<A>, GenIterable<A>, IterableLike<A, Iterable<A>> {

    /* renamed from: scala.collection.Iterable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/Iterable$class.class */
    public abstract class Cclass {
        public static void $init$(Iterable iterable) {
        }

        public static GenericCompanion companion(Iterable iterable) {
            return Iterable$.MODULE$;
        }

        public static Iterable seq(Iterable iterable) {
            return iterable;
        }
    }

    @Override // scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<Iterable> companion();

    @Override // scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Iterable<A> seq();
}
