package scala.collection.immutable;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenIterable;
import scala.collection.GenMapLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableView;
import scala.collection.Iterator;
import scala.collection.Map;
import scala.collection.MapLike;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.SortedMap;
import scala.collection.SortedMapLike;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.FilterMonadic;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Sorted;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Map;
import scala.collection.immutable.MapLike;
import scala.collection.immutable.RedBlackTree;
import scala.collection.immutable.SortedMap;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParMap;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.package$;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\tmx!B\u0001\u0003\u0011\u0003I\u0011a\u0002+sK\u0016l\u0015\r\u001d\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005)YQ\"\u0001\u0002\u0007\u000b1\u0011\u0001\u0012A\u0007\u0003\u000fQ\u0013X-Z'baN\u00191BD\u001b\u0011\u0007=\u0011B#D\u0001\u0011\u0015\t\tB!A\u0004hK:,'/[2\n\u0005M\u0001\"!G%n[V$\u0018M\u00197f'>\u0014H/\u001a3NCB4\u0015m\u0019;pef\u0004\"AC\u000b\u0007\t1\u0011\u0001AF\u000b\u0004/\u0005Z3CB\u000b\u001995\u0012T\u0007\u0005\u0002\u001a55\ta!\u0003\u0002\u001c\r\t1\u0011I\\=SK\u001a\u0004BAC\u000f U%\u0011aD\u0001\u0002\n'>\u0014H/\u001a3NCB\u0004\"\u0001I\u0011\r\u0001\u0011)!%\u0006b\u0001G\t\t\u0011)\u0005\u0002%OA\u0011\u0011$J\u0005\u0003M\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u001aQ%\u0011\u0011F\u0002\u0002\u0004\u0003:L\bC\u0001\u0011,\t\u0019aS\u0003\"b\u0001G\t\t!\tE\u0003/_}Q\u0013'D\u0001\u0005\u0013\t\u0001DAA\u0007T_J$X\rZ'ba2K7.\u001a\t\u0005\u0015Uy\"\u0006E\u0003\u000bg}Q\u0013'\u0003\u00025\u0005\t9Q*\u00199MS.,\u0007CA\r7\u0013\t9dA\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005:+\t\u0005\t\u0015!\u0003;\u0003\u0011!(/Z3\u0011\tmrtD\u000b\b\u0003\u0015qJ!!\u0010\u0002\u0002\u0019I+GM\u00117bG.$&/Z3\n\u0005}\u0002%\u0001\u0002+sK\u0016T!!\u0010\u0002\t\u0011\t+\"Q1A\u0005\u0004\r\u000b\u0001b\u001c:eKJLgnZ\u000b\u0002\tB\u0019Q\tS\u0010\u000f\u0005e1\u0015BA$\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!!\u0013&\u0003\u0011=\u0013H-\u001a:j]\u001eT!a\u0012\u0004\t\u00111+\"\u0011!Q\u0001\n\u0011\u000b\u0011b\u001c:eKJLgn\u001a\u0011\t\u000b9+B\u0011B(\u0002\rqJg.\u001b;?)\t\u0001&\u000b\u0006\u00022#\")!)\u0014a\u0002\t\")\u0011(\u0014a\u0001u!1A+\u0006Q\u0005RU\u000b!B\\3x\u0005VLG\u000eZ3s+\u00051\u0006\u0003B,[9Fj\u0011\u0001\u0017\u0006\u00033\u0012\tq!\\;uC\ndW-\u0003\u0002\\1\n9!)^5mI\u0016\u0014\b\u0003B\r^?)J!A\u0018\u0004\u0003\rQ+\b\u000f\\33\u0011\u0015\u0001W\u0003\"\u0011b\u0003\u0011\u0019\u0018N_3\u0016\u0003\t\u0004\"!G2\n\u0005\u00114!aA%oi\")a*\u0006C\u0001MR\tq\r\u0006\u00022Q\")!)\u001aa\u0002\t\")!.\u0006C!W\u0006I!/\u00198hK&k\u0007\u000f\u001c\u000b\u0004c1\f\b\"B7j\u0001\u0004q\u0017\u0001\u00024s_6\u00042!G8 \u0013\t\u0001hA\u0001\u0004PaRLwN\u001c\u0005\u0006e&\u0004\rA\\\u0001\u0006k:$\u0018\u000e\u001c\u0005\u0006iV!\t%^\u0001\u0006e\u0006tw-\u001a\u000b\u0004cY<\b\"B7t\u0001\u0004y\u0002\"\u0002:t\u0001\u0004y\u0002\"B7\u0016\t\u0003JHCA\u0019{\u0011\u0015i\u0007\u00101\u0001 \u0011\u0015aX\u0003\"\u0011~\u0003\t!x\u000e\u0006\u00022}\")Ap\u001fa\u0001?!1!/\u0006C!\u0003\u0003!2!MA\u0002\u0011\u0015\u0011x\u00101\u0001 \u0011\u001d\t9!\u0006C!\u0003\u0013\t\u0001BZ5sgR\\U-_\u000b\u0002?!9\u0011QB\u000b\u0005B\u0005%\u0011a\u00027bgR\\U-\u001f\u0005\b\u0003#)B\u0011IA\n\u0003\u001d\u0019w.\u001c9be\u0016$RAYA\u000b\u00033Aq!a\u0006\u0002\u0010\u0001\u0007q$\u0001\u0002la!9\u00111DA\b\u0001\u0004y\u0012AA62\u0011\u001d\ty\"\u0006C!\u0003C\tA\u0001[3bIV\tA\fC\u0004\u0002&U!\t%a\n\u0002\u0015!,\u0017\rZ(qi&|g.\u0006\u0002\u0002*A\u0019\u0011d\u001c/\t\u000f\u00055R\u0003\"\u0011\u0002\"\u0005!A.Y:u\u0011\u001d\t\t$\u0006C!\u0003O\t!\u0002\\1ti>\u0003H/[8o\u0011\u001d\t)$\u0006C!\u0003o\tA\u0001^1jYV\t\u0011\u0007C\u0004\u0002<U!\t%a\u000e\u0002\t%t\u0017\u000e\u001e\u0005\b\u0003\u007f)B\u0011IA!\u0003\u0011!'o\u001c9\u0015\u0007E\n\u0019\u0005C\u0004\u0002F\u0005u\u0002\u0019\u00012\u0002\u00039Dq!!\u0013\u0016\t\u0003\nY%\u0001\u0003uC.,GcA\u0019\u0002N!9\u0011QIA$\u0001\u0004\u0011\u0007bBA)+\u0011\u0005\u00131K\u0001\u0006g2L7-\u001a\u000b\u0006c\u0005U\u0013q\u000b\u0005\u0007[\u0006=\u0003\u0019\u00012\t\rI\fy\u00051\u0001c\u0011\u001d\tY&\u0006C!\u0003;\n\u0011\u0002\u001a:paJKw\r\u001b;\u0015\u0007E\ny\u0006C\u0004\u0002F\u0005e\u0003\u0019\u00012\t\u000f\u0005\rT\u0003\"\u0011\u0002f\u0005IA/Y6f%&<\u0007\u000e\u001e\u000b\u0004c\u0005\u001d\u0004bBA#\u0003C\u0002\rA\u0019\u0005\b\u0003W*B\u0011IA7\u0003\u001d\u0019\b\u000f\\5u\u0003R$B!a\u001c\u0002rA!\u0011$X\u00192\u0011\u001d\t)%!\u001bA\u0002\tD\u0001\"!\u001e\u0016A\u0013%\u0011qO\u0001\u000bG>,h\u000e^,iS2,Gc\u00012\u0002z!A\u00111PA:\u0001\u0004\ti(A\u0001q!\u0019I\u0012q\u0010/\u0002\u0004&\u0019\u0011\u0011\u0011\u0004\u0003\u0013\u0019+hn\u0019;j_:\f\u0004cA\r\u0002\u0006&\u0019\u0011q\u0011\u0004\u0003\u000f\t{w\u000e\\3b]\"9\u00111R\u000b\u0005B\u00055\u0015!\u00033s_B<\u0006.\u001b7f)\r\t\u0014q\u0012\u0005\t\u0003w\nI\t1\u0001\u0002~!9\u00111S\u000b\u0005B\u0005U\u0015!\u0003;bW\u0016<\u0006.\u001b7f)\r\t\u0014q\u0013\u0005\t\u0003w\n\t\n1\u0001\u0002~!9\u00111T\u000b\u0005B\u0005u\u0015\u0001B:qC:$B!a\u001c\u0002 \"A\u00111PAM\u0001\u0004\ti\bC\u0004\u0002$V!\t%a\u000e\u0002\u000b\u0015l\u0007\u000f^=\t\u000f\u0005\u001dV\u0003\"\u0011\u0002*\u00069Q\u000f\u001d3bi\u0016$W\u0003BAV\u0003c#b!!,\u00028\u0006m\u0006#\u0002\u0006\u0016?\u0005=\u0006c\u0001\u0011\u00022\u0012A\u00111WAS\u0005\u0004\t)L\u0001\u0002CcE\u0011!f\n\u0005\b\u0003s\u000b)\u000b1\u0001 \u0003\rYW-\u001f\u0005\t\u0003{\u000b)\u000b1\u0001\u00020\u0006)a/\u00197vK\"9\u0011\u0011Y\u000b\u0005B\u0005\r\u0017!\u0002\u0013qYV\u001cX\u0003BAc\u0003\u0017$B!a2\u0002NB)!\"F\u0010\u0002JB\u0019\u0001%a3\u0005\u0011\u0005M\u0016q\u0018b\u0001\u0003kC\u0001\"a4\u0002@\u0002\u0007\u0011\u0011[\u0001\u0003WZ\u0004R!G/ \u0003\u0013Dq!!1\u0016\t\u0003\n).\u0006\u0003\u0002X\u0006uG\u0003CAm\u0003?\f)/!;\u0011\u000b))r$a7\u0011\u0007\u0001\ni\u000e\u0002\u0005\u00024\u0006M'\u0019AA[\u0011!\t\t/a5A\u0002\u0005\r\u0018!B3mK6\f\u0004#B\r^?\u0005m\u0007\u0002CAt\u0003'\u0004\r!a9\u0002\u000b\u0015dW-\u001c\u001a\t\u0011\u0005-\u00181\u001ba\u0001\u0003[\fQ!\u001a7f[N\u0004R!GAx\u0003GL1!!=\u0007\u0005)a$/\u001a9fCR,GM\u0010\u0005\b\u0003k,B\u0011IA|\u0003)!\u0003\u000f\\;tIAdWo]\u000b\u0005\u0003s\fy\u0010\u0006\u0003\u0002|\n\u0005\u0001#\u0002\u0006\u0016?\u0005u\bc\u0001\u0011\u0002��\u0012A\u00111WAz\u0005\u0004\t)\f\u0003\u0005\u0003\u0004\u0005M\b\u0019\u0001B\u0003\u0003\tA8\u000fE\u0003/\u0005\u000f\u0011Y!C\u0002\u0003\n\u0011\u0011!cR3o)J\fg/\u001a:tC\ndWm\u00148dKB)\u0011$X\u0010\u0002~\"9!qB\u000b\u0005\u0002\tE\u0011AB5og\u0016\u0014H/\u0006\u0003\u0003\u0014\teAC\u0002B\u000b\u00057\u0011i\u0002E\u0003\u000b+}\u00119\u0002E\u0002!\u00053!\u0001\"a-\u0003\u000e\t\u0007\u0011Q\u0017\u0005\b\u0003s\u0013i\u00011\u0001 \u0011!\tiL!\u0004A\u0002\t]\u0001b\u0002B\u0011+\u0011\u0005!1E\u0001\u0007I5Lg.^:\u0015\u0007E\u0012)\u0003C\u0004\u0002:\n}\u0001\u0019A\u0010\t\u000f\t%R\u0003\"\u0011\u0003,\u0005\u0019q-\u001a;\u0015\t\t5\"q\u0006\t\u00043=T\u0003bBA]\u0005O\u0001\ra\b\u0005\b\u0005g)B\u0011\tB\u001b\u0003!IG/\u001a:bi>\u0014XC\u0001B\u001c!\u0011q#\u0011\b/\n\u0007\tmBA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u001d\u0011y$\u0006C!\u0005\u0003\nA\"\u001b;fe\u0006$xN\u001d$s_6$BAa\u000e\u0003D!9!Q\tB\u001f\u0001\u0004y\u0012!B:uCJ$\bb\u0002B%+\u0011\u0005#1J\u0001\rW\u0016L8/\u0013;fe\u0006$xN]\u000b\u0003\u0005\u001b\u0002BA\fB\u001d?!9!\u0011K\u000b\u0005B\tM\u0013\u0001E6fsNLE/\u001a:bi>\u0014hI]8n)\u0011\u0011iE!\u0016\t\u000f\t\u0015#q\na\u0001?!9!\u0011L\u000b\u0005B\tm\u0013A\u0004<bYV,7/\u0013;fe\u0006$xN]\u000b\u0003\u0005;\u0002BA\fB\u001dU!9!\u0011M\u000b\u0005B\t\r\u0014A\u0005<bYV,7/\u0013;fe\u0006$xN\u001d$s_6$BA!\u0018\u0003f!9!Q\tB0\u0001\u0004y\u0002b\u0002B5+\u0011\u0005#1N\u0001\tG>tG/Y5ogR!\u00111\u0011B7\u0011\u001d\tILa\u001aA\u0002}AqA!\u001d\u0016\t\u0003\u0012\u0019(A\u0006jg\u0012+g-\u001b8fI\u0006#H\u0003BAB\u0005kBq!!/\u0003p\u0001\u0007q\u0004C\u0004\u0003zU!\tEa\u001f\u0002\u000f\u0019|'/Z1dQV!!Q\u0010BG)\u0011\u0011yH!\"\u0011\u0007e\u0011\t)C\u0002\u0003\u0004\u001a\u0011A!\u00168ji\"A!q\u0011B<\u0001\u0004\u0011I)A\u0001g!\u0019I\u0012q\u0010/\u0003\fB\u0019\u0001E!$\u0005\u000f\t=%q\u000fb\u0001G\t\tQ\u000bK\u0004\u0016\u0005'\u0013IJ!(\u0011\u0007e\u0011)*C\u0002\u0003\u0018\u001a\u0011Q\u0003Z3qe\u0016\u001c\u0017\r^3e\u0013:DWM]5uC:\u001cW-\t\u0002\u0003\u001c\u0006\u0019F\u000b[3!S6\u0004H.Z7f]R\fG/[8oA\u0011,G/Y5mg\u0002zg\rI5n[V$\u0018M\u00197fAQ\u0014X-\u001a\u0011nCB\u001c\b%\\1lK\u0002Jg\u000e[3sSRLgn\u001a\u0011ge>l\u0007\u0005\u001e5f[\u0002*hn^5tK:\n#Aa(\u0002\rIr\u0013'\r\u00181\u0011\u0019q5\u0002\"\u0001\u0003$R\t\u0011\u0002C\u0004\u0002$.!\tAa*\u0016\r\t%&q\u0016BZ)\u0011\u0011YK!.\u0011\r))\"Q\u0016BY!\r\u0001#q\u0016\u0003\u0007E\t\u0015&\u0019A\u0012\u0011\u0007\u0001\u0012\u0019\f\u0002\u0004-\u0005K\u0013\ra\t\u0005\t\u0005o\u0013)\u000bq\u0001\u0003:\u0006\u0019qN\u001d3\u0011\t\u0015C%Q\u0016\u0005\b\u0005{[A1\u0001B`\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0019\u0011\tM!7\u0003^R!!1\u0019Bq!%y!Q\u0019Be\u0005+\u0014y.C\u0002\u0003HB\u0011AbQ1o\u0005VLG\u000e\u001a$s_6\u0004BAa3\u0003N6\t1\"\u0003\u0003\u0003P\nE'\u0001B\"pY2L1Aa5\u0011\u0005A\u0019vN\u001d;fI6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0004\u001a;\n]'1\u001c\t\u0004A\teGA\u0002\u0012\u0003<\n\u00071\u0005E\u0002!\u0005;$a\u0001\fB^\u0005\u0004\u0019\u0003C\u0002\u0006\u0016\u0005/\u0014Y\u000e\u0003\u0005\u00038\nm\u00069\u0001Br!\u0011)\u0005Ja6\t\u0013\t\u001d8\"!A\u0005\n\t%\u0018a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"Aa;\u0011\t\t5(q_\u0007\u0003\u0005_TAA!=\u0003t\u0006!A.\u00198h\u0015\t\u0011)0\u0001\u0003kCZ\f\u0017\u0002\u0002B}\u0005_\u0014aa\u00142kK\u000e$\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TreeMap.class */
public class TreeMap<A, B> implements SortedMap<A, B>, Serializable {
    private final Ordering<A> ordering;
    private final RedBlackTree.Tree<A, B> tree;

    private TreeMap(RedBlackTree.Tree<A, B> tree, Ordering<A> ordering) {
        this.tree = tree;
        this.ordering = ordering;
        TraversableOnce.Cclass.$init$(this);
        Parallelizable.Cclass.$init$(this);
        TraversableLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        Traversable.Cclass.$init$(this);
        Traversable.Cclass.$init$(this);
        GenIterable.Cclass.$init$(this);
        IterableLike.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        GenMapLike.Cclass.$init$(this);
        Function1.Cclass.$init$(this);
        PartialFunction.Cclass.$init$(this);
        Subtractable.Cclass.$init$(this);
        MapLike.Cclass.$init$(this);
        Map.Cclass.$init$(this);
        MapLike.Cclass.$init$(this);
        Map.Cclass.$init$(this);
        Sorted.Cclass.$init$(this);
        SortedMapLike.Cclass.$init$(this);
        SortedMap.Cclass.$init$(this);
        SortedMap.Cclass.$init$(this);
    }

    public TreeMap(Ordering<A> ordering) {
        this(null, ordering);
    }

    public static <A, B> CanBuildFrom<TreeMap<?, ?>, Tuple2<A, B>, TreeMap<A, B>> canBuildFrom(Ordering<A> ordering) {
        return TreeMap$.MODULE$.canBuildFrom(ordering);
    }

    private int countWhile(Function1<Tuple2<A, B>, Object> function1) {
        Iterator<Tuple2<A, B>> it = iterator();
        int i = 0;
        while (it.hasNext() && BoxesRunTime.unboxToBoolean(function1.apply(it.next()))) {
            i++;
        }
        return i;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $colon$bslash(B b, Function2<Tuple2<A, B>, B, B> function2) {
        Object foldRight;
        foldRight = foldRight(b, function2);
        return (B) foldRight;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $div$colon(B b, Function2<B, Tuple2<A, B>, B> function2) {
        Object foldLeft;
        foldLeft = foldLeft(b, function2);
        return (B) foldLeft;
    }

    @Override // scala.collection.generic.Subtractable
    public Subtractable $minus(Object obj, Object obj2, Seq seq) {
        Subtractable $minus$minus;
        $minus$minus = $minus((TreeMap<A, B>) obj).$minus(obj2).$minus$minus(seq);
        return $minus$minus;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public TreeMap<A, B> $minus(A a) {
        return RedBlackTree$.MODULE$.contains(this.tree, a, ordering()) ? new TreeMap<>(RedBlackTree$.MODULE$.delete(this.tree, a, ordering()), ordering()) : this;
    }

    @Override // scala.collection.generic.Subtractable
    public Subtractable $minus$minus(GenTraversableOnce genTraversableOnce) {
        return Subtractable.Cclass.$minus$minus(this, genTraversableOnce);
    }

    @Override // scala.collection.immutable.SortedMap, scala.collection.immutable.Map, scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> TreeMap<A, B1> $plus(Tuple2<A, B1> tuple2) {
        return updated((TreeMap<A, B>) tuple2.mo269_1(), (A) tuple2.mo268_2());
    }

    @Override // scala.collection.immutable.SortedMap, scala.collection.MapLike
    public <B1> TreeMap<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
        return $plus((Tuple2) tuple2).$plus((Tuple2) tuple22).$plus$plus((GenTraversableOnce) seq);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<TreeMap<A, B>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    @Override // scala.collection.immutable.SortedMap, scala.collection.MapLike
    public <B1> TreeMap<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
        return (TreeMap) genTraversableOnce.seq().$div$colon((TreeMap) repr(), new TreeMap$$anonfun$$plus$plus$1(this));
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(scala.collection.Traversable<B> traversable, CanBuildFrom<TreeMap<A, B>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (scala.collection.Traversable) traversable, (CanBuildFrom) canBuildFrom);
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<TreeMap<A, B>, B, That> canBuildFrom) {
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
        return MapLike.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<A, B>, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.PartialFunction, scala.Function1
    public <C> PartialFunction<A, C> andThen(Function1<B, C> function1) {
        return PartialFunction.Cclass.andThen(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public B apply(A a) {
        return (B) MapLike.Cclass.apply(this, a);
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply(BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply(BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply(BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply(BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.PartialFunction
    public <A1 extends A, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        return (B1) PartialFunction.Cclass.applyOrElse(this, a1, function1);
    }

    @Override // scala.collection.IterableLike, scala.Equals
    public boolean canEqual(Object obj) {
        return IterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That collect(PartialFunction<Tuple2<A, B>, B> partialFunction, CanBuildFrom<TreeMap<A, B>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<Tuple2<A, B>, B> partialFunction) {
        return TraversableOnce.Cclass.collectFirst(this, partialFunction);
    }

    @Override // scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Iterable> companion() {
        return Iterable.Cclass.companion(this);
    }

    @Override // scala.collection.generic.Sorted
    public int compare(A a, A a2) {
        return ordering().compare(a, a2);
    }

    @Override // scala.Function1
    public <A> Function1<A, B> compose(Function1<A, A> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public boolean contains(A a) {
        return RedBlackTree$.MODULE$.contains(this.tree, a, ordering());
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
    public int count(Function1<Tuple2<A, B>, Object> function1) {
        return TraversableOnce.Cclass.count(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    /* renamed from: default */
    public B mo6041default(A a) {
        return (B) MapLike.Cclass.m6058default(this, a);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public TreeMap<A, B> drop(int i) {
        return i <= 0 ? this : i >= size() ? empty() : new TreeMap<>(RedBlackTree$.MODULE$.drop(this.tree, i, ordering()), ordering());
    }

    @Override // scala.collection.IterableLike
    public TreeMap<A, B> dropRight(int i) {
        return take(size() - package$.MODULE$.max(i, 0));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public TreeMap<A, B> dropWhile(Function1<Tuple2<A, B>, Object> function1) {
        return drop(countWhile(function1));
    }

    @Override // scala.collection.immutable.SortedMap, scala.collection.immutable.Map, scala.collection.Map, scala.collection.MapLike
    public TreeMap<A, B> empty() {
        return TreeMap$.MODULE$.empty((Ordering) ordering());
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        return GenMapLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<Tuple2<A, B>, Object> function1) {
        return IterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object filter(Function1 function1) {
        return TraversableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.immutable.SortedMap, scala.collection.GenMapLike, scala.collection.MapLike
    public SortedMap<A, B> filterKeys(Function1<A, Object> function1) {
        return SortedMap.Cclass.filterKeys(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
    public scala.collection.Map filterNot(Function1 function1) {
        return MapLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Tuple2<A, B>> find(Function1<Tuple2<A, B>, Object> function1) {
        return IterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public A firstKey() {
        return RedBlackTree$.MODULE$.smallest(this.tree).key();
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
    public <B, That> That flatMap(Function1<Tuple2<A, B>, GenTraversableOnce<B>> function1, CanBuildFrom<TreeMap<A, B>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.flatMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable flatten(Function1 function1) {
        return GenericTraversableTemplate.Cclass.flatten(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
        return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, Tuple2<A, B>, B> function2) {
        return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<Tuple2<A, B>, B, B> function2) {
        return (B) IterableLike.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Tuple2<A, B>, Object> function1) {
        return IterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
        RedBlackTree$.MODULE$.foreach(this.tree, function1);
    }

    @Override // scala.collection.generic.Sorted
    public TreeMap<A, B> from(A a) {
        return new TreeMap<>(RedBlackTree$.MODULE$.from(this.tree, a, ordering()), ordering());
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Builder<B, Iterable<B>> genericBuilder() {
        return GenericTraversableTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<B> get(A a) {
        return RedBlackTree$.MODULE$.get(this.tree, a, ordering());
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> B1 getOrElse(A a, Function0<B1> function0) {
        return (B1) MapLike.Cclass.getOrElse(this, a, function0);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <K> Map<K, TreeMap<A, B>> groupBy(Function1<Tuple2<A, B>, K> function1) {
        return TraversableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.IterableLike
    public Iterator<TreeMap<A, B>> grouped(int i) {
        return IterableLike.Cclass.grouped(this, i);
    }

    @Override // scala.collection.generic.Sorted
    public boolean hasAll(Iterator<A> iterator) {
        return Sorted.Cclass.hasAll(this, iterator);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return TraversableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.GenMapLike
    public int hashCode() {
        return GenMapLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Tuple2<A, B> head() {
        RedBlackTree.Tree<A, B> smallest = RedBlackTree$.MODULE$.smallest(this.tree);
        return new Tuple2<>(smallest.key(), smallest.value());
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<Tuple2<A, B>> headOption() {
        return RedBlackTree$.MODULE$.isEmpty(this.tree) ? None$.MODULE$ : new Some(head());
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public TreeMap<A, B> init() {
        return new TreeMap<>(RedBlackTree$.MODULE$.delete(this.tree, lastKey(), ordering()), ordering());
    }

    @Override // scala.collection.TraversableLike
    public Iterator<TreeMap<A, B>> inits() {
        return TraversableLike.Cclass.inits(this);
    }

    public <B1> TreeMap<A, B1> insert(A a, B1 b1) {
        Predef$.MODULE$.m5971assert(!RedBlackTree$.MODULE$.contains(this.tree, a, ordering()));
        return new TreeMap<>(RedBlackTree$.MODULE$.update(this.tree, a, b1, true, ordering()), ordering());
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
    public boolean isDefinedAt(A a) {
        return RedBlackTree$.MODULE$.contains(this.tree, a, ordering());
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return MapLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
    public final boolean isTraversableAgain() {
        return TraversableLike.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A, B>> iterator() {
        return RedBlackTree$.MODULE$.iterator(this.tree, RedBlackTree$.MODULE$.iterator$default$2(), ordering());
    }

    @Override // scala.collection.SortedMapLike
    public Iterator<Tuple2<A, B>> iteratorFrom(A a) {
        return RedBlackTree$.MODULE$.iterator(this.tree, new Some(a), ordering());
    }

    @Override // scala.collection.immutable.SortedMap, scala.collection.GenMapLike, scala.collection.MapLike
    public SortedSet<A> keySet() {
        return SortedMap.Cclass.keySet(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.Iterable<A> keys() {
        return MapLike.Cclass.keys(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<A> keysIterator() {
        return RedBlackTree$.MODULE$.keysIterator(this.tree, RedBlackTree$.MODULE$.keysIterator$default$2(), ordering());
    }

    @Override // scala.collection.generic.Sorted
    public Iterator<A> keysIteratorFrom(A a) {
        return RedBlackTree$.MODULE$.keysIterator(this.tree, new Some(a), ordering());
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<A, B> last() {
        RedBlackTree.Tree<A, B> greatest = RedBlackTree$.MODULE$.greatest(this.tree);
        return new Tuple2<>(greatest.key(), greatest.value());
    }

    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public A lastKey() {
        return RedBlackTree$.MODULE$.greatest(this.tree).key();
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<Tuple2<A, B>> lastOption() {
        return RedBlackTree$.MODULE$.isEmpty(this.tree) ? None$.MODULE$ : new Some(last());
    }

    @Override // scala.PartialFunction
    public Function1<A, Option<B>> lift() {
        return PartialFunction.Cclass.lift(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public <B, That> That map(Function1<Tuple2<A, B>, B> function1, CanBuildFrom<TreeMap<A, B>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.immutable.SortedMap, scala.collection.GenMapLike, scala.collection.MapLike
    public <C> SortedMap<A, C> mapValues(Function1<B, C> function1) {
        return SortedMap.Cclass.mapValues(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object max(Ordering ordering) {
        return TraversableOnce.Cclass.max(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object maxBy(Function1 function1, Ordering ordering) {
        return TraversableOnce.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object min(Ordering ordering) {
        return TraversableOnce.Cclass.min(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object minBy(Function1 function1, Ordering ordering) {
        return TraversableOnce.Cclass.minBy(this, function1, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString() {
        return TraversableOnce.Cclass.mkString(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str) {
        return TraversableOnce.Cclass.mkString(this, str);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str, String str2, String str3) {
        return TraversableOnce.Cclass.mkString(this, str, str2, str3);
    }

    @Override // scala.collection.immutable.SortedMap, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<Tuple2<A, B>, TreeMap<A, B>> newBuilder() {
        return (Builder<Tuple2<A, B>, TreeMap<A, B>>) TreeMap$.MODULE$.newBuilder(ordering());
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return TraversableOnce.Cclass.nonEmpty(this);
    }

    @Override // scala.PartialFunction
    public <A1 extends A, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
        return PartialFunction.Cclass.orElse(this, partialFunction);
    }

    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public Ordering<A> ordering() {
        return this.ordering;
    }

    @Override // scala.collection.Parallelizable
    public Parallel par() {
        return Parallelizable.Cclass.par(this);
    }

    @Override // scala.collection.immutable.Iterable
    public Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner() {
        return MapLike.Cclass.parCombiner(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TreeMap<A, B>, TreeMap<A, B>> partition(Function1<Tuple2<A, B>, Object> function1) {
        return TraversableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B product(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.product(this, numeric);
    }

    @Override // scala.collection.generic.Sorted
    public TreeMap<A, B> range(A a, A a2) {
        return new TreeMap<>(RedBlackTree$.MODULE$.range(this.tree, a, a2, ordering()), ordering());
    }

    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public TreeMap<A, B> rangeImpl(Option<A> option, Option<A> option2) {
        return new TreeMap<>(RedBlackTree$.MODULE$.rangeImpl(this.tree, option, option2, ordering()), ordering());
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
        return (A1) TraversableOnce.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, Tuple2<A, B>, B> function2) {
        return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceLeftOption(Function2<B, Tuple2<A, B>, B> function2) {
        return TraversableOnce.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
        return TraversableOnce.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<Tuple2<A, B>, B, B> function2) {
        return (B) IterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceRightOption(Function2<Tuple2<A, B>, B, B> function2) {
        return TraversableOnce.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public Object repr() {
        return TraversableLike.Cclass.repr(this);
    }

    @Override // scala.collection.TraversableOnce
    public List<Tuple2<A, B>> reversed() {
        return TraversableOnce.Cclass.reversed(this);
    }

    @Override // scala.PartialFunction
    public <U> Function1<A, Object> runWith(Function1<B, U> function1) {
        return PartialFunction.Cclass.runWith(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return IterableLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<TreeMap<A, B>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanLeft(B b, Function2<B, Tuple2<A, B>, B> function2, CanBuildFrom<TreeMap<A, B>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanRight(B b, Function2<Tuple2<A, B>, B, B> function2, CanBuildFrom<TreeMap<A, B>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanRight(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.immutable.Map, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Map<A, B> seq() {
        return Map.Cclass.seq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return RedBlackTree$.MODULE$.count(this.tree);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public TreeMap<A, B> slice(int i, int i2) {
        return i2 <= i ? empty() : i <= 0 ? take(i2) : i2 >= size() ? drop(i) : new TreeMap<>(RedBlackTree$.MODULE$.slice(this.tree, i, i2, ordering()), ordering());
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
    public Iterator<TreeMap<A, B>> sliding(int i) {
        return IterableLike.Cclass.sliding(this, i);
    }

    @Override // scala.collection.IterableLike
    public Iterator<TreeMap<A, B>> sliding(int i, int i2) {
        return IterableLike.Cclass.sliding(this, i, i2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TreeMap<A, B>, TreeMap<A, B>> span(Function1<Tuple2<A, B>, Object> function1) {
        return splitAt(countWhile(function1));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TreeMap<A, B>, TreeMap<A, B>> splitAt(int i) {
        return new Tuple2<>(take(i), drop(i));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return MapLike.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B sum(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public TreeMap<A, B> tail() {
        return new TreeMap<>(RedBlackTree$.MODULE$.delete(this.tree, firstKey(), ordering()), ordering());
    }

    @Override // scala.collection.TraversableLike
    public Iterator<TreeMap<A, B>> tails() {
        return TraversableLike.Cclass.tails(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public TreeMap<A, B> take(int i) {
        return i <= 0 ? empty() : i >= size() ? this : new TreeMap<>(RedBlackTree$.MODULE$.take(this.tree, i, ordering()), ordering());
    }

    @Override // scala.collection.IterableLike
    public TreeMap<A, B> takeRight(int i) {
        return drop(size() - package$.MODULE$.max(i, 0));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public TreeMap<A, B> takeWhile(Function1<Tuple2<A, B>, Object> function1) {
        return take(countWhile(function1));
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.Iterable<Tuple2<A, B>> thisCollection() {
        return IterableLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<A, B>, Col> canBuildFrom) {
        return (Col) TraversableLike.Cclass.m184to(this, canBuildFrom);
    }

    @Override // scala.collection.generic.Sorted
    /* renamed from: to */
    public TreeMap<A, B> mo124to(A a) {
        return new TreeMap<>(RedBlackTree$.MODULE$.m150to(this.tree, a, ordering()), ordering());
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object toArray(ClassTag<B> classTag) {
        return TraversableOnce.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <C> Buffer<C> toBuffer() {
        return MapLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.Iterable toCollection(Object obj) {
        return IterableLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<Tuple2<A, B>> toIndexedSeq() {
        return TraversableOnce.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public scala.collection.Iterable<Tuple2<A, B>> toIterable() {
        return IterableLike.Cclass.toIterable(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<Tuple2<A, B>> toIterator() {
        return IterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<Tuple2<A, B>> toList() {
        return TraversableOnce.Cclass.toList(this);
    }

    @Override // scala.collection.immutable.Map, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<A, B>, Tuple2<T, U>> predef$$less$colon$less) {
        return Map.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<Tuple2<A, B>> toSeq() {
        return MapLike.Cclass.toSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return TraversableOnce.Cclass.toSet(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<Tuple2<A, B>> toStream() {
        return IterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return MapLike.Cclass.toString(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public scala.collection.Traversable<Tuple2<A, B>> toTraversable() {
        return TraversableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Vector<Tuple2<A, B>> toVector() {
        return TraversableOnce.Cclass.toVector(this);
    }

    @Override // scala.collection.immutable.MapLike
    public <C, That> That transform(Function2<A, B, C> function2, CanBuildFrom<TreeMap<A, B>, Tuple2<A, C>, That> canBuildFrom) {
        return (That) MapLike.Cclass.transform(this, function2, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.generic.Sorted
    public TreeMap<A, B> until(A a) {
        return new TreeMap<>(RedBlackTree$.MODULE$.until(this.tree, a, ordering()), ordering());
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<Tuple2<A, B>, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<Tuple2<A, B>, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.immutable.SortedMap, scala.collection.immutable.Map, scala.collection.GenMap, scala.collection.MapLike
    public <B1> TreeMap<A, B1> updated(A a, B1 b1) {
        return new TreeMap<>(RedBlackTree$.MODULE$.update(this.tree, a, b1, true, ordering()), ordering());
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.Iterable<B> values() {
        return MapLike.Cclass.values(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<B> valuesIterator() {
        return RedBlackTree$.MODULE$.valuesIterator(this.tree, RedBlackTree$.MODULE$.valuesIterator$default$2(), ordering());
    }

    @Override // scala.collection.SortedMapLike
    public Iterator<B> valuesIteratorFrom(A a) {
        return RedBlackTree$.MODULE$.valuesIterator(this.tree, new Some(a), ordering());
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return IterableLike.Cclass.view(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public IterableView<Tuple2<A, B>, TreeMap<A, B>> view(int i, int i2) {
        return IterableLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.immutable.Map
    public <B1> Map<A, B1> withDefault(Function1<A, B1> function1) {
        return Map.Cclass.withDefault(this, function1);
    }

    @Override // scala.collection.immutable.Map
    public <B1> Map<A, B1> withDefaultValue(B1 b1) {
        return Map.Cclass.withDefaultValue(this, b1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
    public FilterMonadic<Tuple2<A, B>, TreeMap<A, B>> withFilter(Function1<Tuple2<A, B>, Object> function1) {
        return TraversableLike.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<TreeMap<A, B>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<TreeMap<A, B>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<TreeMap<A, B>, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
