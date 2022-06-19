package scala.collection.immutable;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableView;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.SeqView;
import scala.collection.SeqViewLike;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableView;
import scala.collection.TraversableViewLike;
import scala.collection.ViewMkString;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.SliceInterval;
import scala.collection.immutable.StreamView;
import scala.collection.immutable.StreamViewLike;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParSeq;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\t\u001dg\u0001C\u0001\u0003!\u0003\r\t!C\u0018\u0003\u001dM#(/Z1n-&,w\u000fT5lK*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)BAC\u000b KM!\u0001aC\b\"!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0005!E\u0019b$D\u0001\u0005\u0013\t\u0011BAA\u0004TKF4\u0016.Z<\u0011\u0005Q)B\u0002\u0001\u0003\u0007-\u0001!)\u0019A\f\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!osB\u0011Ac\b\u0003\u0007A\u0001!)\u0019A\f\u0003\t\r{G\u000e\u001c\t\u0006!\t\u001ab\u0004J\u0005\u0003G\u0011\u00111bU3r-&,w\u000fT5lKB\u0011A#\n\u0003\u0007M\u0001!)\u0019A\u0014\u0003\tQC\u0017n]\t\u00031!\u00122!K\u00160\r\u0011Q\u0003\u0001\u0001\u0015\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\t1j3CH\u0007\u0002\u0005%\u0011aF\u0001\u0002\u000b'R\u0014X-Y7WS\u0016<\b#\u0002\u0017\u0001'y!\u0003\"B\u0019\u0001\t\u0003\u0011\u0014A\u0002\u0013j]&$H\u0005F\u00014!\taA'\u0003\u00026\r\t!QK\\5u\u0011\u00159\u0004\u0001\"\u00119\u0003\u00151wN]2f+\rIdi\u000f\u000b\u0003uu\u0002\"\u0001F\u001e\u0005\u000bq2$\u0019A\f\u0003\tQC\u0017\r\u001e\u0005\u0006}Y\u0002\u001daP\u0001\u0003E\u001a\u0004R\u0001Q\"\u001f\u000bjj\u0011!\u0011\u0006\u0003\u0005\u0012\tqaZ3oKJL7-\u0003\u0002E\u0003\na1)\u00198Ck&dGM\u0012:p[B\u0011AC\u0012\u0003\u0006\u000fZ\u0012\r\u0001\u0013\u0002\u0002\u0005F\u00111c\u0007\u0004\b\u0015\u0002\u0001\n1!\u0001L\u0005-!&/\u00198tM>\u0014X.\u001a3\u0016\u00051{5\u0003B%\f\u001bB\u0003B\u0001L\u0017O=A\u0011Ac\u0014\u0003\u0007\u000f&#)\u0019A\f\u0011\u0007E\u0013f*D\u0001\u0001\u0013\tQ%\u0005C\u00032\u0013\u0012\u0005!\u0007C\u0003V\u0013\u0012\u0005c+\u0001\u0005u_N#(/\u001b8h)\u00059\u0006C\u0001-^\u001b\u0005I&B\u0001.\\\u0003\u0011a\u0017M\\4\u000b\u0003q\u000bAA[1wC&\u0011a,\u0017\u0002\u0007'R\u0014\u0018N\\4\u0007\r\u0001\u0004\u0011\u0011\u0001\u0003b\u0005M\t%m\u001d;sC\u000e$HK]1og\u001a|'/\\3e+\t\u0011gmE\u0002`G\u001e\u00042!\u00153f\u0013\t\u0001'\u0005\u0005\u0002\u0015M\u00121qi\u0018CC\u0002]\u00012!U%f\u0011\u0015Iw\f\"\u0001k\u0003\u0019a\u0014N\\5u}Q\t1\u000eE\u0002R?\u00164q!\u001c\u0001\u0011\u0002G\u0005aNA\u0005F[B$\u0018PV5foN!AnC8q!\r\t\u0016\n\u0007\t\u0003#FL!!\u001c\u0012\u0007\u000fM\u0004\u0001\u0013aI\u0001i\n1ai\u001c:dK\u0012,\"!^=\u0014\tI\\aO\u001f\t\u0004#^D\u0018BA:#!\t!\u0012\u0010B\u0003He\n\u0007q\u0003E\u0002R\u0013b4q\u0001 \u0001\u0011\u0002G\u0005QP\u0001\u0004TY&\u001cW\rZ\n\u0006w.q\u0018\u0011\u0001\t\u0003#~L!\u0001 \u0012\u0011\u0007EK5CB\u0005\u0002\u0006\u0001\u0001\n1%\u0001\u0002\b\t1Q*\u00199qK\u0012,B!!\u0003\u0002\u0012M9\u00111A\u0006\u0002\f\u0005M\u0001#B)\u0002\u000e\u0005=\u0011bAA\u0003EA\u0019A#!\u0005\u0005\r\u001d\u000b\u0019A1\u0001\u0018!\u0011\t\u0016*a\u0004\u0007\u0013\u0005]\u0001\u0001%A\u0012\u0002\u0005e!A\u0003$mCRl\u0015\r\u001d9fIV!\u00111DA\u0012'\u001d\t)bCA\u000f\u0003K\u0001R!UA\u0010\u0003CI1!a\u0006#!\r!\u00121\u0005\u0003\u0007\u000f\u0006U!\u0019A\f\u0011\tEK\u0015\u0011\u0005\u0004\n\u0003S\u0001\u0001\u0013aI\u0001\u0003W\u0011\u0001\"\u00119qK:$W\rZ\u000b\u0005\u0003[\t)dE\u0004\u0002(-\ty#a\u000e\u0011\u000bE\u000b\t$a\r\n\u0007\u0005%\"\u0005E\u0002\u0015\u0003k!aaRA\u0014\u0005\u0004A\u0005\u0003B)J\u0003g1\u0011\"a\u000f\u0001!\u0003\r\n!!\u0010\u0003\u0011\u0019KG\u000e^3sK\u0012\u001cr!!\u000f\f\u0003\u007f\t\t\u0001E\u0002R\u0003\u0003J1!a\u000f#\r%\t)\u0005\u0001I\u0001$\u0003\t9E\u0001\u0006UC.,gn\u00165jY\u0016\u001cr!a\u0011\f\u0003\u0013\n\t\u0001E\u0002R\u0003\u0017J1!!\u0012#\r%\ty\u0005\u0001I\u0001$\u0003\t\tF\u0001\u0007Ee>\u0004\b/\u001a3XQ&dWmE\u0004\u0002N-\t\u0019&!\u0001\u0011\u0007E\u000b)&C\u0002\u0002P\t2\u0011\"!\u0017\u0001!\u0003\r\n!a\u0017\u0003\riK\u0007\u000f]3e+\u0011\ti&!\u001a\u0014\u000f\u0005]3\"a\u0018\u0002hA)\u0011+!\u0019\u0002d%\u0019\u0011\u0011\f\u0012\u0011\u0007Q\t)\u0007\u0002\u0004H\u0003/\u0012\ra\u0006\t\u0005#&\u000bI\u0007\u0005\u0004\r\u0003W\u001a\u00121M\u0005\u0004\u0003[2!A\u0002+va2,'GB\u0005\u0002r\u0001\u0001\n1%\u0001\u0002t\tI!,\u001b9qK\u0012\fE\u000e\\\u000b\u0007\u0003k\ni(a!\u0014\u000f\u0005=4\"a\u001e\u0002\u0006B9\u0011+!\u001f\u0002|\u0005\u0005\u0015bAA9EA\u0019A#! \u0005\u000f\u0005}\u0014q\u000eb\u0001\u0011\n\u0011\u0011)\r\t\u0004)\u0005\rEAB$\u0002p\t\u0007q\u0003\u0005\u0003R\u0013\u0006\u001d\u0005c\u0002\u0007\u0002l\u0005m\u0014\u0011\u0011\u0004\n\u0003\u0017\u0003\u0001\u0013aI\u0001\u0003\u001b\u0013\u0001BU3wKJ\u001cX\rZ\n\b\u0003\u0013[\u0011qRA\u0001!\r\t\u0016\u0011S\u0005\u0004\u0003\u0017\u0013c!CAK\u0001A\u0005\u0019\u0013AAL\u0005\u001d\u0001\u0016\r^2iK\u0012,B!!'\u0002\"N9\u00111S\u0006\u0002\u001c\u0006\r\u0006#B)\u0002\u001e\u0006}\u0015bAAKEA\u0019A#!)\u0005\r\u001d\u000b\u0019J1\u0001I!\u0011\t\u0016*a(\u0007\u0013\u0005\u001d\u0006\u0001%A\u0012\u0002\u0005%&!\u0003)sKB,g\u000eZ3e+\u0011\tY+a-\u0014\u000f\u0005\u00156\"!,\u00026B)\u0011+a,\u00022&\u0019\u0011q\u0015\u0012\u0011\u0007Q\t\u0019\f\u0002\u0004H\u0003K\u0013\r\u0001\u0013\t\u0005#&\u000b\t\fC\u0004\u0002:\u0002!\t&a/\u0002\u00139,wOR8sG\u0016$W\u0003BA_\u0003\u0007$B!a0\u0002FB!\u0011+SAa!\r!\u00121\u0019\u0003\u0007\u000f\u0006]&\u0019A\f\t\u0013\u0005\u001d\u0017q\u0017CA\u0002\u0005%\u0017A\u0001=t!\u0015a\u00111ZAh\u0013\r\tiM\u0002\u0002\ty\tLh.Y7f}A)\u0001#!5\u0002B&\u0019\u00111\u001b\u0003\u0003\r\u001d+gnU3r\u0011\u001d\t9\u000e\u0001C)\u00033\f1B\\3x\u0003B\u0004XM\u001c3fIV!\u00111\\Aq)\u0011\ti.a9\u0011\tEK\u0015q\u001c\t\u0004)\u0005\u0005HAB$\u0002V\n\u0007\u0001\n\u0003\u0005\u0002f\u0006U\u0007\u0019AAt\u0003\u0011!\b.\u0019;\u0011\u000bA\tI/a8\n\u0007\u0005-HA\u0001\bHK:$&/\u0019<feN\f'\r\\3\t\u000f\u0005=\b\u0001\"\u0015\u0002r\u0006Ia.Z<NCB\u0004X\rZ\u000b\u0005\u0003g\fI\u0010\u0006\u0003\u0002v\u0006m\b\u0003B)J\u0003o\u00042\u0001FA}\t\u00199\u0015Q\u001eb\u0001/!A\u0011Q`Aw\u0001\u0004\ty0A\u0001g!\u0019a!\u0011A\n\u0002x&\u0019!1\u0001\u0004\u0003\u0013\u0019+hn\u0019;j_:\f\u0004b\u0002B\u0004\u0001\u0011E#\u0011B\u0001\u000e]\u0016<h\t\\1u\u001b\u0006\u0004\b/\u001a3\u0016\t\t-!\u0011\u0003\u000b\u0005\u0005\u001b\u0011\u0019\u0002\u0005\u0003R\u0013\n=\u0001c\u0001\u000b\u0003\u0012\u00111qI!\u0002C\u0002]A\u0001\"!@\u0003\u0006\u0001\u0007!Q\u0003\t\u0007\u0019\t\u00051Ca\u0006\u0011\u000bA\u0011IBa\u0004\n\u0007\tmAA\u0001\nHK:$&/\u0019<feN\f'\r\\3P]\u000e,\u0007b\u0002B\u0010\u0001\u0011E#\u0011E\u0001\f]\u0016<h)\u001b7uKJ,G\r\u0006\u0003\u0002\u0002\t\r\u0002\u0002\u0003B\u0013\u0005;\u0001\rAa\n\u0002\u0003A\u0004b\u0001\u0004B\u0001'\t%\u0002c\u0001\u0007\u0003,%\u0019!Q\u0006\u0004\u0003\u000f\t{w\u000e\\3b]\"9!\u0011\u0007\u0001\u0005R\tM\u0012!\u00038foNc\u0017nY3e)\u0011\t\tA!\u000e\t\u0011\t]\"q\u0006a\u0001\u0005s\t!bX3oIB|\u0017N\u001c;t!\r\u0001%1H\u0005\u0004\u0005{\t%!D*mS\u000e,\u0017J\u001c;feZ\fG\u000eC\u0004\u0003B\u0001!\tFa\u0011\u0002\u001f9,w\u000f\u0012:paB,Gm\u00165jY\u0016$B!!\u0001\u0003F!A!Q\u0005B \u0001\u0004\u00119\u0003C\u0004\u0003J\u0001!\tFa\u0013\u0002\u001b9,w\u000fV1lK:<\u0006.\u001b7f)\u0011\t\tA!\u0014\t\u0011\t\u0015\"q\ta\u0001\u0005OAqA!\u0015\u0001\t#\u0012\u0019&A\u0005oK^T\u0016\u000e\u001d9fIV!!Q\u000bB/)\u0011\u00119Fa\u0018\u0011\tEK%\u0011\f\t\u0007\u0019\u0005-4Ca\u0017\u0011\u0007Q\u0011i\u0006\u0002\u0004H\u0005\u001f\u0012\ra\u0006\u0005\t\u0003K\u0014y\u00051\u0001\u0003bA)\u0001Ca\u0019\u0003\\%\u0019!Q\r\u0003\u0003\u0017\u001d+g.\u0013;fe\u0006\u0014G.\u001a\u0005\b\u0005S\u0002A\u0011\u000bB6\u00031qWm\u001e.jaB,G-\u00117m+\u0019\u0011iG!\u001e\u0003zQA!q\u000eB>\u0005\u007f\u0012\u0019\t\u0005\u0003R\u0013\nE\u0004c\u0002\u0007\u0002l\tM$q\u000f\t\u0004)\tUDaBA@\u0005O\u0012\r\u0001\u0013\t\u0004)\teDAB$\u0003h\t\u0007q\u0003\u0003\u0005\u0002f\n\u001d\u0004\u0019\u0001B?!\u0015\u0001\"1\rB<\u0011!\u0011\tIa\u001aA\u0002\tM\u0014!C0uQ&\u001cX\t\\3n\u0011!\u0011)Ia\u001aA\u0002\t]\u0014!C0uQ\u0006$X\t\\3n\u0011\u001d\u0011I\t\u0001C)\u0005\u0017\u000b1B\\3x%\u00164XM]:fIV\u0011\u0011\u0011\u0001\u0005\b\u0005\u001f\u0003A\u0011\u000bBI\u0003)qWm\u001e)bi\u000eDW\rZ\u000b\u0005\u0005'\u0013I\n\u0006\u0005\u0003\u0016\nm%Q\u0015BV!\u0011\t\u0016Ja&\u0011\u0007Q\u0011I\n\u0002\u0004H\u0005\u001b\u0013\r\u0001\u0013\u0005\t\u0005;\u0013i\t1\u0001\u0003 \u0006)qL\u001a:p[B\u0019AB!)\n\u0007\t\rfAA\u0002J]RD\u0001Ba*\u0003\u000e\u0002\u0007!\u0011V\u0001\u0007?B\fGo\u00195\u0011\u000bA\t\tNa&\t\u0011\t5&Q\u0012a\u0001\u0005?\u000b\u0011b\u0018:fa2\f7-\u001a3\t\u000f\tE\u0006\u0001\"\u0015\u00034\u0006aa.Z<Qe\u0016\u0004XM\u001c3fIV!!Q\u0017B^)\u0011\u00119L!0\u0011\tEK%\u0011\u0018\t\u0004)\tmFAB$\u00030\n\u0007\u0001\n\u0003\u0005\u0003@\n=\u0006\u0019\u0001B]\u0003\u0011)G.Z7\t\u000f\t\r\u0007\u0001\"\u0011\u0003F\u0006a1\u000f\u001e:j]\u001e\u0004&/\u001a4jqV\tq\u000b")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike.class */
public interface StreamViewLike<A, Coll, This extends StreamView<A, Coll> & StreamViewLike<A, Coll, This>> extends SeqView<A, Coll> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$AbstractTransformed.class */
    public abstract class AbstractTransformed<B> extends SeqViewLike<A, Coll, This>.AbstractTransformed<B> implements StreamViewLike<A, Coll, This>.Transformed<B> {
        public AbstractTransformed(StreamViewLike<A, Coll, This> streamViewLike) {
            super(streamViewLike);
            Cclass.$init$(this);
            Transformed.Cclass.$init$(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.TraversableViewLike
        public <B, That> That force(CanBuildFrom<Coll, B, That> canBuildFrom) {
            return (That) Cclass.force(this, canBuildFrom);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.PartialFunction
        public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
            return isDefinedAt(BoxesRunTime.unboxToInt(obj));
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newAppended(GenTraversable<B> genTraversable) {
            return Cclass.newAppended(this, genTraversable);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newDroppedWhile(Function1<B, Object> function1) {
            return Cclass.newDroppedWhile(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newFiltered(Function1<B, Object> function1) {
            return Cclass.newFiltered(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newFlatMapped(Function1<B, GenTraversableOnce<B>> function1) {
            return Cclass.newFlatMapped(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newForced(Function0<GenSeq<B>> function0) {
            return Cclass.newForced(this, function0);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public <B> StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newMapped(Function1<B, B> function1) {
            return Cclass.newMapped(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike
        public <B> StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newPatched(int i, GenSeq<B> genSeq, int i2) {
            return Cclass.newPatched(this, i, genSeq, i2);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike
        public <B> StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newPrepended(B b) {
            return Cclass.newPrepended(this, b);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike
        public StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newReversed() {
            return Cclass.newReversed(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newSliced(SliceInterval sliceInterval) {
            return Cclass.newSliced(this, sliceInterval);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
        public StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<B> newTakenWhile(Function1<B, Object> function1) {
            return Cclass.newTakenWhile(this, function1);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike
        public <B> StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<Tuple2<B, B>> newZipped(GenIterable<B> genIterable) {
            return Cclass.newZipped(this, genIterable);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.IterableViewLike
        public <A1, B> StreamViewLike<B, Coll, StreamView<B, Coll>>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b) {
            return Cclass.newZippedAll(this, genIterable, a1, b);
        }

        /* renamed from: scala$collection$immutable$StreamViewLike$AbstractTransformed$$$outer */
        public /* synthetic */ StreamViewLike scala$collection$immutable$StreamViewLike$Transformed$$$outer() {
            return (StreamViewLike) this.$outer;
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
        public String stringPrefix() {
            return Cclass.stringPrefix(this);
        }

        @Override // scala.collection.SeqViewLike.AbstractTransformed, scala.collection.SeqViewLike.Transformed, scala.Function1
        public String toString() {
            return Transformed.Cclass.toString(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Appended.class */
    public interface Appended<B> extends SeqViewLike<A, Coll, This>.Appended<B>, StreamViewLike<A, Coll, This>.Transformed<B> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$DroppedWhile.class */
    public interface DroppedWhile extends SeqViewLike<A, Coll, This>.DroppedWhile, StreamViewLike<A, Coll, This>.Transformed<A> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$EmptyView.class */
    public interface EmptyView extends StreamViewLike<A, Coll, This>.Transformed<Nothing$>, SeqViewLike<A, Coll, This>.EmptyView {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Filtered.class */
    public interface Filtered extends SeqViewLike<A, Coll, This>.Filtered, StreamViewLike<A, Coll, This>.Transformed<A> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$FlatMapped.class */
    public interface FlatMapped<B> extends SeqViewLike<A, Coll, This>.FlatMapped<B>, StreamViewLike<A, Coll, This>.Transformed<B> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Forced.class */
    public interface Forced<B> extends SeqViewLike<A, Coll, This>.Forced<B>, StreamViewLike<A, Coll, This>.Transformed<B> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Mapped.class */
    public interface Mapped<B> extends SeqViewLike<A, Coll, This>.Mapped<B>, StreamViewLike<A, Coll, This>.Transformed<B> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Patched.class */
    public interface Patched<B> extends SeqViewLike<A, Coll, This>.Patched<B>, StreamViewLike<A, Coll, This>.Transformed<B> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Prepended.class */
    public interface Prepended<B> extends SeqViewLike<A, Coll, This>.Prepended<B>, StreamViewLike<A, Coll, This>.Transformed<B> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Reversed.class */
    public interface Reversed extends SeqViewLike<A, Coll, This>.Reversed, StreamViewLike<A, Coll, This>.Transformed<A> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Sliced.class */
    public interface Sliced extends SeqViewLike<A, Coll, This>.Sliced, StreamViewLike<A, Coll, This>.Transformed<A> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$TakenWhile.class */
    public interface TakenWhile extends SeqViewLike<A, Coll, This>.TakenWhile, StreamViewLike<A, Coll, This>.Transformed<A> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Transformed.class */
    public interface Transformed<B> extends StreamView<B, Coll>, SeqViewLike<A, Coll, This>.Transformed<B> {

        /* renamed from: scala.collection.immutable.StreamViewLike$Transformed$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Transformed$class.class */
        public abstract class Cclass {
            public static void $init$(Transformed transformed) {
            }

            public static String toString(Transformed transformed) {
                return transformed.viewToString();
            }
        }

        /* synthetic */ StreamViewLike scala$collection$immutable$StreamViewLike$Transformed$$$outer();

        @Override // scala.Function1
        String toString();
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$Zipped.class */
    public interface Zipped<B> extends SeqViewLike<A, Coll, This>.Zipped<B>, StreamViewLike<A, Coll, This>.Transformed<Tuple2<A, B>> {
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$ZippedAll.class */
    public interface ZippedAll<A1, B> extends SeqViewLike<A, Coll, This>.ZippedAll<A1, B>, StreamViewLike<A, Coll, This>.Transformed<Tuple2<A1, B>> {
    }

    /* renamed from: scala.collection.immutable.StreamViewLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StreamViewLike$class.class */
    public abstract class Cclass {
        public static void $init$(StreamViewLike streamViewLike) {
        }

        public static Object force(StreamViewLike streamViewLike, CanBuildFrom canBuildFrom) {
            return streamViewLike.iterator().toStream();
        }

        public static Transformed newAppended(StreamViewLike streamViewLike, GenTraversable genTraversable) {
            return new StreamViewLike$$anon$2(streamViewLike, genTraversable);
        }

        public static Transformed newDroppedWhile(StreamViewLike streamViewLike, Function1 function1) {
            return new StreamViewLike$$anon$7(streamViewLike, function1);
        }

        public static Transformed newFiltered(StreamViewLike streamViewLike, Function1 function1) {
            return new StreamViewLike$$anon$5(streamViewLike, function1);
        }

        public static Transformed newFlatMapped(StreamViewLike streamViewLike, Function1 function1) {
            return new StreamViewLike$$anon$4(streamViewLike, function1);
        }

        public static Transformed newForced(StreamViewLike streamViewLike, Function0 function0) {
            return new StreamViewLike$$anon$1(streamViewLike, function0);
        }

        public static Transformed newMapped(StreamViewLike streamViewLike, Function1 function1) {
            return new StreamViewLike$$anon$3(streamViewLike, function1);
        }

        public static Transformed newPatched(StreamViewLike streamViewLike, int i, GenSeq genSeq, int i2) {
            return new StreamViewLike$$anon$11(streamViewLike, i, genSeq, i2);
        }

        public static Transformed newPrepended(StreamViewLike streamViewLike, Object obj) {
            return new StreamViewLike$$anon$12(streamViewLike, obj);
        }

        public static Transformed newReversed(StreamViewLike streamViewLike) {
            return new StreamViewLike<A, Coll, This>.Reversed(streamViewLike) { // from class: scala.collection.immutable.StreamViewLike$$anon$13
                private final /* synthetic */ StreamViewLike $outer;
                private volatile boolean bitmap$0;
                private final Object underlying;

                {
                    Objects.requireNonNull(streamViewLike);
                    this.$outer = streamViewLike;
                    Function1.Cclass.$init$(this);
                    PartialFunction.Cclass.$init$(this);
                    TraversableOnce.Cclass.$init$(this);
                    Parallelizable.Cclass.$init$(this);
                    TraversableLike.Cclass.$init$(this);
                    GenericTraversableTemplate.Cclass.$init$(this);
                    GenTraversable.Cclass.$init$(this);
                    Traversable.Cclass.$init$(this);
                    GenIterable.Cclass.$init$(this);
                    IterableLike.Cclass.$init$(this);
                    Iterable.Cclass.$init$(this);
                    GenSeqLike.Cclass.$init$(this);
                    GenSeq.Cclass.$init$(this);
                    SeqLike.Cclass.$init$(this);
                    Seq.Cclass.$init$(this);
                    ViewMkString.Cclass.$init$(this);
                    TraversableViewLike.Cclass.$init$(this);
                    IterableViewLike.Cclass.$init$(this);
                    SeqViewLike.Cclass.$init$(this);
                    TraversableViewLike.Transformed.Cclass.$init$(this);
                    IterableViewLike.Transformed.Cclass.$init$(this);
                    SeqViewLike.Transformed.Cclass.$init$(this);
                    SeqViewLike.Reversed.Cclass.$init$(this);
                    StreamViewLike.Cclass.$init$(this);
                    StreamViewLike.Transformed.Cclass.$init$(this);
                }

                private Object underlying$lzycompute() {
                    synchronized (this) {
                        if (!this.bitmap$0) {
                            this.underlying = TraversableViewLike.Transformed.Cclass.underlying(this);
                            this.bitmap$0 = true;
                        }
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    }
                    return this.underlying;
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $colon$bslash(B b, Function2<A, B, B> function2) {
                    Object foldRight;
                    foldRight = foldRight(b, function2);
                    return (B) foldRight;
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That $colon$plus(B b, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.$colon$plus(this, b, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $div$colon(B b, Function2<B, A, B> function2) {
                    Object foldLeft;
                    foldLeft = foldLeft(b, function2);
                    return (B) foldLeft;
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That $plus$colon(B b, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) newPrepended((StreamViewLike$$anon$13) b);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(Traversable<B> traversable, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (Traversable) traversable, (CanBuildFrom) canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public StringBuilder addString(StringBuilder stringBuilder) {
                    return TraversableOnce.Cclass.addString(this, stringBuilder);
                }

                @Override // scala.collection.TraversableOnce
                public StringBuilder addString(StringBuilder stringBuilder, String str) {
                    return TraversableOnce.Cclass.addString(this, stringBuilder, str);
                }

                @Override // scala.collection.TraversableOnce
                public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
                    return ViewMkString.Cclass.addString(this, stringBuilder, str, str2, str3);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
                    return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
                }

                @Override // scala.PartialFunction, scala.Function1
                public <C> PartialFunction<Object, C> andThen(Function1<A, C> function1) {
                    return PartialFunction.Cclass.andThen(this, function1);
                }

                @Override // scala.collection.SeqViewLike.Reversed, scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
                public Object apply(int i) {
                    return SeqViewLike.Reversed.Cclass.apply(this, i);
                }

                @Override // scala.Function1
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    return apply(BoxesRunTime.unboxToInt(obj));
                }

                @Override // scala.Function1
                public double apply$mcDD$sp(double d) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToDouble(d)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDF$sp(float f) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToFloat(f)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDI$sp(int i) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToInteger(i)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDJ$sp(long j) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToLong(j)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public float apply$mcFD$sp(double d) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToDouble(d)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFF$sp(float f) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToFloat(f)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFI$sp(int i) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToInteger(i)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFJ$sp(long j) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToLong(j)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public int apply$mcID$sp(double d) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToDouble(d)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIF$sp(float f) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToFloat(f)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcII$sp(int i) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToInteger(i)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIJ$sp(long j) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToLong(j)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public long apply$mcJD$sp(double d) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToDouble(d)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJF$sp(float f) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToFloat(f)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJI$sp(int i) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToInteger(i)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJJ$sp(long j) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToLong(j)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public void apply$mcVD$sp(double d) {
                    apply((StreamViewLike$$anon$13) BoxesRunTime.boxToDouble(d));
                }

                @Override // scala.Function1
                public void apply$mcVF$sp(float f) {
                    apply((StreamViewLike$$anon$13) BoxesRunTime.boxToFloat(f));
                }

                @Override // scala.Function1
                public void apply$mcVI$sp(int i) {
                    apply((StreamViewLike$$anon$13) BoxesRunTime.boxToInteger(i));
                }

                @Override // scala.Function1
                public void apply$mcVJ$sp(long j) {
                    apply((StreamViewLike$$anon$13) BoxesRunTime.boxToLong(j));
                }

                @Override // scala.Function1
                public boolean apply$mcZD$sp(double d) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToDouble(d)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZF$sp(float f) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToFloat(f)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZI$sp(int i) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToInteger(i)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZJ$sp(long j) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((StreamViewLike$$anon$13) BoxesRunTime.boxToLong(j)));
                    return unboxToBoolean;
                }

                @Override // scala.PartialFunction
                public Object applyOrElse(Object obj, Function1 function1) {
                    return PartialFunction.Cclass.applyOrElse(this, obj, function1);
                }

                @Override // scala.collection.IterableLike, scala.Equals
                public boolean canEqual(Object obj) {
                    return IterableLike.Cclass.canEqual(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public Iterator<StreamView<A, Coll>> combinations(int i) {
                    return SeqViewLike.Cclass.combinations(this, i);
                }

                @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public GenericCompanion<Seq> companion() {
                    return Seq.Cclass.companion(this);
                }

                @Override // scala.Function1
                public <A> Function1<A, A> compose(Function1<A, Object> function1) {
                    return Function1.Cclass.compose(this, function1);
                }

                @Override // scala.collection.SeqLike
                public <A1> boolean contains(A1 a1) {
                    return SeqLike.Cclass.contains(this, a1);
                }

                @Override // scala.collection.SeqLike
                public <B> boolean containsSlice(GenSeq<B> genSeq) {
                    return SeqLike.Cclass.containsSlice(this, genSeq);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> void copyToArray(Object obj) {
                    TraversableOnce.Cclass.copyToArray(this, obj);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> void copyToArray(Object obj, int i) {
                    TraversableOnce.Cclass.copyToArray(this, obj, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> void copyToArray(Object obj, int i, int i2) {
                    IterableLike.Cclass.copyToArray(this, obj, i, i2);
                }

                @Override // scala.collection.TraversableOnce
                public <B> void copyToBuffer(Buffer<B> buffer) {
                    TraversableOnce.Cclass.copyToBuffer(this, buffer);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
                    return SeqLike.Cclass.corresponds(this, genSeq, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int count(Function1<A, Object> function1) {
                    return TraversableOnce.Cclass.count(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public SeqView diff(GenSeq genSeq) {
                    return SeqViewLike.Cclass.diff(this, genSeq);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public SeqView distinct() {
                    return SeqViewLike.Cclass.distinct(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public IterableView drop(int i) {
                    return IterableViewLike.Cclass.drop(this, i);
                }

                @Override // scala.collection.IterableLike
                public IterableView dropRight(int i) {
                    return IterableViewLike.Cclass.dropRight(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public TraversableView dropWhile(Function1 function1) {
                    return TraversableViewLike.Cclass.dropWhile(this, function1);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B> boolean endsWith(GenSeq<B> genSeq) {
                    return SeqLike.Cclass.endsWith(this, genSeq);
                }

                @Override // scala.Equals
                public boolean equals(Object obj) {
                    return GenSeqLike.Cclass.equals(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean exists(Function1<A, Object> function1) {
                    return IterableLike.Cclass.exists(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public TraversableView filter(Function1 function1) {
                    return TraversableViewLike.Cclass.filter(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
                public TraversableView filterNot(Function1 function1) {
                    return TraversableViewLike.Cclass.filterNot(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Option<A> find(Function1<A, Object> function1) {
                    return IterableLike.Cclass.find(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
                public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.flatMap(this, function1, canBuildFrom);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> GenTraversable flatten(Function1<A, GenTraversableOnce<B>> function1) {
                    return TraversableViewLike.Cclass.flatten(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
                    return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B foldLeft(B b, Function2<B, A, B> function2) {
                    return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B foldRight(B b, Function2<A, B, B> function2) {
                    return (B) IterableLike.Cclass.foldRight(this, b, function2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean forall(Function1<A, Object> function1) {
                    return IterableLike.Cclass.forall(this, function1);
                }

                @Override // scala.collection.TraversableViewLike
                public <B, That> That force(CanBuildFrom<Coll, B, That> canBuildFrom) {
                    return (That) StreamViewLike.Cclass.force(this, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public <U> void foreach(Function1<A, U> function1) {
                    IterableViewLike.Transformed.Cclass.foreach(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> Builder<B, Seq<B>> genericBuilder() {
                    return GenericTraversableTemplate.Cclass.genericBuilder(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <K> Map<K, StreamView<A, Coll>> groupBy(Function1<A, K> function1) {
                    return TraversableViewLike.Cclass.groupBy(this, function1);
                }

                @Override // scala.collection.IterableLike
                public Iterator<StreamView<A, Coll>> grouped(int i) {
                    return IterableViewLike.Cclass.grouped(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean hasDefiniteSize() {
                    return TraversableLike.Cclass.hasDefiniteSize(this);
                }

                @Override // scala.collection.GenSeqLike
                public int hashCode() {
                    return GenSeqLike.Cclass.hashCode(this);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public A head() {
                    return IterableLike.Cclass.head(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<A> headOption() {
                    return TraversableViewLike.Transformed.Cclass.headOption(this);
                }

                @Override // scala.collection.GenSeqLike
                public <B> int indexOf(B b) {
                    return GenSeqLike.Cclass.indexOf(this, b);
                }

                @Override // scala.collection.GenSeqLike
                public <B> int indexOf(B b, int i) {
                    return GenSeqLike.Cclass.indexOf(this, b, i);
                }

                @Override // scala.collection.SeqLike
                public <B> int indexOfSlice(GenSeq<B> genSeq) {
                    return SeqLike.Cclass.indexOfSlice(this, genSeq);
                }

                @Override // scala.collection.SeqLike
                public <B> int indexOfSlice(GenSeq<B> genSeq, int i) {
                    return SeqLike.Cclass.indexOfSlice(this, genSeq, i);
                }

                @Override // scala.collection.GenSeqLike
                public int indexWhere(Function1<A, Object> function1) {
                    return GenSeqLike.Cclass.indexWhere(this, function1);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public int indexWhere(Function1<A, Object> function1, int i) {
                    return SeqLike.Cclass.indexWhere(this, function1, i);
                }

                @Override // scala.collection.SeqLike
                public Range indices() {
                    return SeqLike.Cclass.indices(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public TraversableView init() {
                    return TraversableViewLike.Cclass.init(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<StreamView<A, Coll>> inits() {
                    return TraversableViewLike.Cclass.inits(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public SeqView intersect(GenSeq genSeq) {
                    return SeqViewLike.Cclass.intersect(this, genSeq);
                }

                @Override // scala.collection.GenSeqLike
                public boolean isDefinedAt(int i) {
                    return GenSeqLike.Cclass.isDefinedAt(this, i);
                }

                @Override // scala.PartialFunction
                public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
                    return isDefinedAt(BoxesRunTime.unboxToInt(obj));
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public boolean isEmpty() {
                    return IterableViewLike.Transformed.Cclass.isEmpty(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
                public final boolean isTraversableAgain() {
                    return TraversableLike.Cclass.isTraversableAgain(this);
                }

                @Override // scala.collection.SeqViewLike.Reversed, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
                public Iterator<Object> iterator() {
                    return SeqViewLike.Reversed.Cclass.iterator(this);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public A last() {
                    return TraversableLike.Cclass.last(this);
                }

                @Override // scala.collection.GenSeqLike
                public <B> int lastIndexOf(B b) {
                    return GenSeqLike.Cclass.lastIndexOf(this, b);
                }

                @Override // scala.collection.GenSeqLike
                public <B> int lastIndexOf(B b, int i) {
                    return GenSeqLike.Cclass.lastIndexOf(this, b, i);
                }

                @Override // scala.collection.SeqLike
                public <B> int lastIndexOfSlice(GenSeq<B> genSeq) {
                    return SeqLike.Cclass.lastIndexOfSlice(this, genSeq);
                }

                @Override // scala.collection.SeqLike
                public <B> int lastIndexOfSlice(GenSeq<B> genSeq, int i) {
                    return SeqLike.Cclass.lastIndexOfSlice(this, genSeq, i);
                }

                @Override // scala.collection.GenSeqLike
                public int lastIndexWhere(Function1<A, Object> function1) {
                    return GenSeqLike.Cclass.lastIndexWhere(this, function1);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public int lastIndexWhere(Function1<A, Object> function1, int i) {
                    return SeqLike.Cclass.lastIndexWhere(this, function1, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<A> lastOption() {
                    return TraversableViewLike.Transformed.Cclass.lastOption(this);
                }

                @Override // scala.collection.SeqViewLike.Reversed, scala.collection.SeqViewLike.Transformed, scala.collection.GenSeqLike
                public int length() {
                    return SeqViewLike.Reversed.Cclass.length(this);
                }

                @Override // scala.collection.SeqLike
                public int lengthCompare(int i) {
                    return SeqLike.Cclass.lengthCompare(this, i);
                }

                @Override // scala.PartialFunction
                public Function1<Object, Option<A>> lift() {
                    return PartialFunction.Cclass.lift(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
                public <B, That> That map(Function1<A, B> function1, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.map(this, function1, canBuildFrom);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A max(Ordering<B> ordering) {
                    return TraversableOnce.Cclass.max(this, ordering);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A maxBy(Function1<A, B> function1, Ordering<B> ordering) {
                    return TraversableOnce.Cclass.maxBy(this, function1, ordering);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A min(Ordering<B> ordering) {
                    return TraversableOnce.Cclass.min(this, ordering);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A minBy(Function1<A, B> function1, Ordering<B> ordering) {
                    return TraversableOnce.Cclass.minBy(this, function1, ordering);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString() {
                    return ViewMkString.Cclass.mkString(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString(String str) {
                    return ViewMkString.Cclass.mkString(this, str);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString(String str, String str2, String str3) {
                    return ViewMkString.Cclass.mkString(this, str, str2, str3);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<B> newAppended(GenTraversable<B> genTraversable) {
                    return StreamViewLike.Cclass.newAppended(this, genTraversable);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
                public Builder<A, StreamView<A, Coll>> newBuilder() {
                    return TraversableViewLike.Cclass.newBuilder(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Coll, StreamView<A, Coll>>.Transformed<A> newDropped(int i) {
                    return SeqViewLike.Cclass.newDropped(this, i);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<A> newDroppedWhile(Function1<A, Object> function1) {
                    return StreamViewLike.Cclass.newDroppedWhile(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<A> newFiltered(Function1<A, Object> function1) {
                    return StreamViewLike.Cclass.newFiltered(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<B> newFlatMapped(Function1<A, GenTraversableOnce<B>> function1) {
                    return StreamViewLike.Cclass.newFlatMapped(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<B> newForced(Function0<GenSeq<B>> function0) {
                    return StreamViewLike.Cclass.newForced(this, function0);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<B> newMapped(Function1<A, B> function1) {
                    return StreamViewLike.Cclass.newMapped(this, function1);
                }

                @Override // scala.collection.SeqViewLike
                public <B> StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<B> newPatched(int i, GenSeq<B> genSeq, int i2) {
                    return StreamViewLike.Cclass.newPatched(this, i, genSeq, i2);
                }

                @Override // scala.collection.SeqViewLike
                public <B> StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<B> newPrepended(B b) {
                    return StreamViewLike.Cclass.newPrepended(this, b);
                }

                @Override // scala.collection.SeqViewLike
                public StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<A> newReversed() {
                    return StreamViewLike.Cclass.newReversed(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<A> newSliced(SliceInterval sliceInterval) {
                    return StreamViewLike.Cclass.newSliced(this, sliceInterval);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Coll, StreamView<A, Coll>>.Transformed<A> newTaken(int i) {
                    return SeqViewLike.Cclass.newTaken(this, i);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<A> newTakenWhile(Function1<A, Object> function1) {
                    return StreamViewLike.Cclass.newTakenWhile(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
                public <B> StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<Tuple2<A, B>> newZipped(GenIterable<B> genIterable) {
                    return StreamViewLike.Cclass.newZipped(this, genIterable);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
                public <A1, B> StreamViewLike<A, Coll, StreamView<A, Coll>>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b) {
                    return StreamViewLike.Cclass.newZippedAll(this, genIterable, a1, b);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean nonEmpty() {
                    return TraversableOnce.Cclass.nonEmpty(this);
                }

                @Override // scala.PartialFunction
                public <A1, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
                    return PartialFunction.Cclass.orElse(this, partialFunction);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That padTo(int i, B b, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.padTo(this, i, b, canBuildFrom);
                }

                @Override // scala.collection.Parallelizable
                public Parallel par() {
                    return Parallelizable.Cclass.par(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
                public Combiner<A, ParSeq<A>> parCombiner() {
                    return SeqLike.Cclass.parCombiner(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<StreamView<A, Coll>, StreamView<A, Coll>> partition(Function1<A, Object> function1) {
                    return TraversableViewLike.Cclass.partition(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public Iterator<StreamView<A, Coll>> permutations() {
                    return SeqViewLike.Cclass.permutations(this);
                }

                @Override // scala.collection.GenSeqLike
                public int prefixLength(Function1<A, Object> function1) {
                    return GenSeqLike.Cclass.prefixLength(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B product(Numeric<B> numeric) {
                    return (B) TraversableOnce.Cclass.product(this, numeric);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
                    return (A1) TraversableOnce.Cclass.reduce(this, function2);
                }

                @Override // scala.collection.TraversableOnce
                public <B> B reduceLeft(Function2<B, A, B> function2) {
                    return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceLeftOption(Function2<B, A, B> function2) {
                    return TraversableOnce.Cclass.reduceLeftOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                    return TraversableOnce.Cclass.reduceOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B reduceRight(Function2<A, B, B> function2) {
                    return (B) IterableLike.Cclass.reduceRight(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
                    return TraversableOnce.Cclass.reduceRightOption(this, function2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
                public Object repr() {
                    return TraversableLike.Cclass.repr(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public SeqView reverse() {
                    return SeqViewLike.Cclass.reverse(this);
                }

                @Override // scala.collection.SeqLike
                public Iterator<A> reverseIterator() {
                    return SeqLike.Cclass.reverseIterator(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That reverseMap(Function1<A, B> function1, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.reverseMap(this, function1, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public List<A> reversed() {
                    return TraversableOnce.Cclass.reversed(this);
                }

                @Override // scala.PartialFunction
                public <U> Function1<Object, Object> runWith(Function1<A, U> function1) {
                    return PartialFunction.Cclass.runWith(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B> boolean sameElements(GenIterable<B> genIterable) {
                    return IterableLike.Cclass.sameElements(this, genIterable);
                }

                @Override // scala.collection.IterableViewLike.Transformed
                public /* synthetic */ IterableViewLike scala$collection$IterableViewLike$Transformed$$$outer() {
                    return this.$outer;
                }

                @Override // scala.collection.SeqViewLike.Reversed
                public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Reversed$$$outer() {
                    return this.$outer;
                }

                @Override // scala.collection.SeqViewLike.Transformed
                public /* synthetic */ SeqViewLike scala$collection$SeqViewLike$Transformed$$$outer() {
                    return this.$outer;
                }

                @Override // scala.collection.TraversableViewLike
                public /* synthetic */ TraversableView scala$collection$TraversableViewLike$$super$tail() {
                    return (TraversableView) TraversableLike.Cclass.tail(this);
                }

                @Override // scala.collection.TraversableViewLike.Transformed
                public /* synthetic */ TraversableViewLike scala$collection$TraversableViewLike$Transformed$$$outer() {
                    return this.$outer;
                }

                @Override // scala.collection.immutable.StreamViewLike.Transformed
                public /* synthetic */ StreamViewLike scala$collection$immutable$StreamViewLike$Transformed$$$outer() {
                    return this.$outer;
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.scanRight(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public int segmentLength(Function1<A, Object> function1, int i) {
                    return SeqLike.Cclass.segmentLength(this, function1, i);
                }

                @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public Seq<A> seq() {
                    return Seq.Cclass.seq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int size() {
                    return SeqLike.Cclass.size(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public TraversableView slice(int i, int i2) {
                    return TraversableViewLike.Cclass.slice(this, i, i2);
                }

                @Override // scala.collection.TraversableLike
                public Object sliceWithKnownBound(int i, int i2) {
                    return TraversableLike.Cclass.sliceWithKnownBound(this, i, i2);
                }

                @Override // scala.collection.TraversableLike
                public Object sliceWithKnownDelta(int i, int i2, int i3) {
                    return TraversableLike.Cclass.sliceWithKnownDelta(this, i, i2, i3);
                }

                @Override // scala.collection.IterableLike
                public Iterator<StreamView<A, Coll>> sliding(int i) {
                    return IterableViewLike.Cclass.sliding(this, i);
                }

                @Override // scala.collection.IterableLike
                public Iterator<StreamView<A, Coll>> sliding(int i, int i2) {
                    return IterableViewLike.Cclass.sliding(this, i, i2);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public SeqView sortBy(Function1 function1, Ordering ordering) {
                    return SeqViewLike.Cclass.sortBy(this, function1, ordering);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public SeqView sortWith(Function2 function2) {
                    return SeqViewLike.Cclass.sortWith(this, function2);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.SeqLike
                public SeqView sorted(Ordering ordering) {
                    return SeqViewLike.Cclass.sorted(this, ordering);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<StreamView<A, Coll>, StreamView<A, Coll>> span(Function1<A, Object> function1) {
                    return TraversableViewLike.Cclass.span(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<StreamView<A, Coll>, StreamView<A, Coll>> splitAt(int i) {
                    return TraversableViewLike.Cclass.splitAt(this, i);
                }

                @Override // scala.collection.GenSeqLike
                public <B> boolean startsWith(GenSeq<B> genSeq) {
                    return GenSeqLike.Cclass.startsWith(this, genSeq);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
                    return SeqLike.Cclass.startsWith(this, genSeq, i);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
                public String stringPrefix() {
                    return StreamViewLike.Cclass.stringPrefix(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B sum(Numeric<B> numeric) {
                    return (B) TraversableOnce.Cclass.sum(this, numeric);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public TraversableView tail() {
                    return TraversableViewLike.Cclass.tail(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<StreamView<A, Coll>> tails() {
                    return TraversableViewLike.Cclass.tails(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public IterableView take(int i) {
                    return IterableViewLike.Cclass.take(this, i);
                }

                @Override // scala.collection.IterableLike
                public IterableView takeRight(int i) {
                    return IterableViewLike.Cclass.takeRight(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public TraversableView takeWhile(Function1 function1) {
                    return TraversableViewLike.Cclass.takeWhile(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Seq<A> thisCollection() {
                    return SeqLike.Cclass.thisCollection(this);
                }

                @Override // scala.collection.ViewMkString
                public Seq<A> thisSeq() {
                    return ViewMkString.Cclass.thisSeq(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                /* renamed from: to */
                public <Col> Col mo1to(CanBuildFrom<Nothing$, A, Col> canBuildFrom) {
                    return (Col) TraversableLike.Cclass.m184to(this, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Object toArray(ClassTag<B> classTag) {
                    return TraversableOnce.Cclass.toArray(this, classTag);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Buffer<B> toBuffer() {
                    return TraversableOnce.Cclass.toBuffer(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Seq toCollection(Object obj) {
                    return SeqLike.Cclass.toCollection(this, obj);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public IndexedSeq<A> toIndexedSeq() {
                    return TraversableOnce.Cclass.toIndexedSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Iterable<A> toIterable() {
                    return IterableLike.Cclass.toIterable(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Iterator<A> toIterator() {
                    return IterableLike.Cclass.toIterator(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public List<A> toList() {
                    return TraversableOnce.Cclass.toList(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <T, U> Map<T, U> toMap(Predef$$less$colon$less<A, Tuple2<T, U>> predef$$less$colon$less) {
                    return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
                public Seq<A> toSeq() {
                    return SeqLike.Cclass.toSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
                public <B> Set<B> toSet() {
                    return TraversableOnce.Cclass.toSet(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Stream<A> toStream() {
                    return IterableLike.Cclass.toStream(this);
                }

                @Override // scala.collection.SeqViewLike.Transformed, scala.Function1
                public String toString() {
                    return StreamViewLike.Transformed.Cclass.toString(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Traversable<A> toTraversable() {
                    return TraversableLike.Cclass.toTraversable(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Vector<A> toVector() {
                    return TraversableOnce.Cclass.toVector(this);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public GenTraversable transpose(Function1 function1) {
                    return GenericTraversableTemplate.Cclass.transpose(this, function1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.TraversableViewLike
                public Coll underlying() {
                    return this.bitmap$0 ? this.underlying : underlying$lzycompute();
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.union(this, genSeq, canBuildFrom);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<A, Tuple2<A1, A2>> function1) {
                    return TraversableViewLike.Cclass.unzip(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<A, Tuple3<A1, A2, A3>> function1) {
                    return TraversableViewLike.Cclass.unzip3(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That updated(int i, B b, CanBuildFrom<StreamView<A, Coll>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.updated(this, i, b, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Object view() {
                    return SeqLike.Cclass.view(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public SeqView<A, StreamView<A, Coll>> view(int i, int i2) {
                    return SeqLike.Cclass.view(this, i, i2);
                }

                @Override // scala.collection.TraversableViewLike
                public final String viewIdString() {
                    return TraversableViewLike.Transformed.Cclass.viewIdString(this);
                }

                @Override // scala.collection.SeqViewLike.Reversed, scala.collection.TraversableViewLike
                public final String viewIdentifier() {
                    return SeqViewLike.Reversed.Cclass.viewIdentifier(this);
                }

                @Override // scala.collection.TraversableViewLike
                public String viewToString() {
                    return TraversableViewLike.Cclass.viewToString(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
                public TraversableView withFilter(Function1 function1) {
                    return TraversableViewLike.Cclass.withFilter(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<StreamView<A, Coll>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zip(this, genIterable, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<StreamView<A, Coll>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, That> That zipWithIndex(CanBuildFrom<StreamView<A, Coll>, Tuple2<A1, Object>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zipWithIndex(this, canBuildFrom);
                }
            };
        }

        public static Transformed newSliced(StreamViewLike streamViewLike, SliceInterval sliceInterval) {
            return new StreamViewLike$$anon$6(streamViewLike, sliceInterval);
        }

        public static Transformed newTakenWhile(StreamViewLike streamViewLike, Function1 function1) {
            return new StreamViewLike$$anon$8(streamViewLike, function1);
        }

        public static Transformed newZipped(StreamViewLike streamViewLike, GenIterable genIterable) {
            return new StreamViewLike$$anon$9(streamViewLike, genIterable);
        }

        public static Transformed newZippedAll(StreamViewLike streamViewLike, GenIterable genIterable, Object obj, Object obj2) {
            return new StreamViewLike$$anon$10(streamViewLike, genIterable, obj, obj2);
        }

        public static String stringPrefix(StreamViewLike streamViewLike) {
            return "StreamView";
        }
    }

    <B, That> That force(CanBuildFrom<Coll, B, That> canBuildFrom);

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
    <B> StreamViewLike<A, Coll, This>.Transformed<B> newAppended(GenTraversable<B> genTraversable);

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
    StreamViewLike<A, Coll, This>.Transformed<A> newDroppedWhile(Function1<A, Object> function1);

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
    StreamViewLike<A, Coll, This>.Transformed<A> newFiltered(Function1<A, Object> function1);

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
    <B> StreamViewLike<A, Coll, This>.Transformed<B> newFlatMapped(Function1<A, GenTraversableOnce<B>> function1);

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
    <B> StreamViewLike<A, Coll, This>.Transformed<B> newForced(Function0<GenSeq<B>> function0);

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
    <B> StreamViewLike<A, Coll, This>.Transformed<B> newMapped(Function1<A, B> function1);

    @Override // scala.collection.SeqViewLike
    <B> StreamViewLike<A, Coll, This>.Transformed<B> newPatched(int i, GenSeq<B> genSeq, int i2);

    @Override // scala.collection.SeqViewLike
    <B> StreamViewLike<A, Coll, This>.Transformed<B> newPrepended(B b);

    @Override // scala.collection.SeqViewLike
    StreamViewLike<A, Coll, This>.Transformed<A> newReversed();

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
    StreamViewLike<A, Coll, This>.Transformed<A> newSliced(SliceInterval sliceInterval);

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
    StreamViewLike<A, Coll, This>.Transformed<A> newTakenWhile(Function1<A, Object> function1);

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
    <B> StreamViewLike<A, Coll, This>.Transformed<Tuple2<A, B>> newZipped(GenIterable<B> genIterable);

    @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
    <A1, B> StreamViewLike<A, Coll, This>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b);

    @Override // scala.collection.SeqViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    String stringPrefix();
}
