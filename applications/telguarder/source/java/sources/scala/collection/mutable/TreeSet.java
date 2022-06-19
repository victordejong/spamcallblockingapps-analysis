package scala.collection.mutable;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
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
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Shrinkable$$anonfun$$minus$minus$eq$1;
import scala.collection.generic.Sorted;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.RedBlackTree;
import scala.collection.immutable.RedBlackTree$;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Set;
import scala.collection.mutable.SetLike;
import scala.collection.mutable.SortedSet;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParSet;
import scala.collection.script.Message;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.Null$;
import scala.runtime.ObjectRef;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u001dv!B\u0001\u0003\u0011\u0003I\u0011a\u0002+sK\u0016\u001cV\r\u001e\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\u000b\u00175\t!AB\u0003\r\u0005!\u0005QBA\u0004Ue\u0016,7+\u001a;\u0014\u0007-qQ\u0007E\u0002\u0010%Qi\u0011\u0001\u0005\u0006\u0003#\u0011\tqaZ3oKJL7-\u0003\u0002\u0014!\t9R*\u001e;bE2,7k\u001c:uK\u0012\u001cV\r\u001e$bGR|'/\u001f\t\u0003\u0015U1A\u0001\u0004\u0002\u0001-U\u0011q#I\n\b+aa\"F\f\u001a6!\tI\"$D\u0001\u0007\u0013\tYbA\u0001\u0004B]f\u0014VM\u001a\t\u0004\u0015uy\u0012B\u0001\u0010\u0003\u0005%\u0019vN\u001d;fIN+G\u000f\u0005\u0002!C1\u0001A!\u0002\u0012\u0016\u0005\u0004\u0019#!A!\u0012\u0005\u0011:\u0003CA\r&\u0013\t1cAA\u0004O_RD\u0017N\\4\u0011\u0005eA\u0013BA\u0015\u0007\u0005\r\te.\u001f\t\u0005\u0015-zR&\u0003\u0002-\u0005\t91+\u001a;MS.,\u0007c\u0001\u0006\u0016?A!q\u0006M\u0010.\u001b\u0005!\u0011BA\u0019\u0005\u00055\u0019vN\u001d;fIN+G\u000fT5lKB\u0019!bM\u0010\n\u0005Q\u0012!aA*fiB\u0011\u0011DN\u0005\u0003o\u0019\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001\"O\u000b\u0003\u0002\u0003\u0006IAO\u0001\biJ,WMU3g!\rYd\bQ\u0007\u0002y)\u0011QHB\u0001\beVtG/[7f\u0013\tyDHA\u0005PE*,7\r\u001e*fMB!\u0011iR\u0010K\u001d\t\u0011U)D\u0001D\u0015\t!E!A\u0005j[6,H/\u00192mK&\u0011aiQ\u0001\r%\u0016$'\t\\1dWR\u0013X-Z\u0005\u0003\u0011&\u0013A\u0001\u0016:fK*\u0011ai\u0011\t\u00033-K!\u0001\u0014\u0004\u0003\t9+H\u000e\u001c\u0005\t\u001dV\u0011\t\u0011)A\u0005\u001f\u0006!aM]8n!\rI\u0002kH\u0005\u0003#\u001a\u0011aa\u00149uS>t\u0007\u0002C*\u0016\u0005\u0003\u0005\u000b\u0011B(\u0002\u000bUtG/\u001b7\t\u0011U+\"Q1A\u0005\u0004Y\u000b\u0001b\u001c:eKJLgnZ\u000b\u0002/B\u0019\u0001lW\u0010\u000f\u0005eI\u0016B\u0001.\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!\u0001X/\u0003\u0011=\u0013H-\u001a:j]\u001eT!A\u0017\u0004\t\u0011}+\"\u0011!Q\u0001\n]\u000b\u0011b\u001c:eKJLgn\u001a\u0011\t\u000b\u0005,B\u0011\u00022\u0002\rqJg.\u001b;?)\u0011\u0019WMZ4\u0015\u00055\"\u0007\"B+a\u0001\b9\u0006\"B\u001da\u0001\u0004Q\u0004\"\u0002(a\u0001\u0004y\u0005\"B*a\u0001\u0004y\u0005\"B1\u0016\t\u0003IG#\u00016\u0015\u00055Z\u0007\"B+i\u0001\b9\u0006\"B7\u0016\t\u0003r\u0017\u0001B:ju\u0016,\u0012a\u001c\t\u00033AL!!\u001d\u0004\u0003\u0007%sG\u000fC\u0003t+\u0011\u0005C/\u0001\u0007tiJLgn\u001a)sK\u001aL\u00070F\u0001v!\t180D\u0001x\u0015\tA\u00180\u0001\u0003mC:<'\"\u0001>\u0002\t)\fg/Y\u0005\u0003y^\u0014aa\u0015;sS:<\u0007\"\u0002@\u0016\t\u0003z\u0018!B3naRLX#A\u0017\t\u000f\u0005\rQ\u0003\"\u0003\u0002\u0006\u0005I\u0001/[2l\u0005>,h\u000e\u001a\u000b\b\u001f\u0006\u001d\u0011\u0011CA\u000b\u0011!\tI!!\u0001A\u0002\u0005-\u0011AC2p[B\f'/[:p]B1\u0011$!\u0004 ?}I1!a\u0004\u0007\u0005%1UO\\2uS>t'\u0007C\u0004\u0002\u0014\u0005\u0005\u0001\u0019A(\u0002\u0011=dGMQ8v]\u0012Dq!a\u0006\u0002\u0002\u0001\u0007q*\u0001\u0005oK^\u0014u.\u001e8e\u0011\u001d\tY\"\u0006C!\u0003;\t\u0011B]1oO\u0016LU\u000e\u001d7\u0015\u000b5\ny\"a\t\t\u000f\u0005\u0005\u0012\u0011\u0004a\u0001\u001f\u00069aM]8n\u0003J<\u0007bBA\u0013\u00033\u0001\raT\u0001\tk:$\u0018\u000e\\!sO\"9\u0011\u0011F\u000b\u0005B\u0005-\u0012!\u0003\u0013nS:,8\u000fJ3r)\u0011\ti#a\f\u000e\u0003UAq!!\r\u0002(\u0001\u0007q$\u0001\u0003fY\u0016l\u0007bBA\u001b+\u0011\u0005\u0013qG\u0001\tIAdWo\u001d\u0013fcR!\u0011QFA\u001d\u0011\u001d\t\t$a\rA\u0002}Aq!!\u0010\u0016\t\u0003\ny$A\u0003dY>tW\rF\u0001.\u0011%\t\u0019%\u0006b\u0001\n\u0013\t)%A\u0007o_R\u0004&o\u001c6fGRLwN\\\u000b\u0003\u0003\u000f\u00022!GA%\u0013\r\tYE\u0002\u0002\b\u0005>|G.Z1o\u0011!\ty%\u0006Q\u0001\n\u0005\u001d\u0013A\u00048piB\u0013xN[3di&|g\u000e\t\u0005\b\u0003'*B\u0011IA+\u0003!\u0019wN\u001c;bS:\u001cH\u0003BA$\u0003/Bq!!\r\u0002R\u0001\u0007q\u0004C\u0004\u0002\\U!\t%!\u0018\u0002\u0011%$XM]1u_J,\"!a\u0018\u0011\t=\n\tgH\u0005\u0004\u0003G\"!\u0001C%uKJ\fGo\u001c:\t\u000f\u0005\u001dT\u0003\"\u0011\u0002j\u0005\u00012.Z=t\u0013R,'/\u0019;pe\u001a\u0013x.\u001c\u000b\u0005\u0003?\nY\u0007C\u0004\u0002n\u0005\u0015\u0004\u0019A\u0010\u0002\u000bM$\u0018M\u001d;\t\u000f\u0005ET\u0003\"\u0003\u0002t\u0005a\u0011\u000e^3sCR|'O\u0012:p[R!\u0011qLA;\u0011\u001d\ti'a\u001cA\u0002=Cs!FA=\u0003\u007f\n\u0019\tE\u0002\u001a\u0003wJ1!! \u0007\u0005U!W\r\u001d:fG\u0006$X\rZ%oQ\u0016\u0014\u0018\u000e^1oG\u0016\f#!!!\u0002sQ\u0013X-Z*fi\u0002J7\u000f\t8pi\u0002\"Wm]5h]\u0016$\u0007\u0005^8!K:\f'\r\\3![\u0016\fg.\u001b8hMVd\u0007e];cG2\f7o]5oO:\n#!!\"\u0002\rIr\u0013'\r\u00181\u0011\u0019\t7\u0002\"\u0001\u0002\nR\t\u0011\u0002\u0003\u0004\u007f\u0017\u0011\u0005\u0011QR\u000b\u0005\u0003\u001f\u000b)\n\u0006\u0003\u0002\u0012\u0006]\u0005\u0003\u0002\u0006\u0016\u0003'\u00032\u0001IAK\t\u0019\u0011\u00131\u0012b\u0001G!9Q+a#A\u0004\u0005e\u0005\u0003\u0002-\\\u0003'C\u0011\"!(\f\u0003\u0003%I!a(\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0003C\u00032A^AR\u0013\r\t)k\u001e\u0002\u0007\u001f\nTWm\u0019;")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/TreeSet.class */
public class TreeSet<A> implements SortedSet<A>, Serializable {
    private final Option<A> from;
    private final boolean notProjection;
    private final Ordering<A> ordering;
    private final ObjectRef<RedBlackTree.Tree<A, Null$>> treeRef;
    private final Option<A> until;

    public TreeSet(Ordering<A> ordering) {
        this(new ObjectRef(null), None$.MODULE$, None$.MODULE$, ordering);
    }

    private TreeSet(ObjectRef<RedBlackTree.Tree<A, Null$>> objectRef, Option<A> option, Option<A> option2, Ordering<A> ordering) {
        this.treeRef = objectRef;
        this.from = option;
        this.until = option2;
        this.ordering = ordering;
        Function1.Cclass.$init$(this);
        TraversableOnce.Cclass.$init$(this);
        Parallelizable.Cclass.$init$(this);
        TraversableLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        Traversable.Cclass.$init$(this);
        GenIterable.Cclass.$init$(this);
        IterableLike.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        GenSetLike.Cclass.$init$(this);
        GenericSetTemplate.Cclass.$init$(this);
        GenSet.Cclass.$init$(this);
        Subtractable.Cclass.$init$(this);
        SetLike.Cclass.$init$(this);
        Set.Cclass.$init$(this);
        Sorted.Cclass.$init$(this);
        SortedSetLike.Cclass.$init$(this);
        SortedSet.Cclass.$init$(this);
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        Shrinkable.Cclass.$init$(this);
        Cloneable.Cclass.$init$(this);
        SetLike.Cclass.$init$(this);
        Set.Cclass.$init$(this);
        SortedSet.Cclass.$init$(this);
        Objects.requireNonNull(ordering, "ordering must not be null");
        this.notProjection = !option.isDefined() && !option2.isDefined();
    }

    private Iterator<A> iteratorFrom(Option<A> option) {
        Iterator<A> keysIterator = RedBlackTree$.MODULE$.keysIterator(this.treeRef.elem, pickBound(new TreeSet$$anonfun$3(this), this.from, option), ordering());
        Option<A> option2 = this.until;
        if (!None$.MODULE$.equals(option2)) {
            if (!(option2 instanceof Some)) {
                throw new MatchError(option2);
            }
            keysIterator = keysIterator.takeWhile(new TreeSet$$anonfun$iteratorFrom$1(this, (Some) option2));
        }
        return keysIterator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean leftAcceptable$1(Object obj) {
        boolean z;
        Option<A> option = this.from;
        if (option instanceof Some) {
            z = ordering().gteq(obj, (A) ((Some) option).m362x());
        } else {
            z = true;
        }
        return z;
    }

    public static <A> CanBuildFrom<TreeSet<?>, A, TreeSet<A>> newCanBuildFrom(Ordering<A> ordering) {
        return (CanBuildFrom<TreeSet<?>, A, TreeSet<A>>) TreeSet$.MODULE$.newCanBuildFrom(ordering);
    }

    private boolean notProjection() {
        return this.notProjection;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0059, code lost:
        if (scala.None$.MODULE$.equals(r0.mo269_1()) != false) goto L10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private scala.Option<A> pickBound(scala.Function2<A, A, A> r7, scala.Option<A> r8, scala.Option<A> r9) {
        /*
            r6 = this;
            scala.Tuple2 r0 = new scala.Tuple2
            r1 = r0
            r2 = r9
            r3 = r8
            r1.<init>(r2, r3)
            r10 = r0
            r0 = r10
            java.lang.Object r0 = r0.mo269_1()
            boolean r0 = r0 instanceof scala.Some
            if (r0 == 0) goto L4e
            r0 = r10
            java.lang.Object r0 = r0.mo269_1()
            scala.Some r0 = (scala.Some) r0
            r11 = r0
            r0 = r10
            java.lang.Object r0 = r0.mo268_2()
            boolean r0 = r0 instanceof scala.Some
            if (r0 == 0) goto L4e
            r0 = r10
            java.lang.Object r0 = r0.mo268_2()
            scala.Some r0 = (scala.Some) r0
            r8 = r0
            scala.Some r0 = new scala.Some
            r1 = r0
            r2 = r7
            r3 = r11
            java.lang.Object r3 = r3.m362x()
            r4 = r8
            java.lang.Object r4 = r4.m362x()
            java.lang.Object r2 = r2.apply(r3, r4)
            r1.<init>(r2)
            r9 = r0
            goto L5f
        L4e:
            scala.None$ r0 = scala.None$.MODULE$
            r1 = r10
            java.lang.Object r1 = r1.mo269_1()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5f
            goto L61
        L5f:
            r0 = r9
            r8 = r0
        L61:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.TreeSet.pickBound(scala.Function2, scala.Option, scala.Option):scala.Option");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean rightAcceptable$1(Object obj) {
        boolean z;
        Option<A> option = this.until;
        if (option instanceof Some) {
            z = ordering().mo36lt(obj, (A) ((Some) option).m362x());
        } else {
            z = true;
        }
        return z;
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

    @Override // scala.collection.mutable.SetLike, scala.collection.script.Scriptable
    public void $less$less(Message<A> message) {
        SetLike.Cclass.$less$less(this, message);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    public Set $minus(Object obj) {
        return SetLike.Cclass.$minus(this, obj);
    }

    @Override // scala.collection.generic.Subtractable
    public Set $minus(Object obj, Object obj2, Seq seq) {
        return SetLike.Cclass.$minus(this, obj, obj2, seq);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<A> $minus$eq(A a, A a2, Seq<A> seq) {
        return Shrinkable.Cclass.$minus$eq(this, a, a2, seq);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, scala.collection.immutable.RedBlackTree$Tree] */
    @Override // scala.collection.mutable.SetLike, scala.collection.generic.Shrinkable
    public TreeSet<A> $minus$eq(A a) {
        this.treeRef.elem = RedBlackTree$.MODULE$.delete(this.treeRef.elem, a, ordering());
        return this;
    }

    @Override // scala.collection.generic.Subtractable
    public Set $minus$minus(GenTraversableOnce genTraversableOnce) {
        return SetLike.Cclass.$minus$minus(this, genTraversableOnce);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<A> $minus$minus$eq(TraversableOnce<A> traversableOnce) {
        return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public Set $plus(Object obj) {
        return SetLike.Cclass.$plus(this, obj);
    }

    @Override // scala.collection.SetLike
    public Set $plus(Object obj, Object obj2, Seq seq) {
        return SetLike.Cclass.$plus(this, obj, obj2, seq);
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
        Growable<A> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((TreeSet<A>) a).$plus$eq(a2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, scala.collection.immutable.RedBlackTree$Tree] */
    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable
    public TreeSet<A> $plus$eq(A a) {
        this.treeRef.elem = RedBlackTree$.MODULE$.update(this.treeRef.elem, a, null, false, ordering());
        return this;
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    @Override // scala.collection.SetLike
    public Set $plus$plus(GenTraversableOnce genTraversableOnce) {
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

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.SetLike
    public boolean add(A a) {
        return SetLike.Cclass.add(this, a);
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

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        SetLike.Cclass.clear(this);
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Cloneable
    public TreeSet<A> clone() {
        return new TreeSet<>(new ObjectRef(this.treeRef.elem), this.from, this.until, ordering());
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
        return TraversableOnce.Cclass.collectFirst(this, partialFunction);
    }

    @Override // scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
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
        return (notProjection() || (leftAcceptable$1(a) && rightAcceptable$1(a))) && RedBlackTree$.MODULE$.contains(this.treeRef.elem, a, ordering());
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
    public Object drop(int i) {
        return IterableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.IterableLike
    public Object dropRight(int i) {
        return IterableLike.Cclass.dropRight(this, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object dropWhile(Function1 function1) {
        return TraversableLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.mutable.SortedSet, scala.collection.SortedSet
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
        return (A) SortedSetLike.Cclass.firstKey(this);
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
        IterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public scala.collection.SortedSet from(Object obj) {
        return SortedSetLike.Cclass.from(this, obj);
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
        return (A) IterableLike.Cclass.head(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<A> headOption() {
        return TraversableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object init() {
        return TraversableLike.Cclass.init(this);
    }

    @Override // scala.collection.TraversableLike
    public Iterator<TreeSet<A>> inits() {
        return TraversableLike.Cclass.inits(this);
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
        return iteratorFrom((Option) None$.MODULE$);
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
        return iteratorFrom((Option) new Some(a));
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public A last() {
        return (A) TraversableLike.Cclass.last(this);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public A lastKey() {
        return (A) SortedSetLike.Cclass.lastKey(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<A> lastOption() {
        return TraversableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public <B, That> That map(Function1<A, B> function1, CanBuildFrom<TreeSet<A>, B, That> canBuildFrom) {
        return (That) SetLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<A, NewTo> mapResult(Function1<TreeSet<A>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
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

    @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSet<A>> parCombiner() {
        return SetLike.Cclass.parCombiner(this);
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
    public scala.collection.SortedSet range(Object obj, Object obj2) {
        return SortedSetLike.Cclass.range(this, obj, obj2);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public TreeSet<A> rangeImpl(Option<A> option, Option<A> option2) {
        return new TreeSet<>(this.treeRef, pickBound(new TreeSet$$anonfun$1(this), option, this.from), pickBound(new TreeSet$$anonfun$2(this), option2, this.until), ordering());
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

    @Override // scala.collection.mutable.SetLike
    public boolean remove(A a) {
        return SetLike.Cclass.remove(this, a);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public Object repr() {
        return TraversableLike.Cclass.repr(this);
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder
    public Set result() {
        return SetLike.Cclass.result(this);
    }

    @Override // scala.collection.mutable.SetLike
    public void retain(Function1<A, Object> function1) {
        SetLike.Cclass.retain(this, function1);
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

    @Override // scala.collection.mutable.Cloneable
    public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
        return super.clone();
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

    @Override // scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Set<A> seq() {
        return Set.Cclass.seq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return RedBlackTree$.MODULE$.countInRange(this.treeRef.elem, this.from, this.until, ordering());
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        Builder.Cclass.sizeHint(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHint(this, traversableLike);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
        Builder.Cclass.sizeHint(this, traversableLike, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHintBounded(this, i, traversableLike);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object slice(int i, int i2) {
        return IterableLike.Cclass.slice(this, i, i2);
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
        return TraversableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<TreeSet<A>, TreeSet<A>> splitAt(int i) {
        return TraversableLike.Cclass.splitAt(this, i);
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
    public Object tail() {
        return TraversableLike.Cclass.tail(this);
    }

    @Override // scala.collection.TraversableLike
    public Iterator<TreeSet<A>> tails() {
        return TraversableLike.Cclass.tails(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object take(int i) {
        return IterableLike.Cclass.take(this, i);
    }

    @Override // scala.collection.IterableLike
    public Object takeRight(int i) {
        return IterableLike.Cclass.takeRight(this, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object takeWhile(Function1 function1) {
        return IterableLike.Cclass.takeWhile(this, function1);
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
    public Sorted mo124to(Object obj) {
        return Sorted.Cclass.m163to(this, obj);
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

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> scala.collection.immutable.Set<B> toSet() {
        return TraversableOnce.Cclass.toSet(this);
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
    public scala.collection.SortedSet until(Object obj) {
        return SortedSetLike.Cclass.until(this, obj);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<A, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<A, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.mutable.SetLike
    public void update(A a, boolean z) {
        SetLike.Cclass.update(this, a, z);
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
