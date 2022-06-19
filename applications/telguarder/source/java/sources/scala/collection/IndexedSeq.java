package scala.collection;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00194q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0006J]\u0012,\u00070\u001a3TKFT!a\u0001\u0003\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001C\n\u0014\u000b\u0001IQ\u0002H\u0012\u0011\u0005)YQ\"\u0001\u0003\n\u00051!!AB!osJ+g\rE\u0002\u000f\u001fEi\u0011AA\u0005\u0003!\t\u00111aU3r!\t\u00112\u0003\u0004\u0001\u0005\rQ\u0001AQ1\u0001\u0016\u0005\u0005\t\u0015C\u0001\f\u001a!\tQq#\u0003\u0002\u0019\t\t9aj\u001c;iS:<\u0007C\u0001\u0006\u001b\u0013\tYBAA\u0002B]f\u0004B!\b\u0011\u0012E5\taD\u0003\u0002 \u0005\u00059q-\u001a8fe&\u001c\u0017BA\u0011\u001f\u0005i9UM\\3sS\u000e$&/\u0019<feN\f'\r\\3UK6\u0004H.\u0019;f!\tq\u0001\u0001\u0005\u0003\u000fIE1\u0013BA\u0013\u0003\u00059Ie\u000eZ3yK\u0012\u001cV-\u001d'jW\u0016\u00042A\u0004\u0001\u0012\u0011\u0015A\u0003\u0001\"\u0001*\u0003\u0019!\u0013N\\5uIQ\t!\u0006\u0005\u0002\u000bW%\u0011A\u0006\u0002\u0002\u0005+:LG\u000fC\u0003/\u0001\u0011\u0005s&A\u0005d_6\u0004\u0018M\\5p]V\t\u0001\u0007E\u0002\u001ec\tJ!A\r\u0010\u0003!\u001d+g.\u001a:jG\u000e{W\u000e]1oS>t\u0007\"\u0002\u001b\u0001\t\u0003*\u0014aA:fcV\taeB\u00038\u0005!\u0005\u0001(\u0001\u0006J]\u0012,\u00070\u001a3TKF\u0004\"AD\u001d\u0007\u000b\u0005\u0011\u0001\u0012\u0001\u001e\u0014\u0005eZ\u0004cA\u000f=E%\u0011QH\b\u0002\u0012\u0013:$W\r_3e'\u0016\fh)Y2u_JL\b\"B :\t\u0003\u0001\u0015A\u0002\u001fj]&$h\bF\u00019\u0011\u001d\u0011\u0015H1A\u0005B\r\u000b1BU3vg\u0006\u0014G.Z\"C\rV\tA\tE\u0002F\rZi\u0011!O\u0005\u0003\u000f\"\u00131cR3oKJL7mQ1o\u0005VLG\u000e\u001a$s_6L!!\u0013\u0010\u0003+\u001d+g\u000e\u0016:bm\u0016\u00148/\u00192mK\u001a\u000b7\r^8ss\"11*\u000fQ\u0001\n\u0011\u000bABU3vg\u0006\u0014G.Z\"C\r\u0002BQ!T\u001d\u0005\u00029\u000b!B\\3x\u0005VLG\u000eZ3s+\tyu+F\u0001Q!\u0011\tFK\u0016-\u000e\u0003IS!a\u0015\u0002\u0002\u000f5,H/\u00192mK&\u0011QK\u0015\u0002\b\u0005VLG\u000eZ3s!\t\u0011r\u000bB\u0003\u0015\u0019\n\u0007Q\u0003E\u0002\u000f\u0001YCQAW\u001d\u0005\u0004m\u000bAbY1o\u0005VLG\u000e\u001a$s_6,\"\u0001\u00183\u0016\u0003u\u0003R!\b0aG\u0016L!a\u0018\u0010\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u0005\u0015\u000b\u0017B\u000122\u0005\u0011\u0019u\u000e\u001c7\u0011\u0005I!G!\u0002\u000bZ\u0005\u0004)\u0002c\u0001\b\u0001G\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/IndexedSeq.class */
public interface IndexedSeq<A> extends Seq<A>, IndexedSeqLike<A, IndexedSeq<A>> {

    /* renamed from: scala.collection.IndexedSeq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/IndexedSeq$class.class */
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

    @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<IndexedSeq> companion();

    @Override // scala.collection.Seq, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    IndexedSeq<A> seq();
}
