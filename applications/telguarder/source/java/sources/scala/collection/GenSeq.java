package scala.collection;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001y3q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0004HK:\u001cV-\u001d\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0003\u0011M\u0019b\u0001A\u0005\u000e;\u0001\u001a\u0003C\u0001\u0006\f\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB!abD\t\u001d\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005)9UM\\*fc2K7.\u001a\t\u0003%Ma\u0001\u0001\u0002\u0004\u0015\u0001\u0011\u0015\r!\u0006\u0002\u0002\u0003F\u0011a#\u0007\t\u0003\u0015]I!\u0001\u0007\u0003\u0003\u000f9{G\u000f[5oOB\u0011!BG\u0005\u00037\u0011\u00111!\u00118z!\rq\u0001!\u0005\t\u0004\u001dy\t\u0012BA\u0010\u0003\u0005-9UM\\%uKJ\f'\r\\3\u0011\u0005)\t\u0013B\u0001\u0012\u0005\u0005\u0019)\u0015/^1mgB!AeJ\t*\u001b\u0005)#B\u0001\u0014\u0003\u0003\u001d9WM\\3sS\u000eL!\u0001K\u0013\u00035\u001d+g.\u001a:jGR\u0013\u0018M^3sg\u0006\u0014G.\u001a+f[Bd\u0017\r^3\u0011\u00059\u0001\u0001\"B\u0016\u0001\t\u0003a\u0013A\u0002\u0013j]&$H\u0005F\u0001.!\tQa&\u0003\u00020\t\t!QK\\5u\u0011\u0015\t\u0004A\"\u00013\u0003\r\u0019X-]\u000b\u0002gA\u0019a\u0002N\t\n\u0005U\u0012!aA*fc\")q\u0007\u0001C!q\u0005I1m\\7qC:LwN\\\u000b\u0002sA\u0019AEO\u0015\n\u0005m*#\u0001E$f]\u0016\u0014\u0018nY\"p[B\fg.[8o\u000f\u0015i$\u0001#\u0001?\u0003\u00199UM\\*fcB\u0011ab\u0010\u0004\u0006\u0003\tA\t\u0001Q\n\u0003\u007f\u0005\u00032\u0001\n\"*\u0013\t\u0019UEA\u000bHK:$&/\u0019<feN\f'\r\\3GC\u000e$xN]=\t\u000b\u0015{D\u0011\u0001$\u0002\rqJg.\u001b;?)\u0005q\u0004\"\u0002%@\t\u0007I\u0015\u0001D2b]\n+\u0018\u000e\u001c3Ge>lWC\u0001&Q+\u0005Y\u0005c\u0001'N\u001f6\tq(\u0003\u0002O\u0005\n\u0019r)\u001a8fe&\u001c7)\u00198Ck&dGM\u0012:p[B\u0011!\u0003\u0015\u0003\u0006)\u001d\u0013\r!\u0006\u0005\u0006%~\"\taU\u0001\u000b]\u0016<()^5mI\u0016\u0014XC\u0001+]+\u0005)\u0006\u0003\u0002,Z7vk\u0011a\u0016\u0006\u00031\n\tq!\\;uC\ndW-\u0003\u0002[/\n9!)^5mI\u0016\u0014\bC\u0001\n]\t\u0015!\u0012K1\u0001\u0016!\rqAg\u0017")
/* loaded from: classes3-dex2jar.jar:scala/collection/GenSeq.class */
public interface GenSeq<A> extends GenSeqLike<A, GenSeq<A>>, GenIterable<A> {

    /* renamed from: scala.collection.GenSeq$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/GenSeq$class.class */
    public abstract class Cclass {
        public static void $init$(GenSeq genSeq) {
        }

        public static GenericCompanion companion(GenSeq genSeq) {
            return GenSeq$.MODULE$;
        }
    }

    @Override // scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<GenSeq> companion();

    @Override // scala.collection.GenSeqLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Seq<A> seq();
}
