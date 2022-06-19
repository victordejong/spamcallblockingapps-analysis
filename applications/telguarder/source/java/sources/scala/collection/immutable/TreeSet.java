package scala.collection.immutable;

import java.util.Objects;
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
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableView;
import scala.collection.Iterator;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Set;
import scala.collection.SetLike;
import scala.collection.SortedSet;
import scala.collection.SortedSetLike;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.FilterMonadic;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericSetTemplate;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Sorted;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.RedBlackTree;
import scala.collection.immutable.Set;
import scala.collection.immutable.SortedSet;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSet;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.math.package$;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\tMs!B\u0001\u0003\u0011\u0003I\u0011a\u0002+sK\u0016\u001cV\r\u001e\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005)YQ\"\u0001\u0002\u0007\u000b1\u0011\u0001\u0012A\u0007\u0003\u000fQ\u0013X-Z*fiN\u00191BD\u0018\u0011\u0007=\u0011B#D\u0001\u0011\u0015\t\tB!A\u0004hK:,'/[2\n\u0005M\u0001\"!G%n[V$\u0018M\u00197f'>\u0014H/\u001a3TKR4\u0015m\u0019;pef\u0004\"AC\u000b\u0007\t1\u0011\u0001AF\u000b\u0003/\u0005\u001aR!\u0006\r\u001dU=\u0002\"!\u0007\u000e\u000e\u0003\u0019I!a\u0007\u0004\u0003\r\u0005s\u0017PU3g!\rQQdH\u0005\u0003=\t\u0011\u0011bU8si\u0016$7+\u001a;\u0011\u0005\u0001\nC\u0002\u0001\u0003\u0006EU\u0011\ra\t\u0002\u0002\u0003F\u0011Ae\n\t\u00033\u0015J!A\n\u0004\u0003\u000f9{G\u000f[5oOB\u0011\u0011\u0004K\u0005\u0003S\u0019\u00111!\u00118z!\u0011YCf\b\u0018\u000e\u0003\u0011I!!\f\u0003\u0003\u001bM{'\u000f^3e'\u0016$H*[6f!\rQQc\b\t\u00033AJ!!\r\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0011M*\"\u0011!Q\u0001\nQ\nA\u0001\u001e:fKB!Q\u0007O\u0010<\u001d\tQa'\u0003\u00028\u0005\u0005a!+\u001a3CY\u0006\u001c7\u000e\u0016:fK&\u0011\u0011H\u000f\u0002\u0005)J,WM\u0003\u00028\u0005A\u0011\u0011\u0004P\u0005\u0003{\u0019\u0011A!\u00168ji\"Aq(\u0006BC\u0002\u0013\r\u0001)\u0001\u0005pe\u0012,'/\u001b8h+\u0005\t\u0005c\u0001\"F?9\u0011\u0011dQ\u0005\u0003\t\u001a\tq\u0001]1dW\u0006<W-\u0003\u0002G\u000f\nAqJ\u001d3fe&twM\u0003\u0002E\r!A\u0011*\u0006B\u0001B\u0003%\u0011)A\u0005pe\u0012,'/\u001b8hA!)1*\u0006C\u0005\u0019\u00061A(\u001b8jiz\"\"!T(\u0015\u00059r\u0005\"B K\u0001\b\t\u0005\"B\u001aK\u0001\u0004!\u0004\"B)\u0016\t\u0003\u0012\u0016\u0001D:ue&tw\r\u0015:fM&DX#A*\u0011\u0005QKV\"A+\u000b\u0005Y;\u0016\u0001\u00027b]\u001eT\u0011\u0001W\u0001\u0005U\u00064\u0018-\u0003\u0002[+\n11\u000b\u001e:j]\u001eDQ\u0001X\u000b\u0005Bu\u000bAa]5{KV\ta\f\u0005\u0002\u001a?&\u0011\u0001M\u0002\u0002\u0004\u0013:$\b\"\u00022\u0016\t\u0003\u001a\u0017\u0001\u00025fC\u0012,\u0012a\b\u0005\u0006KV!\tEZ\u0001\u000bQ\u0016\fGm\u00149uS>tW#A4\u0011\u0007eAw$\u0003\u0002j\r\t1q\n\u001d;j_:DQa[\u000b\u0005B\r\fA\u0001\\1ti\")Q.\u0006C!M\u0006QA.Y:u\u001fB$\u0018n\u001c8\t\u000b=,B\u0011\t9\u0002\tQ\f\u0017\u000e\\\u000b\u0002]!)!/\u0006C!a\u0006!\u0011N\\5u\u0011\u0015!X\u0003\"\u0011v\u0003\u0011!'o\u001c9\u0015\u000592\b\"B<t\u0001\u0004q\u0016!\u00018\t\u000be,B\u0011\t>\u0002\tQ\f7.\u001a\u000b\u0003]mDQa\u001e=A\u0002yCQ!`\u000b\u0005By\fQa\u001d7jG\u0016$BAL@\u0002\u0004!1\u0011\u0011\u0001?A\u0002y\u000bAA\u001a:p[\"1\u0011Q\u0001?A\u0002y\u000bQ!\u001e8uS2Dq!!\u0003\u0016\t\u0003\nY!A\u0005ee>\u0004(+[4iiR\u0019a&!\u0004\t\r]\f9\u00011\u0001_\u0011\u001d\t\t\"\u0006C!\u0003'\t\u0011\u0002^1lKJKw\r\u001b;\u0015\u00079\n)\u0002\u0003\u0004x\u0003\u001f\u0001\rA\u0018\u0005\b\u00033)B\u0011IA\u000e\u0003\u001d\u0019\b\u000f\\5u\u0003R$B!!\b\u0002$A)\u0011$a\b/]%\u0019\u0011\u0011\u0005\u0004\u0003\rQ+\b\u000f\\33\u0011\u00199\u0018q\u0003a\u0001=\"A\u0011qE\u000b!\n\u0013\tI#\u0001\u0006d_VtGo\u00165jY\u0016$2AXA\u0016\u0011!\ti#!\nA\u0002\u0005=\u0012!\u00019\u0011\re\t\tdHA\u001b\u0013\r\t\u0019D\u0002\u0002\n\rVt7\r^5p]F\u00022!GA\u001c\u0013\r\tID\u0002\u0002\b\u0005>|G.Z1o\u0011\u001d\ti$\u0006C!\u0003\u007f\t\u0011\u0002\u001a:pa^C\u0017\u000e\\3\u0015\u00079\n\t\u0005\u0003\u0005\u0002.\u0005m\u0002\u0019AA\u0018\u0011\u001d\t)%\u0006C!\u0003\u000f\n\u0011\u0002^1lK^C\u0017\u000e\\3\u0015\u00079\nI\u0005\u0003\u0005\u0002.\u0005\r\u0003\u0019AA\u0018\u0011\u001d\ti%\u0006C!\u0003\u001f\nAa\u001d9b]R!\u0011QDA)\u0011!\ti#a\u0013A\u0002\u0005=\u0002BB&\u0016\t\u0003\t)\u0006\u0006\u0002\u0002XQ\u0019a&!\u0017\t\r}\n\u0019\u0006q\u0001B\u0011\u001d\ti&\u0006C\u0005\u0003?\naA\\3x'\u0016$Hc\u0001\u0018\u0002b!9\u00111MA.\u0001\u0004!\u0014!\u0001;\t\r\u0005\u001dT\u0003\"\u0011q\u0003\u0015)W\u000e\u001d;z\u0011\u001d\tY'\u0006C\u0001\u0003[\nQ\u0001\n9mkN$2ALA8\u0011\u001d\t\t(!\u001bA\u0002}\tA!\u001a7f[\"9\u0011QO\u000b\u0005\u0002\u0005]\u0014AB5og\u0016\u0014H\u000fF\u0002/\u0003sBq!!\u001d\u0002t\u0001\u0007q\u0004C\u0004\u0002~U!\t!a \u0002\r\u0011j\u0017N\\;t)\rq\u0013\u0011\u0011\u0005\b\u0003c\nY\b1\u0001 \u0011\u001d\t))\u0006C\u0001\u0003\u000f\u000b\u0001bY8oi\u0006Lgn\u001d\u000b\u0005\u0003k\tI\tC\u0004\u0002r\u0005\r\u0005\u0019A\u0010\t\u000f\u00055U\u0003\"\u0001\u0002\u0010\u0006A\u0011\u000e^3sCR|'/\u0006\u0002\u0002\u0012B!1&a% \u0013\r\t)\n\u0002\u0002\t\u0013R,'/\u0019;pe\"9\u0011\u0011T\u000b\u0005B\u0005m\u0015\u0001E6fsNLE/\u001a:bi>\u0014hI]8n)\u0011\t\t*!(\t\u000f\u0005}\u0015q\u0013a\u0001?\u0005)1\u000f^1si\"9\u00111U\u000b\u0005B\u0005\u0015\u0016a\u00024pe\u0016\f7\r[\u000b\u0005\u0003O\u000b\t\fF\u0002<\u0003SC\u0001\"a+\u0002\"\u0002\u0007\u0011QV\u0001\u0002MB1\u0011$!\r \u0003_\u00032\u0001IAY\t\u001d\t\u0019,!)C\u0002\r\u0012\u0011!\u0016\u0005\b\u0003o+B\u0011IA]\u0003%\u0011\u0018M\\4f\u00136\u0004H\u000eF\u0003/\u0003w\u000bi\fC\u0004\u0002\u0002\u0005U\u0006\u0019A4\t\u000f\u0005\u0015\u0011Q\u0017a\u0001O\"9\u0011\u0011Y\u000b\u0005B\u0005\r\u0017!\u0002:b]\u001e,G#\u0002\u0018\u0002F\u0006\u001d\u0007bBA\u0001\u0003\u007f\u0003\ra\b\u0005\b\u0003\u000b\ty\f1\u0001 \u0011\u001d\t\t!\u0006C!\u0003\u0017$2ALAg\u0011\u001d\t\t!!3A\u0002}Aq!!5\u0016\t\u0003\n\u0019.\u0001\u0002u_R\u0019a&!6\t\u000f\u0005E\u0017q\u001aa\u0001?!9\u0011QA\u000b\u0005B\u0005eGc\u0001\u0018\u0002\\\"9\u0011QAAl\u0001\u0004y\u0002BBAp+\u0011\u00053-\u0001\u0005gSJ\u001cHoS3z\u0011\u0019\t\u0019/\u0006C!G\u00069A.Y:u\u0017\u0016L\bfB\u000b\u0002h\u00065\u0018\u0011\u001f\t\u00043\u0005%\u0018bAAv\r\t)B-\u001a9sK\u000e\fG/\u001a3J]\",'/\u001b;b]\u000e,\u0017EAAx\u0003M#\u0006.\u001a\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!I\u0016$\u0018-\u001b7tA=4\u0007%[7nkR\f'\r\\3!iJ,W\rI:fiN\u0004S.Y6fA%t\u0007.\u001a:ji&tw\r\t4s_6\u0004C\u000f[3nAUtw/[:f]\u0005\u0012\u00111_\u0001\u0007e9\n\u0014G\f\u0019)\u000fU\t90!@\u0002��B\u0019\u0011$!?\n\u0007\u0005mhA\u0001\tTKJL\u0017\r\u001c,feNLwN\\+J\t\u0006)a/\u00197vKzA\u0011wF+!qmG6\u0002\u0003\u0004L\u0017\u0011\u0005!1\u0001\u000b\u0002\u0013!9!qA\u0006\u0005\u0004\t%\u0011aD5na2L7-\u001b;Ck&dG-\u001a:\u0016\t\t-!1\u0004\u000b\u0005\u0005\u001b\u0011y\u0002\u0005\u0005\u0003\u0010\tU!\u0011\u0004B\u000f\u001b\t\u0011\tBC\u0002\u0003\u0014\u0011\tq!\\;uC\ndW-\u0003\u0003\u0003\u0018\tE!a\u0002\"vS2$WM\u001d\t\u0004A\tmAA\u0002\u0012\u0003\u0006\t\u00071\u0005\u0005\u0003\u000b+\te\u0001bB \u0003\u0006\u0001\u000f!\u0011\u0005\t\u0005\u0005\u0016\u0013I\u0002C\u0004\u0003&-!\tEa\n\u0002\u00159,wOQ;jY\u0012,'/\u0006\u0003\u0003*\t=B\u0003\u0002B\u0016\u0005g\u0001\u0002Ba\u0004\u0003\u0016\t5\"\u0011\u0007\t\u0004A\t=BA\u0002\u0012\u0003$\t\u00071\u0005\u0005\u0003\u000b+\t5\u0002bB \u0003$\u0001\u000f!Q\u0007\t\u0005\u0005\u0016\u0013i\u0003C\u0004\u0002h-!\tA!\u000f\u0016\t\tm\"\u0011\t\u000b\u0005\u0005{\u0011\u0019\u0005\u0005\u0003\u000b+\t}\u0002c\u0001\u0011\u0003B\u00111!Ea\u000eC\u0002\rBqa\u0010B\u001c\u0001\b\u0011)\u0005\u0005\u0003C\u000b\n}\u0002\"\u0003B%\u0017\u0005\u0005I\u0011\u0002B&\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\t5\u0003c\u0001+\u0003P%\u0019!\u0011K+\u0003\r=\u0013'.Z2u\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/TreeSet.class */
public class TreeSet<A> implements SortedSet<A>, Serializable {
    public static final long serialVersionUID = -5685982407650748405L;
    private final Ordering<A> ordering;
    private final RedBlackTree.Tree<A, BoxedUnit> tree;

    private TreeSet(RedBlackTree.Tree<A, BoxedUnit> tree, Ordering<A> ordering) {
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
        Function1.Cclass.$init$(this);
        GenSetLike.Cclass.$init$(this);
        GenericSetTemplate.Cclass.$init$(this);
        GenSet.Cclass.$init$(this);
        Subtractable.Cclass.$init$(this);
        SetLike.Cclass.$init$(this);
        Set.Cclass.$init$(this);
        Set.Cclass.$init$(this);
        Sorted.Cclass.$init$(this);
        SortedSetLike.Cclass.$init$(this);
        SortedSet.Cclass.$init$(this);
        SortedSet.Cclass.$init$(this);
        Objects.requireNonNull(ordering, "ordering must not be null");
    }

    public TreeSet(Ordering<A> ordering) {
        this(null, ordering);
    }

    private int countWhile(Function1<A, Object> function1) {
        Iterator<A> it = iterator();
        int i = 0;
        while (it.hasNext() && BoxesRunTime.unboxToBoolean(function1.apply(it.next()))) {
            i++;
        }
        return i;
    }

    public static <A> Builder<A, TreeSet<A>> implicitBuilder(Ordering<A> ordering) {
        return TreeSet$.MODULE$.implicitBuilder(ordering);
    }

    public static <A> CanBuildFrom<TreeSet<?>, A, TreeSet<A>> newCanBuildFrom(Ordering<A> ordering) {
        return (CanBuildFrom<TreeSet<?>, A, TreeSet<A>>) TreeSet$.MODULE$.newCanBuildFrom(ordering);
    }

    private TreeSet<A> newSet(RedBlackTree.Tree<A, BoxedUnit> tree) {
        return new TreeSet<>(tree, ordering());
    }

    @Override // scala.collection.GenSetLike
    public Object $amp(GenSet genSet) {
        Object intersect;
        intersect = intersect(genSet);
        return intersect;
    }

    @Override // scala.collection.GenSetLike
    public Object $amp$tilde(GenSet genSet) {
        Object diff;
        diff = diff(genSet);
        return diff;
    }

    @Override // scala.collection.GenSetLike
    public Object $bar(GenSet genSet) {
        Object union;
        union = union(genSet);
        return union;
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

    @Override // scala.collection.generic.Subtractable
    public Subtractable $minus(Object obj, Object obj2, Seq seq) {
        Subtractable $minus$minus;
        $minus$minus = $minus((TreeSet<A>) obj).$minus(obj2).$minus$minus(seq);
        return $minus$minus;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    public TreeSet<A> $minus(A a) {
        return RedBlackTree$.MODULE$.contains(this.tree, a, ordering()) ? newSet(RedBlackTree$.MODULE$.delete(this.tree, a, ordering())) : this;
    }

    @Override // scala.collection.generic.Subtractable
    public Subtractable $minus$minus(GenTraversableOnce genTraversableOnce) {
        return Subtractable.Cclass.$minus$minus(this, genTraversableOnce);
    }

    @Override // scala.collection.SetLike
    public scala.collection.Set $plus(Object obj, Object obj2, Seq seq) {
        scala.collection.Set $plus$plus;
        $plus$plus = $plus((TreeSet<A>) ((SetLike) obj)).$plus((scala.collection.Set) obj2).$plus$plus(seq);
        return $plus$plus;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public TreeSet<A> $plus(A a) {
        return newSet(RedBlackTree$.MODULE$.update(this.tree, a, BoxedUnit.UNIT, false, ordering()));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    @Override // scala.collection.SetLike
    public scala.collection.Set $plus$plus(GenTraversableOnce genTraversableOnce) {
        return SetLike.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(scala.collection.Traversable<B> traversable, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (scala.collection.Traversable) traversable, (CanBuildFrom) canBuildFrom);
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
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
        return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.Function1
    public <A> Function1<A, A> andThen(Function1<Object, A> function1) {
        return Function1.Cclass.andThen(this, function1);
    }

    @Override // scala.collection.GenSetLike, scala.Function1
    public boolean apply(A a) {
        return GenSetLike.Cclass.apply(this, a);
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((TreeSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((TreeSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((TreeSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((TreeSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((TreeSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((TreeSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((TreeSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((TreeSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((TreeSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((TreeSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((TreeSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((TreeSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((TreeSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((TreeSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((TreeSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((TreeSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply((TreeSet<A>) BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply((TreeSet<A>) BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply((TreeSet<A>) BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply((TreeSet<A>) BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((TreeSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((TreeSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((TreeSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((TreeSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.collection.IterableLike, scala.Equals
    public boolean canEqual(Object obj) {
        return IterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
        return TraversableOnce.Cclass.collectFirst(this, partialFunction);
    }

    @Override // scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Set> companion() {
        return Set.Cclass.companion(this);
    }

    @Override // scala.collection.generic.Sorted
    public int compare(A a, A a2) {
        return Sorted.Cclass.compare(this, a, a2);
    }

    @Override // scala.Function1
    public <A> Function1<A, Object> compose(Function1<A, A> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
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
    public int count(Function1<A, Object> function1) {
        return TraversableOnce.Cclass.count(this, function1);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public scala.collection.Set diff(GenSet genSet) {
        return SetLike.Cclass.diff(this, genSet);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public TreeSet<A> drop(int i) {
        return i <= 0 ? this : i >= size() ? empty() : newSet(RedBlackTree$.MODULE$.drop(this.tree, i, ordering()));
    }

    @Override // scala.collection.IterableLike
    public TreeSet<A> dropRight(int i) {
        return take(size() - package$.MODULE$.max(i, 0));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public TreeSet<A> dropWhile(Function1<A, Object> function1) {
        return drop(countWhile(function1));
    }

    @Override // scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public TreeSet<A> empty() {
        return TreeSet$.MODULE$.empty((Ordering) ordering());
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        return GenSetLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return IterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object filter(Function1 function1) {
        return TraversableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
    public Object filterNot(Function1 function1) {
        return TraversableLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<A> find(Function1<A, Object> function1) {
        return IterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public A firstKey() {
        return head();
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
    public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
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

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        RedBlackTree$.MODULE$.foreachKey(this.tree, function1);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public TreeSet<A> from(A a) {
        return newSet(RedBlackTree$.MODULE$.from(this.tree, a, ordering()));
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Builder<B, Set<B>> genericBuilder() {
        return GenericTraversableTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <K> Map<K, TreeSet<A>> groupBy(Function1<A, K> function1) {
        return TraversableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.IterableLike
    public Iterator<TreeSet<A>> grouped(int i) {
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

    @Override // scala.collection.GenSetLike
    public int hashCode() {
        return GenSetLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        return (A) RedBlackTree$.MODULE$.smallest(this.tree).key();
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<A> headOption() {
        return RedBlackTree$.MODULE$.isEmpty(this.tree) ? None$.MODULE$ : new Some(head());
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public TreeSet<A> init() {
        return new TreeSet<>(RedBlackTree$.MODULE$.delete(this.tree, lastKey(), ordering()), ordering());
    }

    @Override // scala.collection.TraversableLike
    public Iterator<TreeSet<A>> inits() {
        return TraversableLike.Cclass.inits(this);
    }

    public TreeSet<A> insert(A a) {
        Predef$.MODULE$.m5971assert(!RedBlackTree$.MODULE$.contains(this.tree, a, ordering()));
        return newSet(RedBlackTree$.MODULE$.update(this.tree, a, BoxedUnit.UNIT, false, ordering()));
    }

    @Override // scala.collection.GenSetLike
    public Object intersect(GenSet genSet) {
        return GenSetLike.Cclass.intersect(this, genSet);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return SetLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
    public final boolean isTraversableAgain() {
        return TraversableLike.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return RedBlackTree$.MODULE$.keysIterator(this.tree, RedBlackTree$.MODULE$.keysIterator$default$2(), ordering());
    }

    @Override // scala.collection.SortedSetLike
    public Iterator<A> iteratorFrom(A a) {
        return SortedSetLike.Cclass.iteratorFrom(this, a);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public scala.collection.SortedSet keySet() {
        return SortedSetLike.Cclass.keySet(this);
    }

    @Override // scala.collection.generic.Sorted
    public Iterator<A> keysIteratorFrom(A a) {
        return RedBlackTree$.MODULE$.keysIterator(this.tree, new Some(a), ordering());
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public A last() {
        return (A) RedBlackTree$.MODULE$.greatest(this.tree).key();
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public A lastKey() {
        return last();
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<A> lastOption() {
        return RedBlackTree$.MODULE$.isEmpty(this.tree) ? None$.MODULE$ : new Some(last());
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public <B, That> That map(Function1<A, B> function1, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) SetLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A max(Ordering<B> ordering) {
        return (A) TraversableOnce.Cclass.max(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A maxBy(Function1<A, B> function1, Ordering<B> ordering) {
        return (A) TraversableOnce.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A min(Ordering<B> ordering) {
        return (A) TraversableOnce.Cclass.min(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A minBy(Function1<A, B> function1, Ordering<B> ordering) {
        return (A) TraversableOnce.Cclass.minBy(this, function1, ordering);
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

    @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<A, TreeSet<A>> newBuilder() {
        return SetLike.Cclass.newBuilder(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return TraversableOnce.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public Ordering<A> ordering() {
        return this.ordering;
    }

    @Override // scala.collection.Parallelizable
    public Parallel par() {
        return Parallelizable.Cclass.par(this);
    }

    @Override // scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSet<A>> parCombiner() {
        return Set.Cclass.parCombiner(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TreeSet<A>, TreeSet<A>> partition(Function1<A, Object> function1) {
        return TraversableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B product(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.product(this, numeric);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public TreeSet<A> range(A a, A a2) {
        return newSet(RedBlackTree$.MODULE$.range(this.tree, a, a2, ordering()));
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public TreeSet<A> rangeImpl(Option<A> option, Option<A> option2) {
        return newSet(RedBlackTree$.MODULE$.rangeImpl(this.tree, option, option2, ordering()));
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

    @Override // scala.collection.SetLike
    public /* synthetic */ Object scala$collection$SetLike$$super$map(Function1 function1, CanBuildFrom canBuildFrom) {
        return TraversableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.SortedSetLike
    public /* synthetic */ boolean scala$collection$SortedSetLike$$super$subsetOf(GenSet genSet) {
        return GenSetLike.Cclass.subsetOf(this, genSet);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanRight(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Set<A> seq() {
        return Set.Cclass.seq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return RedBlackTree$.MODULE$.count(this.tree);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public TreeSet<A> slice(int i, int i2) {
        return i2 <= i ? empty() : i <= 0 ? take(i2) : i2 >= size() ? drop(i) : newSet(RedBlackTree$.MODULE$.slice(this.tree, i, i2, ordering()));
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
    public Iterator<TreeSet<A>> sliding(int i) {
        return IterableLike.Cclass.sliding(this, i);
    }

    @Override // scala.collection.IterableLike
    public Iterator<TreeSet<A>> sliding(int i, int i2) {
        return IterableLike.Cclass.sliding(this, i, i2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TreeSet<A>, TreeSet<A>> span(Function1<A, Object> function1) {
        return splitAt(countWhile(function1));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TreeSet<A>, TreeSet<A>> splitAt(int i) {
        return new Tuple2<>(take(i), drop(i));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "TreeSet";
    }

    @Override // scala.collection.GenSetLike, scala.collection.SortedSetLike
    public boolean subsetOf(GenSet<A> genSet) {
        return SortedSetLike.Cclass.subsetOf(this, genSet);
    }

    @Override // scala.collection.SetLike
    public Iterator<TreeSet<A>> subsets() {
        return SetLike.Cclass.subsets(this);
    }

    @Override // scala.collection.SetLike
    public Iterator<TreeSet<A>> subsets(int i) {
        return SetLike.Cclass.subsets(this, i);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B sum(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public TreeSet<A> tail() {
        return new TreeSet<>(RedBlackTree$.MODULE$.delete(this.tree, firstKey(), ordering()), ordering());
    }

    @Override // scala.collection.TraversableLike
    public Iterator<TreeSet<A>> tails() {
        return TraversableLike.Cclass.tails(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public TreeSet<A> take(int i) {
        return i <= 0 ? empty() : i >= size() ? this : newSet(RedBlackTree$.MODULE$.take(this.tree, i, ordering()));
    }

    @Override // scala.collection.IterableLike
    public TreeSet<A> takeRight(int i) {
        return drop(size() - package$.MODULE$.max(i, 0));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public TreeSet<A> takeWhile(Function1<A, Object> function1) {
        return take(countWhile(function1));
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.Iterable<A> thisCollection() {
        return IterableLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, A, Col> canBuildFrom) {
        return (Col) TraversableLike.Cclass.m184to(this, canBuildFrom);
    }

    @Override // scala.collection.generic.Sorted
    /* renamed from: to */
    public TreeSet<A> mo124to(A a) {
        return newSet(RedBlackTree$.MODULE$.m150to(this.tree, a, ordering()));
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object toArray(ClassTag<B> classTag) {
        return TraversableOnce.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return SetLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public scala.collection.Iterable toCollection(Object obj) {
        return IterableLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<A> toIndexedSeq() {
        return TraversableOnce.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public scala.collection.Iterable<A> toIterable() {
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
        return SetLike.Cclass.toSeq(this);
    }

    @Override // scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return Set.Cclass.toSet(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<A> toStream() {
        return IterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return SetLike.Cclass.toString(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public scala.collection.Traversable<A> toTraversable() {
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

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public scala.collection.Set union(GenSet genSet) {
        return SetLike.Cclass.union(this, genSet);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public TreeSet<A> until(A a) {
        return newSet(RedBlackTree$.MODULE$.until(this.tree, a, ordering()));
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<A, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<A, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return IterableLike.Cclass.view(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public IterableView<A, TreeSet<A>> view(int i, int i2) {
        return IterableLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
    public FilterMonadic<A, TreeSet<A>> withFilter(Function1<A, Object> function1) {
        return TraversableLike.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<TreeSet<A>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<TreeSet<A>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<TreeSet<A>, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
