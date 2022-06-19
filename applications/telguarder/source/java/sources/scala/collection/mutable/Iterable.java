package scala.collection.mutable;

import scala.collection.generic.GenericCompanion;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParIterable;
import scala.collection.parallel.mutable.ParIterable$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001I4q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0005Ji\u0016\u0014\u0018M\u00197f\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005))2c\u0002\u0001\f\u001fy\t\u0003\u0006\f\t\u0003\u00195i\u0011AB\u0005\u0003\u001d\u0019\u0011a!\u00118z%\u00164\u0007c\u0001\t\u0012'5\t!!\u0003\u0002\u0013\u0005\tYAK]1wKJ\u001c\u0018M\u00197f!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\f\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB\u0019q\u0004I\n\u000e\u0003\u0011I!!\u0001\u0003\u0011\t\t*3cJ\u0007\u0002G)\u0011A\u0005B\u0001\bO\u0016tWM]5d\u0013\t13E\u0001\u000eHK:,'/[2Ue\u00064XM]:bE2,G+Z7qY\u0006$X\r\u0005\u0002\u0011\u0001A!q$K\n,\u0013\tQCA\u0001\u0007Ji\u0016\u0014\u0018M\u00197f\u0019&\\W\rE\u0002\u0011\u0001M\u0001BaH\u0017\u0014_%\u0011a\u0006\u0002\u0002\u000f!\u0006\u0014\u0018\r\u001c7fY&T\u0018M\u00197f!\r\u0001DgE\u0007\u0002c)\u00111A\r\u0006\u0003g\u0011\t\u0001\u0002]1sC2dW\r\\\u0005\u0003kE\u00121\u0002U1s\u0013R,'/\u00192mK\")q\u0007\u0001C\u0001q\u00051A%\u001b8ji\u0012\"\u0012!\u000f\t\u0003\u0019iJ!a\u000f\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006{\u0001!\tEP\u0001\nG>l\u0007/\u00198j_:,\u0012a\u0010\t\u0004E\u0001;\u0013BA!$\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000e\u0003\u0004D\u0001\u0001&\t\u0006R\u0001\fa\u0006\u00148i\\7cS:,'/F\u0001F!\u00111uiE\u0018\u000e\u0003IJ!\u0001\u0013\u001a\u0003\u0011\r{WNY5oKJDQA\u0013\u0001\u0005B-\u000b1a]3r+\u0005Ys!B'\u0003\u0011\u0003q\u0015\u0001C%uKJ\f'\r\\3\u0011\u0005Aye!B\u0001\u0003\u0011\u0003\u00016cA(R)B\u0019!EU\u0014\n\u0005M\u001b#!F$f]R\u0013\u0018M^3sg\u0006\u0014G.\u001a$bGR|'/\u001f\t\u0004EU;\u0013B\u0001,$\u0005I!&/\u0019<feN\f'\r\\3GC\u000e$xN]=\t\u000ba{E\u0011A-\u0002\rqJg.\u001b;?)\u0005q\u0005\"B.P\t\u0007a\u0016\u0001D2b]\n+\u0018\u000e\u001c3Ge>lWCA/g+\u0005q\u0006#\u0002\u0012`C\u0016<\u0017B\u00011$\u00051\u0019\u0015M\u001c\"vS2$gI]8n!\t\u00117-D\u0001P\u0013\t!\u0007I\u0001\u0003D_2d\u0007C\u0001\u000bg\t\u00151\"L1\u0001\u0018!\r\u0001\u0002!\u001a\u0005\u0006S>#\tA[\u0001\u000b]\u0016<()^5mI\u0016\u0014XCA6q+\u0005a\u0007\u0003\u0002\tn_FL!A\u001c\u0002\u0003\u000f\t+\u0018\u000e\u001c3feB\u0011A\u0003\u001d\u0003\u0006-!\u0014\ra\u0006\t\u0004!\u0001y\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Iterable.class */
public interface Iterable<A> extends Traversable<A>, scala.collection.Iterable<A> {

    /* renamed from: scala.collection.mutable.Iterable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Iterable$class.class */
    public abstract class Cclass {
        public static void $init$(Iterable iterable) {
        }

        public static GenericCompanion companion(Iterable iterable) {
            return Iterable$.MODULE$;
        }

        public static Combiner parCombiner(Iterable iterable) {
            return ParIterable$.MODULE$.newCombiner();
        }

        public static Iterable seq(Iterable iterable) {
            return iterable;
        }
    }

    @Override // scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<Iterable> companion();

    @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    Combiner<A, ParIterable<A>> parCombiner();

    @Override // scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Iterable<A> seq();
}
