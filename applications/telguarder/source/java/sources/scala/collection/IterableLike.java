package scala.collection;

import java.util.Objects;
import scala.Equals;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenIterable;
import scala.collection.GenTraversable;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableViewLike;
import scala.collection.Parallelizable;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableViewLike;
import scala.collection.ViewMkString;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.SliceInterval;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParIterable;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.package$;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.Nothing$;
import scala.runtime.RichInt$;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\t\u0015c!C\u0001\u0003!\u0003\r\ta\u0002B\"\u00051IE/\u001a:bE2,G*[6f\u0015\t\u0019A!\u0001\u0006d_2dWm\u0019;j_:T\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rAa#H\n\u0006\u0001%i\u0001c\b\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u00111!\u00118z!\tQa\"\u0003\u0002\u0010\t\t1Q)];bYN\u0004B!\u0005\n\u001595\t!!\u0003\u0002\u0014\u0005\tyAK]1wKJ\u001c\u0018M\u00197f\u0019&\\W\r\u0005\u0002\u0016-1\u0001AAB\f\u0001\t\u000b\u0007\u0001DA\u0001B#\tI\u0012\u0002\u0005\u0002\u000b5%\u00111\u0004\u0002\u0002\b\u001d>$\b.\u001b8h!\t)R\u0004\u0002\u0004\u001f\u0001\u0011\u0015\r\u0001\u0007\u0002\u0005%\u0016\u0004(\u000f\u0005\u0003\u0012AQa\u0012BA\u0011\u0003\u0005=9UM\\%uKJ\f'\r\\3MS.,\u0007\"B\u0012\u0001\t\u0003!\u0013A\u0002\u0013j]&$H\u0005F\u0001&!\tQa%\u0003\u0002(\t\t!QK\\5u\u0011\u0019I\u0003\u0001)C)U\u0005qA\u000f[5t\u0007>dG.Z2uS>tW#A\u0016\u0011\u0007EaC#\u0003\u0002.\u0005\tA\u0011\n^3sC\ndW\r\u0003\u00040\u0001\u0001&\t\u0006M\u0001\ri>\u001cu\u000e\u001c7fGRLwN\u001c\u000b\u0003WEBQA\r\u0018A\u0002q\tAA]3qe\")A\u0007\u0001D\u0001k\u0005A\u0011\u000e^3sCR|'/F\u00017!\r\tr\u0007F\u0005\u0003q\t\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0006u\u0001!\taO\u0001\bM>\u0014X-Y2i+\ta4\t\u0006\u0002&{!)a(\u000fa\u0001\u007f\u0005\ta\r\u0005\u0003\u000b\u0001R\u0011\u0015BA!\u0005\u0005%1UO\\2uS>t\u0017\u0007\u0005\u0002\u0016\u0007\u0012)A)\u000fb\u00011\t\tQ\u000bC\u0003G\u0001\u0011\u0005s)\u0001\u0004g_J\fG\u000e\u001c\u000b\u0003\u0011.\u0003\"AC%\n\u0005)#!a\u0002\"p_2,\u0017M\u001c\u0005\u0006\u0019\u0016\u0003\r!T\u0001\u0002aB!!\u0002\u0011\u000bI\u0011\u0015y\u0005\u0001\"\u0011Q\u0003\u0019)\u00070[:ugR\u0011\u0001*\u0015\u0005\u0006\u0019:\u0003\r!\u0014\u0005\u0006'\u0002!\t\u0005V\u0001\u0005M&tG\r\u0006\u0002V1B\u0019!B\u0016\u000b\n\u0005]#!AB(qi&|g\u000eC\u0003M%\u0002\u0007Q\nC\u0003[\u0001\u0011\u00053,A\u0004jg\u0016k\u0007\u000f^=\u0016\u0003!CQ!\u0018\u0001\u0005By\u000b\u0011BZ8mIJKw\r\u001b;\u0016\u0005}\u0013GC\u00011j)\t\tG\r\u0005\u0002\u0016E\u0012)1\r\u0018b\u00011\t\t!\tC\u0003f9\u0002\u0007a-\u0001\u0002paB)!b\u001a\u000bbC&\u0011\u0001\u000e\u0002\u0002\n\rVt7\r^5p]JBQA\u001b/A\u0002\u0005\f\u0011A\u001f\u0005\u0006Y\u0002!\t%\\\u0001\fe\u0016$WoY3SS\u001eDG/\u0006\u0002oaR\u0011qN\u001d\t\u0003+A$QaY6C\u0002E\f\"\u0001F\u0005\t\u000b\u0015\\\u0007\u0019A:\u0011\u000b)9Gc\\8\t\u000bU\u0004A\u0011\t\u0016\u0002\u0015Q|\u0017\n^3sC\ndW\rC\u0003x\u0001\u0011\u0005S'\u0001\u0006u_&#XM]1u_JDCA^=}}B\u0011!B_\u0005\u0003w\u0012\u0011A\u0003Z3qe\u0016\u001c\u0017\r^3e\u001fZ,'O]5eS:<\u0017%A?\u0002;R|\u0017\n^3sCR|'\u000fI:i_VdG\rI:uCf\u00043m\u001c8tSN$XM\u001c;!o&$\b\u000eI5uKJ\fGo\u001c:!M>\u0014\b%\u00197mA%#XM]1cY\u0016\u001c(\bI8wKJ\u0014\u0018\u000eZ3!SR,'/\u0019;pe\u0002Jgn\u001d;fC\u0012t\u0013%A@\u0002\rIr\u0013'\r\u00181\u0011\u001d\t\u0019\u0001\u0001C!\u0003\u000b\tA\u0001[3bIV\tA\u0003C\u0004\u0002\n\u0001!\t%a\u0003\u0002\u000bMd\u0017nY3\u0015\u000bq\ti!a\u0006\t\u0011\u0005=\u0011q\u0001a\u0001\u0003#\tAA\u001a:p[B\u0019!\"a\u0005\n\u0007\u0005UAAA\u0002J]RD\u0001\"!\u0007\u0002\b\u0001\u0007\u0011\u0011C\u0001\u0006k:$\u0018\u000e\u001c\u0005\b\u0003;\u0001A\u0011IA\u0010\u0003\u0011!\u0018m[3\u0015\u0007q\t\t\u0003\u0003\u0005\u0002$\u0005m\u0001\u0019AA\t\u0003\u0005q\u0007bBA\u0014\u0001\u0011\u0005\u0013\u0011F\u0001\u0005IJ|\u0007\u000fF\u0002\u001d\u0003WA\u0001\"a\t\u0002&\u0001\u0007\u0011\u0011\u0003\u0005\b\u0003_\u0001A\u0011IA\u0019\u0003%!\u0018m[3XQ&dW\rF\u0002\u001d\u0003gAa\u0001TA\u0017\u0001\u0004i\u0005bBA\u001c\u0001\u0011\u0005\u0011\u0011H\u0001\bOJ|W\u000f]3e)\u0011\tY$!\u0010\u0011\u0007E9D\u0004\u0003\u0005\u0002@\u0005U\u0002\u0019AA\t\u0003\u0011\u0019\u0018N_3\t\u000f\u0005\r\u0003\u0001\"\u0001\u0002F\u000591\u000f\\5eS:<G\u0003BA\u001e\u0003\u000fB\u0001\"a\u0010\u0002B\u0001\u0007\u0011\u0011\u0003\u0005\b\u0003\u0007\u0002A\u0011AA&)\u0019\tY$!\u0014\u0002P!A\u0011qHA%\u0001\u0004\t\t\u0002\u0003\u0005\u0002R\u0005%\u0003\u0019AA\t\u0003\u0011\u0019H/\u001a9\t\u000f\u0005U\u0003\u0001\"\u0001\u0002X\u0005IA/Y6f%&<\u0007\u000e\u001e\u000b\u00049\u0005e\u0003\u0002CA\u0012\u0003'\u0002\r!!\u0005\t\u000f\u0005u\u0003\u0001\"\u0001\u0002`\u0005IAM]8q%&<\u0007\u000e\u001e\u000b\u00049\u0005\u0005\u0004\u0002CA\u0012\u00037\u0002\r!!\u0005\t\u000f\u0005\u0015\u0004\u0001\"\u0011\u0002h\u0005Y1m\u001c9z)>\f%O]1z+\u0011\tI'a\u001e\u0015\u000f\u0015\nY'!\u001f\u0002~!A\u0011QNA2\u0001\u0004\ty'\u0001\u0002ygB)!\"!\u001d\u0002v%\u0019\u00111\u000f\u0003\u0003\u000b\u0005\u0013(/Y=\u0011\u0007U\t9\b\u0002\u0004d\u0003G\u0012\r!\u001d\u0005\t\u0003w\n\u0019\u00071\u0001\u0002\u0012\u0005)1\u000f^1si\"A\u0011qPA2\u0001\u0004\t\t\"A\u0002mK:Dq!a!\u0001\t\u0003\t))A\u0002{SB,\u0002\"a\"\u0002*\u0006=\u0016Q\u0012\u000b\u0005\u0003\u0013\u000b\t\f\u0006\u0003\u0002\f\u0006E\u0005cA\u000b\u0002\u000e\u00129\u0011qRAA\u0005\u0004A\"\u0001\u0002+iCRD\u0001\"a%\u0002\u0002\u0002\u000f\u0011QS\u0001\u0003E\u001a\u0004\u0012\"a&\u0002\u001er\t\t+a#\u000e\u0005\u0005e%bAAN\u0005\u00059q-\u001a8fe&\u001c\u0017\u0002BAP\u00033\u0013AbQ1o\u0005VLG\u000e\u001a$s_6\u0004rACAR\u0003O\u000bi+C\u0002\u0002&\u0012\u0011a\u0001V;qY\u0016\u0014\u0004cA\u000b\u0002*\u00129\u00111VAA\u0005\u0004\t(AA!2!\r)\u0012q\u0016\u0003\u0007G\u0006\u0005%\u0019\u0001\r\t\u0011\u0005M\u0016\u0011\u0011a\u0001\u0003k\u000bA\u0001\u001e5biB)\u0011#a.\u0002.&\u0019\u0011\u0011\u0018\u0002\u0003\u0017\u001d+g.\u0013;fe\u0006\u0014G.\u001a\u0005\b\u0003{\u0003A\u0011AA`\u0003\u0019Q\u0018\u000e]!mYVA\u0011\u0011YAk\u0003#\f9\r\u0006\u0005\u0002D\u0006]\u00171\\Ap)\u0011\t)-!3\u0011\u0007U\t9\rB\u0004\u0002\u0010\u0006m&\u0019\u0001\r\t\u0011\u0005M\u00151\u0018a\u0002\u0003\u0017\u0004\u0012\"a&\u0002\u001er\ti-!2\u0011\u000f)\t\u0019+a4\u0002TB\u0019Q#!5\u0005\u000f\u0005-\u00161\u0018b\u0001cB\u0019Q#!6\u0005\r\r\fYL1\u0001\u0019\u0011!\t\u0019,a/A\u0002\u0005e\u0007#B\t\u00028\u0006M\u0007\u0002CAo\u0003w\u0003\r!a4\u0002\u0011QD\u0017n]#mK6D\u0001\"!9\u0002<\u0002\u0007\u00111[\u0001\ti\"\fG/\u00127f[\"9\u0011Q\u001d\u0001\u0005\u0002\u0005\u001d\u0018\u0001\u0004>ja^KG\u000f[%oI\u0016DXCBAu\u0003o\fi\u000f\u0006\u0003\u0002l\u0006=\bcA\u000b\u0002n\u00129\u0011qRAr\u0005\u0004A\u0002\u0002CAJ\u0003G\u0004\u001d!!=\u0011\u0013\u0005]\u0015Q\u0014\u000f\u0002t\u0006-\bc\u0002\u0006\u0002$\u0006U\u0018\u0011\u0003\t\u0004+\u0005]HaBAV\u0003G\u0014\r!\u001d\u0005\b\u0003w\u0004A\u0011AA\u007f\u00031\u0019\u0018-\\3FY\u0016lWM\u001c;t+\u0011\tyPa\u0002\u0015\u0007!\u0013\t\u0001\u0003\u0005\u00024\u0006e\b\u0019\u0001B\u0002!\u0015\t\u0012q\u0017B\u0003!\r)\"q\u0001\u0003\u0007G\u0006e(\u0019A9\t\u000f\t-\u0001\u0001\"\u0011\u0003\u000e\u0005AAo\\*ue\u0016\fW.\u0006\u0002\u0003\u0010A)!\u0011\u0003B\f)5\u0011!1\u0003\u0006\u0004\u0005+\u0011\u0011!C5n[V$\u0018M\u00197f\u0013\u0011\u0011IBa\u0005\u0003\rM#(/Z1n\u0011\u001d\u0011i\u0002\u0001C!\u0005?\t\u0001bY1o\u000bF,\u0018\r\u001c\u000b\u0004\u0011\n\u0005\u0002bBAZ\u00057\u0001\r!\u0003\u0005\b\u0005K\u0001A\u0011\tB\u0014\u0003\u00111\u0018.Z<\u0016\u0005\t%\"C\u0002B\u0016\u0005_\u0011)DB\u0004\u0003.\t\r\u0002A!\u000b\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u0007)\u0011\t$C\u0002\u00034\u0011\u0011a!\u00118z%\u00164\u0007#B\t\u00038Qa\u0012b\u0001B\u001d\u0005\ta\u0011\n^3sC\ndWMV5fo\"9!Q\u0005\u0001\u0005B\tuBC\u0002B\u001b\u0005\u007f\u0011\t\u0005\u0003\u0005\u0002\u0010\tm\u0002\u0019AA\t\u0011!\tIBa\u000fA\u0002\u0005E\u0001\u0003B\t\u0001)q\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableLike.class */
public interface IterableLike<A, Repr> extends Equals, TraversableLike<A, Repr>, GenIterableLike<A, Repr> {

    /* renamed from: scala.collection.IterableLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableLike$class.class */
    public abstract class Cclass {
        public static void $init$(IterableLike iterableLike) {
        }

        public static boolean canEqual(IterableLike iterableLike, Object obj) {
            return true;
        }

        public static void copyToArray(IterableLike iterableLike, Object obj, int i, int i2) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            int min$extension = richInt$.min$extension(i2 + i, ScalaRunTime$.MODULE$.array_length(obj));
            Iterator<A> it = iterableLike.iterator();
            while (i < min$extension && it.hasNext()) {
                ScalaRunTime$.MODULE$.array_update(obj, i, it.next());
                i++;
            }
        }

        public static Object drop(IterableLike iterableLike, int i) {
            Builder<A, Repr> newBuilder = iterableLike.newBuilder();
            newBuilder.sizeHint(iterableLike, -package$.MODULE$.max(0, i));
            Iterator<A> it = iterableLike.iterator();
            for (int i2 = 0; i2 < i && it.hasNext(); i2++) {
                it.next();
            }
            return ((Builder) newBuilder.$plus$plus$eq(it)).result();
        }

        public static Object dropRight(IterableLike iterableLike, int i) {
            Builder<A, Repr> newBuilder = iterableLike.newBuilder();
            if (i >= 0) {
                newBuilder.sizeHint(iterableLike, -i);
            }
            Iterator<A> drop = iterableLike.iterator().drop(i);
            Iterator<A> it = iterableLike.iterator();
            while (drop.hasNext()) {
                newBuilder.$plus$eq((Builder<A, Repr>) it.next());
                drop.next();
            }
            return newBuilder.result();
        }

        public static boolean exists(IterableLike iterableLike, Function1 function1) {
            return iterableLike.iterator().exists(function1);
        }

        public static Option find(IterableLike iterableLike, Function1 function1) {
            return iterableLike.iterator().find(function1);
        }

        public static Object foldRight(IterableLike iterableLike, Object obj, Function2 function2) {
            return iterableLike.iterator().foldRight(obj, function2);
        }

        public static boolean forall(IterableLike iterableLike, Function1 function1) {
            return iterableLike.iterator().forall(function1);
        }

        public static void foreach(IterableLike iterableLike, Function1 function1) {
            iterableLike.iterator().foreach(function1);
        }

        public static Iterator grouped(IterableLike iterableLike, int i) {
            return iterableLike.iterator().grouped(i).map(new IterableLike$$anonfun$grouped$1(iterableLike));
        }

        public static Object head(IterableLike iterableLike) {
            return iterableLike.iterator().next();
        }

        public static boolean isEmpty(IterableLike iterableLike) {
            return !iterableLike.iterator().hasNext();
        }

        public static Object reduceRight(IterableLike iterableLike, Function2 function2) {
            return iterableLike.iterator().reduceRight(function2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x009c, code lost:
            if (r0.hasNext() != false) goto L26;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean sameElements(scala.collection.IterableLike r3, scala.collection.GenIterable r4) {
            /*
                r0 = r3
                scala.collection.Iterator r0 = r0.iterator()
                r3 = r0
                r0 = r4
                scala.collection.Iterator r0 = r0.iterator()
                r4 = r0
            Le:
                r0 = r3
                boolean r0 = r0.hasNext()
                r5 = r0
                r0 = 1
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L8a
                r0 = r4
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L8a
                r0 = r3
                java.lang.Object r0 = r0.next()
                r8 = r0
                r0 = r4
                java.lang.Object r0 = r0.next()
                r9 = r0
                r0 = r8
                r1 = r9
                if (r0 != r1) goto L41
                goto L83
            L41:
                r0 = r8
                if (r0 != 0) goto L4c
                r0 = 0
                r7 = r0
                goto L83
            L4c:
                r0 = r8
                boolean r0 = r0 instanceof java.lang.Number
                if (r0 == 0) goto L63
                r0 = r8
                java.lang.Number r0 = (java.lang.Number) r0
                r1 = r9
                boolean r0 = scala.runtime.BoxesRunTime.equalsNumObject(r0, r1)
                r7 = r0
                goto L83
            L63:
                r0 = r8
                boolean r0 = r0 instanceof java.lang.Character
                if (r0 == 0) goto L7a
                r0 = r8
                java.lang.Character r0 = (java.lang.Character) r0
                r1 = r9
                boolean r0 = scala.runtime.BoxesRunTime.equalsCharObject(r0, r1)
                r7 = r0
                goto L83
            L7a:
                r0 = r8
                r1 = r9
                boolean r0 = r0.equals(r1)
                r7 = r0
            L83:
                r0 = r7
                if (r0 != 0) goto Le
                r0 = 0
                return r0
            L8a:
                r0 = r3
                boolean r0 = r0.hasNext()
                if (r0 != 0) goto L9f
                r0 = r6
                r7 = r0
                r0 = r4
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto La2
            L9f:
                r0 = 0
                r7 = r0
            La2:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.IterableLike.Cclass.sameElements(scala.collection.IterableLike, scala.collection.GenIterable):boolean");
        }

        public static Object slice(IterableLike iterableLike, int i, int i2) {
            Repr repr;
            int max = package$.MODULE$.max(i, 0);
            int i3 = i2 - max;
            Builder<A, Repr> newBuilder = iterableLike.newBuilder();
            if (i3 <= 0) {
                repr = newBuilder.result();
            } else {
                newBuilder.sizeHintBounded(i3, iterableLike);
                Iterator<A> drop = iterableLike.iterator().drop(max);
                for (int i4 = 0; i4 < i3 && drop.hasNext(); i4++) {
                    newBuilder.$plus$eq((Builder<A, Repr>) drop.next());
                }
                repr = newBuilder.result();
            }
            return repr;
        }

        public static Iterator sliding(IterableLike iterableLike, int i) {
            return iterableLike.sliding(i, 1);
        }

        public static Iterator sliding(IterableLike iterableLike, int i, int i2) {
            return iterableLike.iterator().sliding(i, i2).map(new IterableLike$$anonfun$sliding$1(iterableLike));
        }

        public static Object take(IterableLike iterableLike, int i) {
            Repr repr;
            Builder<A, Repr> newBuilder = iterableLike.newBuilder();
            if (i <= 0) {
                repr = newBuilder.result();
            } else {
                newBuilder.sizeHintBounded(i, iterableLike);
                Iterator<A> it = iterableLike.iterator();
                for (int i2 = 0; i2 < i && it.hasNext(); i2++) {
                    newBuilder.$plus$eq((Builder<A, Repr>) it.next());
                }
                repr = newBuilder.result();
            }
            return repr;
        }

        public static Object takeRight(IterableLike iterableLike, int i) {
            Builder<A, Repr> newBuilder = iterableLike.newBuilder();
            newBuilder.sizeHintBounded(i, iterableLike);
            Iterator<A> drop = iterableLike.iterator().drop(i);
            Iterator<A> it = iterableLike.iterator();
            while (drop.hasNext()) {
                drop.next();
                it.next();
            }
            while (it.hasNext()) {
                newBuilder.$plus$eq((Builder<A, Repr>) it.next());
            }
            return newBuilder.result();
        }

        public static Object takeWhile(IterableLike iterableLike, Function1 function1) {
            Builder<A, Repr> newBuilder = iterableLike.newBuilder();
            Iterator<A> it = iterableLike.iterator();
            while (it.hasNext()) {
                A next = it.next();
                if (!BoxesRunTime.unboxToBoolean(function1.apply(next))) {
                    return newBuilder.result();
                }
                newBuilder.$plus$eq((Builder<A, Repr>) next);
            }
            return newBuilder.result();
        }

        public static Iterable thisCollection(IterableLike iterableLike) {
            return (Iterable) iterableLike;
        }

        public static Iterable toCollection(IterableLike iterableLike, Object obj) {
            return (Iterable) obj;
        }

        public static Iterable toIterable(IterableLike iterableLike) {
            return iterableLike.thisCollection();
        }

        public static Iterator toIterator(IterableLike iterableLike) {
            return iterableLike.iterator();
        }

        public static Stream toStream(IterableLike iterableLike) {
            return iterableLike.iterator().toStream();
        }

        public static IterableView view(IterableLike iterableLike) {
            return new IterableView<A, Repr>(iterableLike) { // from class: scala.collection.IterableLike$$anon$1
                private final /* synthetic */ IterableLike $outer;
                private volatile boolean bitmap$0;
                private Repr underlying;

                {
                    Objects.requireNonNull(iterableLike);
                    this.$outer = iterableLike;
                    TraversableOnce.Cclass.$init$(this);
                    Parallelizable.Cclass.$init$(this);
                    TraversableLike.Cclass.$init$(this);
                    GenericTraversableTemplate.Cclass.$init$(this);
                    GenTraversable.Cclass.$init$(this);
                    Traversable.Cclass.$init$(this);
                    GenIterable.Cclass.$init$(this);
                    IterableLike.Cclass.$init$(this);
                    Iterable.Cclass.$init$(this);
                    ViewMkString.Cclass.$init$(this);
                    TraversableViewLike.Cclass.$init$(this);
                    IterableViewLike.Cclass.$init$(this);
                }

                private Object underlying$lzycompute() {
                    synchronized (this) {
                        if (!this.bitmap$0) {
                            this.underlying = this.$outer.repr();
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

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $div$colon(B b, Function2<B, A, B> function2) {
                    Object foldLeft;
                    foldLeft = foldLeft(b, function2);
                    return (B) foldLeft;
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<IterableView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(Traversable<B> traversable, CanBuildFrom<IterableView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (Traversable) traversable, (CanBuildFrom) canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<IterableView<A, Repr>, B, That> canBuildFrom) {
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

                @Override // scala.collection.IterableLike, scala.Equals
                public boolean canEqual(Object obj) {
                    return IterableLike.Cclass.canEqual(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<IterableView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public GenericCompanion<Iterable> companion() {
                    return Iterable.Cclass.companion(this);
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

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int count(Function1<A, Object> function1) {
                    return TraversableOnce.Cclass.count(this, function1);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public IterableView<A, Repr> drop(int i) {
                    return IterableViewLike.Cclass.drop(this, i);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
                public IterableView<A, Repr> dropRight(int i) {
                    return IterableViewLike.Cclass.dropRight(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public TraversableView dropWhile(Function1 function1) {
                    return TraversableViewLike.Cclass.dropWhile(this, function1);
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
                public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<IterableView<A, Repr>, B, That> canBuildFrom) {
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
                public <B, That> That force(CanBuildFrom<Repr, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.force(this, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public <U> void foreach(Function1<A, U> function1) {
                    IterableLike.Cclass.foreach(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> Builder<B, Iterable<B>> genericBuilder() {
                    return GenericTraversableTemplate.Cclass.genericBuilder(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <K> Map<K, IterableView<A, Repr>> groupBy(Function1<A, K> function1) {
                    return TraversableViewLike.Cclass.groupBy(this, function1);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
                public Iterator<IterableView<A, Repr>> grouped(int i) {
                    return IterableViewLike.Cclass.grouped(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean hasDefiniteSize() {
                    return TraversableLike.Cclass.hasDefiniteSize(this);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public A head() {
                    return IterableLike.Cclass.head(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<A> headOption() {
                    return TraversableLike.Cclass.headOption(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public TraversableView init() {
                    return TraversableViewLike.Cclass.init(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<IterableView<A, Repr>> inits() {
                    return TraversableViewLike.Cclass.inits(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public boolean isEmpty() {
                    return IterableLike.Cclass.isEmpty(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
                public final boolean isTraversableAgain() {
                    return TraversableLike.Cclass.isTraversableAgain(this);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
                public Iterator<A> iterator() {
                    return this.$outer.iterator();
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public A last() {
                    return TraversableLike.Cclass.last(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<A> lastOption() {
                    return TraversableLike.Cclass.lastOption(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
                public <B, That> That map(Function1<A, B> function1, CanBuildFrom<IterableView<A, Repr>, B, That> canBuildFrom) {
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

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<B> newAppended(GenTraversable<B> genTraversable) {
                    return IterableViewLike.Cclass.newAppended(this, genTraversable);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
                public Builder<A, IterableView<A, Repr>> newBuilder() {
                    return TraversableViewLike.Cclass.newBuilder(this);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<A> newDropped(int i) {
                    return IterableViewLike.Cclass.newDropped(this, i);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<A> newDroppedWhile(Function1<A, Object> function1) {
                    return IterableViewLike.Cclass.newDroppedWhile(this, function1);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<A> newFiltered(Function1<A, Object> function1) {
                    return IterableViewLike.Cclass.newFiltered(this, function1);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<B> newFlatMapped(Function1<A, GenTraversableOnce<B>> function1) {
                    return IterableViewLike.Cclass.newFlatMapped(this, function1);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<B> newForced(Function0<GenSeq<B>> function0) {
                    return IterableViewLike.Cclass.newForced(this, function0);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<B> newMapped(Function1<A, B> function1) {
                    return IterableViewLike.Cclass.newMapped(this, function1);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<A> newSliced(SliceInterval sliceInterval) {
                    return IterableViewLike.Cclass.newSliced(this, sliceInterval);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<A> newTaken(int i) {
                    return IterableViewLike.Cclass.newTaken(this, i);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<A> newTakenWhile(Function1<A, Object> function1) {
                    return IterableViewLike.Cclass.newTakenWhile(this, function1);
                }

                @Override // scala.collection.IterableViewLike
                public <B> IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<Tuple2<A, B>> newZipped(GenIterable<B> genIterable) {
                    return IterableViewLike.Cclass.newZipped(this, genIterable);
                }

                @Override // scala.collection.IterableViewLike
                public <A1, B> IterableViewLike<A, Repr, IterableView<A, Repr>>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b) {
                    return IterableViewLike.Cclass.newZippedAll(this, genIterable, a1, b);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean nonEmpty() {
                    return TraversableOnce.Cclass.nonEmpty(this);
                }

                @Override // scala.collection.Parallelizable
                public Parallel par() {
                    return Parallelizable.Cclass.par(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
                public Combiner<A, ParIterable<A>> parCombiner() {
                    return TraversableLike.Cclass.parCombiner(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<IterableView<A, Repr>, IterableView<A, Repr>> partition(Function1<A, Object> function1) {
                    return TraversableViewLike.Cclass.partition(this, function1);
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

                @Override // scala.collection.TraversableOnce
                public List<A> reversed() {
                    return TraversableOnce.Cclass.reversed(this);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B> boolean sameElements(GenIterable<B> genIterable) {
                    return IterableLike.Cclass.sameElements(this, genIterable);
                }

                @Override // scala.collection.TraversableViewLike
                public /* synthetic */ TraversableView scala$collection$TraversableViewLike$$super$tail() {
                    return (TraversableView) TraversableLike.Cclass.tail(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<IterableView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<IterableView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<IterableView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.scanRight(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public Iterable<A> seq() {
                    return Iterable.Cclass.seq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int size() {
                    return TraversableOnce.Cclass.size(this);
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

                @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
                public Iterator<IterableView<A, Repr>> sliding(int i) {
                    return IterableViewLike.Cclass.sliding(this, i);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
                public Iterator<IterableView<A, Repr>> sliding(int i, int i2) {
                    return IterableViewLike.Cclass.sliding(this, i, i2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<IterableView<A, Repr>, IterableView<A, Repr>> span(Function1<A, Object> function1) {
                    return TraversableViewLike.Cclass.span(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<IterableView<A, Repr>, IterableView<A, Repr>> splitAt(int i) {
                    return TraversableViewLike.Cclass.splitAt(this, i);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
                public String stringPrefix() {
                    return IterableViewLike.Cclass.stringPrefix(this);
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
                public Iterator<IterableView<A, Repr>> tails() {
                    return TraversableViewLike.Cclass.tails(this);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public IterableView<A, Repr> take(int i) {
                    return IterableViewLike.Cclass.take(this, i);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.IterableLike
                public IterableView<A, Repr> takeRight(int i) {
                    return IterableViewLike.Cclass.takeRight(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public TraversableView takeWhile(Function1 function1) {
                    return TraversableViewLike.Cclass.takeWhile(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Iterable<A> thisCollection() {
                    return IterableLike.Cclass.thisCollection(this);
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
                public Iterable toCollection(Object obj) {
                    return IterableLike.Cclass.toCollection(this, obj);
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
                    return TraversableOnce.Cclass.toSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
                public <B> Set<B> toSet() {
                    return TraversableOnce.Cclass.toSet(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Stream<A> toStream() {
                    return IterableLike.Cclass.toStream(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
                public String toString() {
                    return TraversableViewLike.Cclass.toString(this);
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
                public Repr underlying() {
                    return this.bitmap$0 ? this.underlying : underlying$lzycompute();
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<A, Tuple2<A1, A2>> function1) {
                    return TraversableViewLike.Cclass.unzip(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<A, Tuple3<A1, A2, A3>> function1) {
                    return TraversableViewLike.Cclass.unzip3(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Object view() {
                    return IterableLike.Cclass.view(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public IterableView<A, IterableView<A, Repr>> view(int i, int i2) {
                    return IterableLike.Cclass.view(this, i, i2);
                }

                @Override // scala.collection.TraversableViewLike
                public String viewIdString() {
                    return TraversableViewLike.Cclass.viewIdString(this);
                }

                @Override // scala.collection.TraversableViewLike
                public String viewIdentifier() {
                    return TraversableViewLike.Cclass.viewIdentifier(this);
                }

                @Override // scala.collection.TraversableViewLike
                public String viewToString() {
                    return TraversableViewLike.Cclass.viewToString(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
                public TraversableView withFilter(Function1 function1) {
                    return TraversableViewLike.Cclass.withFilter(this, function1);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<IterableView<A, Repr>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zip(this, genIterable, canBuildFrom);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<IterableView<A, Repr>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
                }

                @Override // scala.collection.IterableViewLike, scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, That> That zipWithIndex(CanBuildFrom<IterableView<A, Repr>, Tuple2<A1, Object>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zipWithIndex(this, canBuildFrom);
                }
            };
        }

        public static IterableView view(IterableLike iterableLike, int i, int i2) {
            return (IterableView) iterableLike.view().slice(i, i2);
        }

        public static Object zip(IterableLike iterableLike, GenIterable genIterable, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(iterableLike.repr());
            Iterator<A> it = iterableLike.iterator();
            Iterator<A> it2 = genIterable.iterator();
            while (it.hasNext() && it2.hasNext()) {
                apply.$plus$eq((Builder) new Tuple2(it.next(), it2.next()));
            }
            return apply.result();
        }

        public static Object zipAll(IterableLike iterableLike, GenIterable genIterable, Object obj, Object obj2, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(iterableLike.repr());
            Iterator<A> it = iterableLike.iterator();
            Iterator<A> it2 = genIterable.iterator();
            while (it.hasNext() && it2.hasNext()) {
                apply.$plus$eq((Builder) new Tuple2(it.next(), it2.next()));
            }
            while (it.hasNext()) {
                apply.$plus$eq((Builder) new Tuple2(it.next(), obj2));
            }
            while (it2.hasNext()) {
                apply.$plus$eq((Builder) new Tuple2(obj, it2.next()));
            }
            return apply.result();
        }

        public static Object zipWithIndex(IterableLike iterableLike, CanBuildFrom canBuildFrom) {
            Builder apply = canBuildFrom.apply(iterableLike.repr());
            iterableLike.foreach(new IterableLike$$anonfun$zipWithIndex$1(iterableLike, apply, IntRef.create(0)));
            return apply.result();
        }
    }

    @Override // scala.Equals
    boolean canEqual(Object obj);

    <B> void copyToArray(Object obj, int i, int i2);

    Repr drop(int i);

    Repr dropRight(int i);

    boolean exists(Function1<A, Object> function1);

    Option<A> find(Function1<A, Object> function1);

    <B> B foldRight(B b, Function2<A, B, B> function2);

    boolean forall(Function1<A, Object> function1);

    <U> void foreach(Function1<A, U> function1);

    Iterator<Repr> grouped(int i);

    A head();

    boolean isEmpty();

    Iterator<A> iterator();

    <B> B reduceRight(Function2<A, B, B> function2);

    <B> boolean sameElements(GenIterable<B> genIterable);

    Repr slice(int i, int i2);

    Iterator<Repr> sliding(int i);

    Iterator<Repr> sliding(int i, int i2);

    Repr take(int i);

    Repr takeRight(int i);

    Repr takeWhile(Function1<A, Object> function1);

    Iterable<A> thisCollection();

    Iterable<A> toCollection(Repr repr);

    Iterable<A> toIterable();

    Iterator<A> toIterator();

    Stream<A> toStream();

    Object view();

    IterableView<A, Repr> view(int i, int i2);

    <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Repr, Tuple2<A1, B>, That> canBuildFrom);

    <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<Repr, Tuple2<A1, B>, That> canBuildFrom);

    <A1, That> That zipWithIndex(CanBuildFrom<Repr, Tuple2<A1, Object>, That> canBuildFrom);
}
