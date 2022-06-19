package scala.collection.immutable;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00054q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0005MS:,\u0017M]*fc*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\u000b\u0014\r\u0001YqBH\u0011)!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0004!E\u0019R\"\u0001\u0002\n\u0005I\u0011!aA*fcB\u0011A#\u0006\u0007\u0001\t\u00191\u0002\u0001\"b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\bcA\u0010!'5\tA!\u0003\u0002\u0002\tA!!%J\n(\u001b\u0005\u0019#B\u0001\u0013\u0005\u0003\u001d9WM\\3sS\u000eL!AJ\u0012\u00035\u001d+g.\u001a:jGR\u0013\u0018M^3sg\u0006\u0014G.\u001a+f[Bd\u0017\r^3\u0011\u0005A\u0001\u0001\u0003B\u0010*'-J!A\u000b\u0003\u0003\u001b1Kg.Z1s'\u0016\fH*[6f!\r\u0001\u0002a\u0005\u0005\u0006[\u0001!\tAL\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003=\u0002\"\u0001\u0004\u0019\n\u0005E2!\u0001B+oSRDQa\r\u0001\u0005BQ\n\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003U\u00022A\t\u001c(\u0013\t94E\u0001\tHK:,'/[2D_6\u0004\u0018M\\5p]\")\u0011\b\u0001C!u\u0005\u00191/Z9\u0016\u0003-:Q\u0001\u0010\u0002\t\u0002u\n\u0011\u0002T5oK\u0006\u00148+Z9\u0011\u0005Aqd!B\u0001\u0003\u0011\u0003y4C\u0001 A!\r\u0011\u0013iJ\u0005\u0003\u0005\u000e\u0012!bU3r\r\u0006\u001cGo\u001c:z\u0011\u0015!e\b\"\u0001F\u0003\u0019a\u0014N\\5u}Q\tQ\bC\u0003H}\u0011\r\u0001*\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0002J%V\t!\nE\u0003#\u00176\u000b6+\u0003\u0002MG\ta1)\u00198Ck&dGM\u0012:p[B\u0011ajT\u0007\u0002}%\u0011\u0001K\u000e\u0002\u0005\u0007>dG\u000e\u0005\u0002\u0015%\u0012)aC\u0012b\u0001/A\u0019\u0001\u0003A)\t\u000bUsD\u0011\u0001,\u0002\u00159,wOQ;jY\u0012,'/\u0006\u0002X?V\t\u0001\f\u0005\u0003Z9z\u0003W\"\u0001.\u000b\u0005m#\u0011aB7vi\u0006\u0014G.Z\u0005\u0003;j\u0013qAQ;jY\u0012,'\u000f\u0005\u0002\u0015?\u0012)a\u0003\u0016b\u0001/A\u0019\u0001\u0003\u00010")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LinearSeq.class */
public interface LinearSeq<A> extends Seq<A>, scala.collection.LinearSeq<A> {

    /* renamed from: scala.collection.immutable.LinearSeq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LinearSeq$class.class */
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

    @Override // scala.collection.immutable.Seq, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<LinearSeq> companion();

    @Override // scala.collection.immutable.Seq, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    LinearSeq<A> seq();
}
