package scala.collection;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001q3q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u0005MS:,\u0017M]*fc*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001bE\n\u0006\u0001%iAd\t\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u0011a!\u00118z%\u00164\u0007c\u0001\b\u0010#5\t!!\u0003\u0002\u0011\u0005\t\u00191+Z9\u0011\u0005I\u0019B\u0002\u0001\u0003\u0007)\u0001!)\u0019A\u000b\u0003\u0003\u0005\u000b\"AF\r\u0011\u0005)9\u0012B\u0001\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0003\u000e\n\u0005m!!aA!osB!Q\u0004I\t#\u001b\u0005q\"BA\u0010\u0003\u0003\u001d9WM\\3sS\u000eL!!\t\u0010\u00035\u001d+g.\u001a:jGR\u0013\u0018M^3sg\u0006\u0014G.\u001a+f[Bd\u0017\r^3\u0011\u00059\u0001\u0001\u0003\u0002\b%#\u0019J!!\n\u0002\u0003\u001b1Kg.Z1s'\u0016\fH*[6f!\rq\u0001!\u0005\u0005\u0006Q\u0001!\t!K\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003)\u0002\"AC\u0016\n\u00051\"!\u0001B+oSRDQA\f\u0001\u0005B=\n\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003A\u00022!H\u0019#\u0013\t\u0011dD\u0001\tHK:,'/[2D_6\u0004\u0018M\\5p]\")A\u0007\u0001C!k\u0005\u00191/Z9\u0016\u0003\u0019:Qa\u000e\u0002\t\u0002a\n\u0011\u0002T5oK\u0006\u00148+Z9\u0011\u00059Id!B\u0001\u0003\u0011\u0003Q4CA\u001d<!\riBHI\u0005\u0003{y\u0011!bU3r\r\u0006\u001cGo\u001c:z\u0011\u0015y\u0014\b\"\u0001A\u0003\u0019a\u0014N\\5u}Q\t\u0001\bC\u0003Cs\u0011\r1)\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0002E\u001bV\tQ\tE\u0003\u001e\r\"ce*\u0003\u0002H=\ta1)\u00198Ck&dGM\u0012:p[B\u0011\u0011JS\u0007\u0002s%\u00111*\r\u0002\u0005\u0007>dG\u000e\u0005\u0002\u0013\u001b\u0012)A#\u0011b\u0001+A\u0019a\u0002\u0001'\t\u000bAKD\u0011A)\u0002\u00159,wOQ;jY\u0012,'/\u0006\u0002S5V\t1\u000b\u0005\u0003U/f[V\"A+\u000b\u0005Y\u0013\u0011aB7vi\u0006\u0014G.Z\u0005\u00031V\u0013qAQ;jY\u0012,'\u000f\u0005\u0002\u00135\u0012)Ac\u0014b\u0001+A\u0019a\u0002A-")
/* loaded from: classes3-dex2jar.jar:scala/collection/LinearSeq.class */
public interface LinearSeq<A> extends Seq<A>, LinearSeqLike<A, LinearSeq<A>> {

    /* renamed from: scala.collection.LinearSeq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/LinearSeq$class.class */
    public abstract class Cclass {
        public static void $init$(LinearSeq linearSeq) {
        }

        public static GenericCompanion companion(LinearSeq linearSeq) {
            return LinearSeq$.MODULE$;
        }

        public static LinearSeq seq(LinearSeq linearSeq) {
            return linearSeq;
        }
    }

    @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<LinearSeq> companion();

    @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    LinearSeq<A> seq();
}
