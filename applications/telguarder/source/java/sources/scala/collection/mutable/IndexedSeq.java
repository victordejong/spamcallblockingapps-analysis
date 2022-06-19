package scala.collection.mutable;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001y3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0006J]\u0012,\u00070\u001a3TKFT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"F\n\u0007\u0001-ya$\t\u0015\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rE\u0002\u0011#Mi\u0011AA\u0005\u0003%\t\u00111aU3r!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\f\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB\u0019q\u0004I\n\u000e\u0003\u0011I!!\u0001\u0003\u0011\t\t*3cJ\u0007\u0002G)\u0011A\u0005B\u0001\bO\u0016tWM]5d\u0013\t13E\u0001\u000eHK:,'/[2Ue\u00064XM]:bE2,G+Z7qY\u0006$X\r\u0005\u0002\u0011\u0001A!\u0001#K\n,\u0013\tQ#A\u0001\bJ]\u0012,\u00070\u001a3TKFd\u0015n[3\u0011\u0007A\u00011\u0003C\u0003.\u0001\u0011\u0005a&\u0001\u0004%S:LG\u000f\n\u000b\u0002_A\u0011A\u0002M\u0005\u0003c\u0019\u0011A!\u00168ji\")1\u0007\u0001C!i\u0005I1m\\7qC:LwN\\\u000b\u0002kA\u0019!EN\u0014\n\u0005]\u001a#\u0001E$f]\u0016\u0014\u0018nY\"p[B\fg.[8o\u0011\u0015I\u0004\u0001\"\u0011;\u0003\r\u0019X-]\u000b\u0002W\u001d)AH\u0001E\u0001{\u0005Q\u0011J\u001c3fq\u0016$7+Z9\u0011\u0005Aqd!B\u0001\u0003\u0011\u0003y4C\u0001 A!\r\u0011\u0013iJ\u0005\u0003\u0005\u000e\u0012!bU3r\r\u0006\u001cGo\u001c:z\u0011\u0015!e\b\"\u0001F\u0003\u0019a\u0014N\\5u}Q\tQ\bC\u0003H}\u0011\r\u0001*\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0002J%V\t!\nE\u0003#\u00176\u000b6+\u0003\u0002MG\ta1)\u00198Ck&dGM\u0012:p[B\u0011ajT\u0007\u0002}%\u0011\u0001K\u000e\u0002\u0005\u0007>dG\u000e\u0005\u0002\u0015%\u0012)aC\u0012b\u0001/A\u0019\u0001\u0003A)\t\u000bUsD\u0011\u0001,\u0002\u00159,wOQ;jY\u0012,'/\u0006\u0002X9V\t\u0001\f\u0005\u0003\u00113nk\u0016B\u0001.\u0003\u0005\u001d\u0011U/\u001b7eKJ\u0004\"\u0001\u0006/\u0005\u000bY!&\u0019A\f\u0011\u0007A\u00011\f")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeq.class */
public interface IndexedSeq<A> extends Seq<A>, scala.collection.IndexedSeq<A>, IndexedSeqLike<A, IndexedSeq<A>> {

    /* renamed from: scala.collection.mutable.IndexedSeq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeq$class.class */
    public abstract class Cclass {
        public static void $init$(IndexedSeq indexedSeq) {
        }

        public static GenericCompanion companion(IndexedSeq indexedSeq) {
            return IndexedSeq$.MODULE$;
        }

        public static IndexedSeq seq(IndexedSeq indexedSeq) {
            return indexedSeq;
        }
    }

    @Override // scala.collection.mutable.Seq, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<IndexedSeq> companion();

    @Override // scala.collection.mutable.Seq, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    IndexedSeq<A> seq();
}
