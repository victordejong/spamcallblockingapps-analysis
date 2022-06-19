package scala.collection.immutable;

import scala.collection.generic.GenericCompanion;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSeq;
import scala.collection.parallel.immutable.ParSeq$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001Q4q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0002TKFT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0016'\u001d\u00011b\u0004\u0010\"Q1\u0002\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\r\u0001\u0012cE\u0007\u0002\u0005%\u0011!C\u0001\u0002\t\u0013R,'/\u00192mKB\u0011A#\u0006\u0007\u0001\t\u00191\u0002\u0001\"b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\bcA\u0010!'5\tA!\u0003\u0002\u0002\tA!!%J\n(\u001b\u0005\u0019#B\u0001\u0013\u0005\u0003\u001d9WM\\3sS\u000eL!AJ\u0012\u00035\u001d+g.\u001a:jGR\u0013\u0018M^3sg\u0006\u0014G.\u001a+f[Bd\u0017\r^3\u0011\u0005A\u0001\u0001\u0003B\u0010*'-J!A\u000b\u0003\u0003\u000fM+\u0017\u000fT5lKB\u0019\u0001\u0003A\n\u0011\t}i3cL\u0005\u0003]\u0011\u0011a\u0002U1sC2dW\r\\5{C\ndW\rE\u00021iMi\u0011!\r\u0006\u0003\u0007IR!a\r\u0003\u0002\u0011A\f'/\u00197mK2L!!N\u0019\u0003\rA\u000b'oU3r\u0011\u00159\u0004\u0001\"\u00019\u0003\u0019!\u0013N\\5uIQ\t\u0011\b\u0005\u0002\ru%\u00111H\u0002\u0002\u0005+:LG\u000fC\u0003>\u0001\u0011\u0005c(A\u0005d_6\u0004\u0018M\\5p]V\tq\bE\u0002#\u0001\u001eJ!!Q\u0012\u0003!\u001d+g.\u001a:jG\u000e{W\u000e]1oS>t\u0007\"B\"\u0001\t\u0003\"\u0015!\u0002;p'\u0016\fX#A\u0016\t\u000b\u0019\u0003A\u0011\t#\u0002\u0007M,\u0017\u000f\u0003\u0004I\u0001\u0001&\t&S\u0001\fa\u0006\u00148i\\7cS:,'/F\u0001K!\u0011YEjE\u0018\u000e\u0003IJ!!\u0014\u001a\u0003\u0011\r{WNY5oKJ<Qa\u0014\u0002\t\u0002A\u000b1aU3r!\t\u0001\u0012KB\u0003\u0002\u0005!\u0005!k\u0005\u0002R'B\u0019!\u0005V\u0014\n\u0005U\u001b#AC*fc\u001a\u000b7\r^8ss\")q+\u0015C\u00011\u00061A(\u001b8jiz\"\u0012\u0001\u0015\u0005\u00065F#\u0019aW\u0001\rG\u0006t')^5mI\u001a\u0013x.\\\u000b\u00039\u0016,\u0012!\u0018\t\u0006Ey\u0003GMZ\u0005\u0003?\u000e\u0012AbQ1o\u0005VLG\u000e\u001a$s_6\u0004\"!\u00192\u000e\u0003EK!a\u0019!\u0003\t\r{G\u000e\u001c\t\u0003)\u0015$QAF-C\u0002]\u00012\u0001\u0005\u0001e\u0011\u0015A\u0017\u000b\"\u0001j\u0003)qWm\u001e\"vS2$WM]\u000b\u0003UJ,\u0012a\u001b\t\u0005Y>\f8/D\u0001n\u0015\tqG!A\u0004nkR\f'\r\\3\n\u0005Al'a\u0002\"vS2$WM\u001d\t\u0003)I$QAF4C\u0002]\u00012\u0001\u0005\u0001r\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Seq.class */
public interface Seq<A> extends Iterable<A>, scala.collection.Seq<A> {

    /* renamed from: scala.collection.immutable.Seq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Seq$class.class */
    public abstract class Cclass {
        public static void $init$(Seq seq) {
        }

        public static GenericCompanion companion(Seq seq) {
            return Seq$.MODULE$;
        }

        public static Combiner parCombiner(Seq seq) {
            return ParSeq$.MODULE$.newCombiner();
        }

        public static Seq seq(Seq seq) {
            return seq;
        }

        public static Seq toSeq(Seq seq) {
            return seq;
        }
    }

    @Override // scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<Seq> companion();

    @Override // scala.collection.immutable.Iterable
    Combiner<A, ParSeq<A>> parCombiner();

    @Override // scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Seq<A> seq();

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    Seq<A> toSeq();
}
