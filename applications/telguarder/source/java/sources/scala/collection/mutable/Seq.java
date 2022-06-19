package scala.collection.mutable;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001y3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\u0002TKFT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"F\n\u0007\u0001-ya$\t\u0015\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rE\u0002\u0011#Mi\u0011AA\u0005\u0003%\t\u0011\u0001\"\u0013;fe\u0006\u0014G.\u001a\t\u0003)Ua\u0001\u0001B\u0003\u0017\u0001\t\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\b\u001d>$\b.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\u0007}\u00013#D\u0001\u0005\u0013\t\tA\u0001\u0005\u0003#KM9S\"A\u0012\u000b\u0005\u0011\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003M\r\u0012!dR3oKJL7\r\u0016:bm\u0016\u00148/\u00192mKR+W\u000e\u001d7bi\u0016\u0004\"\u0001\u0005\u0001\u0011\tAI3cK\u0005\u0003U\t\u0011qaU3r\u0019&\\W\rE\u0002\u0011\u0001MAQ!\f\u0001\u0005\u00029\na\u0001J5oSR$C#A\u0018\u0011\u00051\u0001\u0014BA\u0019\u0007\u0005\u0011)f.\u001b;\t\u000bM\u0002A\u0011\t\u001b\u0002\u0013\r|W\u000e]1oS>tW#A\u001b\u0011\u0007\t2t%\u0003\u00028G\t\u0001r)\u001a8fe&\u001c7i\\7qC:LwN\u001c\u0005\u0006s\u0001!\tEO\u0001\u0004g\u0016\fX#A\u0016\b\u000bq\u0012\u0001\u0012A\u001f\u0002\u0007M+\u0017\u000f\u0005\u0002\u0011}\u0019)\u0011A\u0001E\u0001\u007fM\u0011a\b\u0011\t\u0004E\u0005;\u0013B\u0001\"$\u0005)\u0019V-\u001d$bGR|'/\u001f\u0005\u0006\tz\"\t!R\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003uBQa\u0012 \u0005\u0004!\u000bAbY1o\u0005VLG\u000e\u001a$s_6,\"!\u0013*\u0016\u0003)\u0003RAI&N#NK!\u0001T\u0012\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u00059{U\"\u0001 \n\u0005A3$\u0001B\"pY2\u0004\"\u0001\u0006*\u0005\u000bY1%\u0019A\f\u0011\u0007A\u0001\u0011\u000bC\u0003V}\u0011\u0005a+\u0001\u0006oK^\u0014U/\u001b7eKJ,\"a\u0016/\u0016\u0003a\u0003B\u0001E-\\;&\u0011!L\u0001\u0002\b\u0005VLG\u000eZ3s!\t!B\fB\u0003\u0017)\n\u0007q\u0003E\u0002\u0011\u0001m\u0003")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Seq.class */
public interface Seq<A> extends Iterable<A>, scala.collection.Seq<A>, SeqLike<A, Seq<A>> {

    /* renamed from: scala.collection.mutable.Seq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Seq$class.class */
    public abstract class Cclass {
        public static void $init$(Seq seq) {
        }

        public static GenericCompanion companion(Seq seq) {
            return Seq$.MODULE$;
        }

        public static Seq seq(Seq seq) {
            return seq;
        }
    }

    @Override // scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<Seq> companion();

    @Override // scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Seq<A> seq();
}
