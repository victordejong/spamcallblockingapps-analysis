package scala.collection.parallel.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.CustomParallelizable;
import scala.collection.DebugUtils$;
import scala.collection.GenIterable;
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.GenericParTemplate;
import scala.collection.generic.GenericSetTemplate;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Shrinkable$$anonfun$$minus$minus$eq$1;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.FlatHashTable;
import scala.collection.mutable.HashSet;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParIterableLike$ScanLeaf$;
import scala.collection.parallel.ParIterableLike$ScanNode$;
import scala.collection.parallel.ParSet;
import scala.collection.parallel.ParSetLike;
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.immutable.ParMap;
import scala.collection.parallel.mutable.ParFlatHashTable;
import scala.collection.parallel.mutable.ParIterable;
import scala.collection.parallel.mutable.ParSet;
import scala.collection.parallel.mutable.ParSetLike;
import scala.collection.parallel.package$;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005ug\u0001B\u0001\u0003\u0001-\u0011!\u0002U1s\u0011\u0006\u001c\bnU3u\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u001dA\u0011AC2pY2,7\r^5p]*\t\u0011\"A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005192c\u0002\u0001\u000e#\u0001:\u0003g\r\t\u0003\u001d=i\u0011\u0001C\u0005\u0003!!\u0011a!\u00118z%\u00164\u0007c\u0001\n\u0014+5\t!!\u0003\u0002\u0015\u0005\t1\u0001+\u0019:TKR\u0004\"AF\f\r\u0001\u0011)\u0001\u0004\u0001b\u00013\t\tA+\u0005\u0002\u001b;A\u0011abG\u0005\u00039!\u0011qAT8uQ&tw\r\u0005\u0002\u000f=%\u0011q\u0004\u0003\u0002\u0004\u0003:L\b\u0003B\u0011%+\u0019j\u0011A\t\u0006\u0003G\u0019\tqaZ3oKJL7-\u0003\u0002&E\t\u0011r)\u001a8fe&\u001c\u0007+\u0019:UK6\u0004H.\u0019;f!\t\u0011\u0002\u0001E\u0003\u0013QUQ3&\u0003\u0002*\u0005\tQ\u0001+\u0019:TKRd\u0015n[3\u0011\u0007I\u0001Q\u0003E\u0002-]Ui\u0011!\f\u0006\u0003\u0007\u0019I!aL\u0017\u0003\u000f!\u000b7\u000f[*fiB\u0019!#M\u000b\n\u0005I\u0012!\u0001\u0005)be\u001ac\u0017\r\u001e%bg\"$\u0016M\u00197f!\tqA'\u0003\u00026\u0011\ta1+\u001a:jC2L'0\u00192mK\"Aq\u0007\u0001B\u0001B\u0003%\u0001(\u0001\u0005d_:$XM\u001c;t!\rID(\u0006\b\u0003YiJ!aO\u0017\u0002\u001b\u0019c\u0017\r\u001e%bg\"$\u0016M\u00197f\u0013\tidH\u0001\u0005D_:$XM\u001c;t\u0015\tYT\u0006\u0003\u0004A\u0001\u0011\u0005a!Q\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005)\u0012\u0005\"B\u001c@\u0001\u0004A\u0004\"\u0002!\u0001\t\u0003!E#\u0001\u0016\t\u000b\u0019\u0003A\u0011I$\u0002\u0013\r|W\u000e]1oS>tW#\u0001%\u000f\u0005IIu!\u0002&\u0003\u0011\u0003Y\u0015A\u0003)be\"\u000b7\u000f[*fiB\u0011!\u0003\u0014\u0004\u0006\u0003\tA\t!T\n\u0004\u0019:\u001b\u0004cA\u0011PM%\u0011\u0001K\t\u0002\u000e!\u0006\u00148+\u001a;GC\u000e$xN]=\t\u000b\u0001cE\u0011\u0001*\u0015\u0003-CQ\u0001\u0016'\u0005\u0004U\u000bAbY1o\u0005VLG\u000e\u001a$s_6,\"AV1\u0016\u0003]\u0003R!\t-[A\nL!!\u0017\u0012\u0003\u001d\r\u000bgnQ8nE&tWM\u0012:p[B\u00111\fX\u0007\u0002\u0019&\u0011QL\u0018\u0002\u0005\u0007>dG.\u0003\u0002`E\t\u0001r)\u001a8fe&\u001c7i\\7qC:LwN\u001c\t\u0003-\u0005$Q\u0001G*C\u0002e\u00012A\u0005\u0001a\u0011\u0015!G\n\"\u0011f\u0003)qWm\u001e\"vS2$WM]\u000b\u0003M2,\u0012a\u001a\t\u0005Q&\\W.D\u0001\u0005\u0013\tQGA\u0001\u0005D_6\u0014\u0017N\\3s!\t1B\u000eB\u0003\u0019G\n\u0007\u0011\u0004E\u0002\u0013\u0001-DQa\u001c'\u0005BA\f1B\\3x\u0007>l'-\u001b8feV\u0011\u0011\u000f^\u000b\u0002eB!\u0001.[:v!\t1B\u000fB\u0003\u0019]\n\u0007\u0011\u0004E\u0002\u0013\u0001MDqa\u001e'\u0002\u0002\u0013%\u00010A\u0006sK\u0006$'+Z:pYZ,G#A=\u0011\u0005i|X\"A>\u000b\u0005ql\u0018\u0001\u00027b]\u001eT\u0011A`\u0001\u0005U\u00064\u0018-C\u0002\u0002\u0002m\u0014aa\u00142kK\u000e$\bbBA\u0003\u0001\u0011\u0005\u0013qA\u0001\u0006K6\u0004H/_\u000b\u0002U!9\u00111\u0002\u0001\u0005B\u00055\u0011\u0001C5uKJ\fGo\u001c:\u0016\u0005\u0005=\u0001\u0003BA\t\u0003'i\u0011\u0001\u0001\u0004\u0007\u0003+\u0001\u0001!a\u0006\u0003%A\u000b'\u000fS1tQN+G/\u0013;fe\u0006$xN]\n\u0005\u0003'\tI\u0002\u0005\u0003\u0002\u0012\u0005m\u0011bAA\u000fc\tA\u0002+\u0019:GY\u0006$\b*Y:i)\u0006\u0014G.Z%uKJ\fGo\u001c:\t\u0017\u0005\u0005\u00121\u0003B\u0001B\u0003%\u00111E\u0001\u0006gR\f'\u000f\u001e\t\u0004\u001d\u0005\u0015\u0012bAA\u0014\u0011\t\u0019\u0011J\u001c;\t\u001b\u0005-\u00121\u0003B\u0001B\u0003%\u00111EA\u0017\u00035IG/\u001a:bi\u0016\u001cXK\u001c;jY&!\u0011qFA\u000e\u0003\u0015)h\u000e^5m\u00115\t\u0019$a\u0005\u0003\u0002\u0003\u0006I!a\t\u00026\u0005iAo\u001c;bY\u0016cW-\\3oiNLA!a\u000e\u0002\u001c\u0005IAo\u001c;bYNL'0\u001a\u0005\b\u0001\u0006MA\u0011AA\u001e)!\ty!!\u0010\u0002@\u0005\u0005\u0003\u0002CA\u0011\u0003s\u0001\r!a\t\t\u0011\u0005-\u0012\u0011\ba\u0001\u0003GA\u0001\"a\r\u0002:\u0001\u0007\u00111\u0005\u0005\t\u0003\u000b\n\u0019\u0002\"\u0001\u0002H\u0005Ya.Z<Ji\u0016\u0014\u0018\r^8s)!\ty!!\u0013\u0002L\u00055\u0003\u0002CA\u0011\u0003\u0007\u0002\r!a\t\t\u0011\u0005=\u00121\ta\u0001\u0003GA\u0001\"a\u0014\u0002D\u0001\u0007\u00111E\u0001\u0006i>$\u0018\r\u001c\u0005\b\u0003'\u0002A\u0011IA+\u0003\u0011\u0019\u0018N_3\u0016\u0005\u0005\r\u0002bBA-\u0001\u0011\u0005\u00111L\u0001\u0006G2,\u0017M\u001d\u000b\u0003\u0003;\u00022ADA0\u0013\r\t\t\u0007\u0003\u0002\u0005+:LG\u000fC\u0004\u0002f\u0001!\t%a\u001a\u0002\u0007M,\u0017/F\u0001,\u0011\u001d\tY\u0007\u0001C\u0001\u0003[\n\u0001\u0002\n9mkN$S-\u001d\u000b\u0005\u0003#\ty\u0007C\u0004\u0002r\u0005%\u0004\u0019A\u000b\u0002\t\u0015dW-\u001c\u0005\b\u0003k\u0002A\u0011AA<\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0003\u0002\u0012\u0005e\u0004bBA9\u0003g\u0002\r!\u0006\u0005\b\u0003{\u0002A\u0011IA@\u00031\u0019HO]5oOB\u0013XMZ5y+\t\t\t\tE\u0002{\u0003\u0007K1!!\"|\u0005\u0019\u0019FO]5oO\"9\u0011\u0011\u0012\u0001\u0005\u0002\u0005-\u0015\u0001C2p]R\f\u0017N\\:\u0015\t\u00055\u00151\u0013\t\u0004\u001d\u0005=\u0015bAAI\u0011\t9!i\\8mK\u0006t\u0007bBA9\u0003\u000f\u0003\r!\u0006\u0005\b\u0003/\u0003A\u0011AA\u0007\u0003!\u0019\b\u000f\\5ui\u0016\u0014\bbBAN\u0001\u0011%\u0011QT\u0001\foJLG/Z(cU\u0016\u001cG\u000f\u0006\u0003\u0002^\u0005}\u0005\u0002CAQ\u00033\u0003\r!a)\u0002\u0003M\u0004B!!*\u0002,6\u0011\u0011q\u0015\u0006\u0004\u0003Sk\u0018AA5p\u0013\u0011\ti+a*\u0003%=\u0013'.Z2u\u001fV$\b/\u001e;TiJ,\u0017-\u001c\u0005\b\u0003c\u0003A\u0011BAZ\u0003)\u0011X-\u00193PE*,7\r\u001e\u000b\u0005\u0003;\n)\f\u0003\u0005\u00028\u0006=\u0006\u0019AA]\u0003\tIg\u000e\u0005\u0003\u0002&\u0006m\u0016\u0002BA_\u0003O\u0013\u0011c\u00142kK\u000e$\u0018J\u001c9viN#(/Z1n\u0011\u001d\t\t\r\u0001C!\u0003\u0007\f\u0001\u0003Z3ck\u001eLeNZ8s[\u0006$\u0018n\u001c8\u0016\u0005\u0005\u0015\u0007\u0003BAd\u0003\u001bt1ADAe\u0013\r\tY\rC\u0001\u0007!J,G-\u001a4\n\t\u0005\u0015\u0015q\u001a\u0006\u0004\u0003\u0017D\u0001f\u0002\u0001\u0002T\u0006e\u00171\u001c\t\u0004\u001d\u0005U\u0017bAAl\u0011\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\u0002\u0003\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSet.class */
public class ParHashSet<T> implements ParSet<T>, ParFlatHashTable<T>, Serializable {
    public static final long serialVersionUID = 1;
    private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
    private volatile ParIterableLike$ScanNode$ ScanNode$module;
    private transient int _loadFactor;
    private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;
    private transient int seedvalue;
    private transient int[] sizemap;
    private transient Object[] table;
    private transient int tableSize;
    private transient int threshold;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSet$ParHashSetIterator.class */
    public class ParHashSetIterator extends ParFlatHashTable<T>.ParFlatHashTableIterator {
        public ParHashSetIterator(ParHashSet<T> parHashSet, int i, int i2, int i3) {
            super(parHashSet, i, i2, i3);
        }

        @Override // scala.collection.parallel.mutable.ParFlatHashTable.ParFlatHashTableIterator
        public ParHashSet<T>.ParHashSetIterator newIterator(int i, int i2, int i3) {
            return new ParHashSetIterator(m81x8c818536(), i, i2, i3);
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashSet$ParHashSetIterator$$$outer */
        public /* synthetic */ ParHashSet m81x8c818536() {
            return (ParHashSet) this.$outer;
        }
    }

    public ParHashSet() {
        this(null);
    }

    public ParHashSet(FlatHashTable.Contents<T> contents) {
        Parallelizable.Cclass.$init$(this);
        Function1.Cclass.$init$(this);
        GenSetLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        GenIterable.Cclass.$init$(this);
        GenericSetTemplate.Cclass.$init$(this);
        GenSet.Cclass.$init$(this);
        GenericParTemplate.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(package$.MODULE$.defaultTaskSupport());
        ParIterable.Cclass.$init$(this);
        ParIterable.Cclass.$init$(this);
        ParSetLike.Cclass.$init$(this);
        ParSet.Cclass.$init$(this);
        Growable.Cclass.$init$(this);
        Shrinkable.Cclass.$init$(this);
        Cloneable.Cclass.$init$(this);
        ParSetLike.Cclass.$init$(this);
        ParSet.Cclass.$init$(this);
        FlatHashTable.HashUtils.Cclass.$init$(this);
        FlatHashTable.Cclass.$init$(this);
        ParFlatHashTable.Cclass.$init$(this);
        initWithContents(contents);
    }

    private ParIterableLike$ScanLeaf$ ScanLeaf$lzycompute() {
        synchronized (this) {
            if (this.ScanLeaf$module == null) {
                this.ScanLeaf$module = new ParIterableLike$ScanLeaf$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ScanLeaf$module;
    }

    private ParIterableLike$ScanNode$ ScanNode$lzycompute() {
        synchronized (this) {
            if (this.ScanNode$module == null) {
                this.ScanNode$module = new ParIterableLike$ScanNode$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ScanNode$module;
    }

    public static <T> CanCombineFrom<ParHashSet<?>, T, ParHashSet<T>> canBuildFrom() {
        return ParHashSet$.MODULE$.canBuildFrom();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        init(objectInputStream, new ParHashSet$$anonfun$readObject$1(this));
    }

    public static <A> Object setCanBuildFrom() {
        return ParHashSet$.MODULE$.setCanBuildFrom();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        serializeTo(objectOutputStream);
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

    @Override // scala.collection.GenTraversableOnce
    public <S> S $colon$bslash(S s, Function2<T, S, S> function2) {
        Object foldRight;
        foldRight = foldRight(s, function2);
        return (S) foldRight;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $div$colon(S s, Function2<S, T, S> function2) {
        Object foldLeft;
        foldLeft = foldLeft(s, function2);
        return (S) foldLeft;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    public ParSet $minus(Object obj) {
        return ParSetLike.Cclass.$minus(this, obj);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<T> $minus$eq(T t, T t2, Seq<T> seq) {
        return Shrinkable.Cclass.$minus$eq(this, t, t2, seq);
    }

    @Override // scala.collection.parallel.mutable.ParSetLike, scala.collection.generic.Shrinkable
    public ParHashSet<T> $minus$eq(T t) {
        removeElem(t);
        return this;
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<T> $minus$minus$eq(TraversableOnce<T> traversableOnce) {
        return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public ParSet $plus(Object obj) {
        return ParSetLike.Cclass.$plus(this, obj);
    }

    @Override // scala.collection.generic.Growable
    public Growable<T> $plus$eq(T t, T t2, Seq<T> seq) {
        Growable<T> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((ParHashSet<T>) t).$plus$eq(t2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.parallel.mutable.ParSetLike, scala.collection.generic.Growable
    public ParHashSet<T> $plus$eq(T t) {
        addElem(t);
        return this;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParHashSet<T>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    @Override // scala.collection.generic.Growable
    public Growable<T> $plus$plus$eq(TraversableOnce<T> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParIterableLike$ScanLeaf$ ScanLeaf() {
        return this.ScanLeaf$module == null ? ScanLeaf$lzycompute() : this.ScanLeaf$module;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParIterableLike$ScanNode$ ScanNode() {
        return this.ScanNode$module == null ? ScanNode$lzycompute() : this.ScanNode$module;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int _loadFactor() {
        return this._loadFactor;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void _loadFactor_$eq(int i) {
        this._loadFactor = i;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean addElem(T t) {
        return FlatHashTable.Cclass.addElem(this, t);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean addEntry(Object obj) {
        return FlatHashTable.Cclass.addEntry(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S aggregate(Function0<S> function0, Function2<S, T, S> function2, Function2<S, S, S> function22) {
        return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.parallel.mutable.ParFlatHashTable, scala.collection.mutable.FlatHashTable
    public boolean alwaysInitSizeMap() {
        return ParFlatHashTable.Cclass.alwaysInitSizeMap(this);
    }

    @Override // scala.Function1
    public <A> Function1<T, A> andThen(Function1<Object, A> function1) {
        return Function1.Cclass.andThen(this, function1);
    }

    @Override // scala.collection.GenSetLike, scala.Function1
    public boolean apply(T t) {
        return GenSetLike.Cclass.apply(this, t);
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((ParHashSet<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((ParHashSet<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((ParHashSet<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((ParHashSet<T>) BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((ParHashSet<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((ParHashSet<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((ParHashSet<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((ParHashSet<T>) BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((ParHashSet<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((ParHashSet<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((ParHashSet<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((ParHashSet<T>) BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((ParHashSet<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((ParHashSet<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((ParHashSet<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((ParHashSet<T>) BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply((ParHashSet<T>) BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply((ParHashSet<T>) BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply((ParHashSet<T>) BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply((ParHashSet<T>) BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((ParHashSet<T>) BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((ParHashSet<T>) BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((ParHashSet<T>) BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((ParHashSet<T>) BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object bf2seq(CanBuildFrom<ParHashSet<T>, S, That> canBuildFrom) {
        return ParIterableLike.Cclass.bf2seq(this, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Seq<String> brokenInvariants() {
        return ParIterableLike.Cclass.brokenInvariants(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <Elem, To> Object builder2ops(Builder<Elem, To> builder) {
        return ParIterableLike.Cclass.builder2ops(this, builder);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int calcSizeMapSize(int i) {
        return FlatHashTable.Cclass.calcSizeMapSize(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public boolean canEqual(Object obj) {
        return ParIterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int capacity(int i) {
        return FlatHashTable.Cclass.capacity(this, i);
    }

    @Override // scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        clearTable();
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void clearTable() {
        FlatHashTable.Cclass.clearTable(this);
    }

    @Override // scala.collection.mutable.Cloneable
    public Object clone() {
        return Cloneable.Cclass.clone(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That collect(PartialFunction<T, S> partialFunction, CanBuildFrom<ParHashSet<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object combinerFactory() {
        return ParIterableLike.Cclass.combinerFactory(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object combinerFactory(Function0<Combiner<S, That>> function0) {
        return ParIterableLike.Cclass.combinerFactory(this, function0);
    }

    @Override // scala.collection.parallel.mutable.ParSet, scala.collection.parallel.mutable.ParIterable, scala.collection.parallel.ParIterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public ParHashSet$ companion() {
        return ParHashSet$.MODULE$;
    }

    @Override // scala.Function1
    public <A> Function1<A, Object> compose(Function1<A, T> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public boolean contains(T t) {
        return containsElem(t);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean containsElem(T t) {
        return FlatHashTable.Cclass.containsElem(this, t);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> void copyToArray(Object obj) {
        ParIterableLike.Cclass.copyToArray(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> void copyToArray(Object obj, int i) {
        ParIterableLike.Cclass.copyToArray(this, obj, i);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> void copyToArray(Object obj, int i, int i2) {
        ParIterableLike.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.GenTraversableOnce
    public int count(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.count(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ArrayBuffer<String> debugBuffer() {
        return ParIterableLike.Cclass.debugBuffer(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public String debugInformation() {
        return DebugUtils$.MODULE$.buildString(new ParHashSet$$anonfun$debugInformation$1(this));
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void debugclear() {
        ParIterableLike.Cclass.debugclear(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ArrayBuffer<String> debuglog(String str) {
        return ParIterableLike.Cclass.debuglog(this, str);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <PI extends DelegatedSignalling> Object delegatedSignalling2ops(PI pi) {
        return ParIterableLike.Cclass.delegatedSignalling2ops(this, pi);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public scala.collection.parallel.ParSet diff(GenSet genSet) {
        return ParSetLike.Cclass.diff(this, genSet);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable drop(int i) {
        return ParIterableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable dropWhile(Function1 function1) {
        return ParIterableLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final Object elemToEntry(T t) {
        return FlatHashTable.HashUtils.Cclass.elemToEntry(this, t);
    }

    @Override // scala.collection.parallel.mutable.ParSet, scala.collection.parallel.ParSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public ParHashSet<T> empty() {
        return new ParHashSet<>();
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final T entryToElem(Object obj) {
        return (T) FlatHashTable.HashUtils.Cclass.entryToElem(this, obj);
    }

    @Override // scala.collection.GenSetLike, scala.Equals
    public boolean equals(Object obj) {
        return GenSetLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable filter(Function1 function1) {
        return ParIterableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable filterNot(Function1 function1) {
        return ParIterableLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<T> find(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public Option<T> findEntry(T t) {
        return FlatHashTable.Cclass.findEntry(this, t);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That flatMap(Function1<T, GenTraversableOnce<S>> function1, CanBuildFrom<ParHashSet<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.flatMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable flatten(Function1 function1) {
        return GenericTraversableTemplate.Cclass.flatten(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U fold(U u, Function2<U, U, U> function2) {
        return (U) ParIterableLike.Cclass.fold(this, u, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S foldLeft(S s, Function2<S, T, S> function2) {
        return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <S> S foldRight(S s, Function2<T, S, S> function2) {
        return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<T, U> function1) {
        ParIterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Combiner<B, ParHashSet<B>> genericBuilder() {
        return GenericParTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate
    public <B> Combiner<B, ParHashSet<B>> genericCombiner() {
        return GenericParTemplate.Cclass.genericCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <K> ParMap<K, ParHashSet<T>> groupBy(Function1<T, K> function1) {
        return ParIterableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return ParIterableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.GenSetLike
    public int hashCode() {
        return GenSetLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public FlatHashTable.Contents<T> hashTableContents() {
        return FlatHashTable.Cclass.hashTableContents(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public T head() {
        return (T) ParIterableLike.Cclass.head(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<T> headOption() {
        return ParIterableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final int improve(int i, int i2) {
        return FlatHashTable.HashUtils.Cclass.improve(this, i, i2);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public final int index(int i) {
        return FlatHashTable.Cclass.index(this, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable init() {
        return ParIterableLike.Cclass.init(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void init(ObjectInputStream objectInputStream, Function1<T, BoxedUnit> function1) {
        FlatHashTable.Cclass.init(this, objectInputStream, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void initTaskSupport() {
        ParIterableLike.Cclass.initTaskSupport(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void initWithContents(FlatHashTable.Contents<T> contents) {
        FlatHashTable.Cclass.initWithContents(this, contents);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int initialSize() {
        return FlatHashTable.Cclass.initialSize(this);
    }

    @Override // scala.collection.GenSetLike
    public Object intersect(GenSet genSet) {
        return GenSetLike.Cclass.intersect(this, genSet);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return ParIterableLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean isSizeMapDefined() {
        return FlatHashTable.Cclass.isSizeMapDefined(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public boolean isStrictSplitterCollection() {
        return ParIterableLike.Cclass.isStrictSplitterCollection(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public final boolean isTraversableAgain() {
        return ParIterableLike.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public ParHashSet<T>.ParHashSetIterator iterator() {
        return splitter();
    }

    @Override // scala.collection.GenTraversableLike
    public T last() {
        return (T) ParIterableLike.Cclass.last(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<T> lastOption() {
        return ParIterableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
    public <S, That> That map(Function1<T, S> function1, CanBuildFrom<ParHashSet<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> T max(Ordering<U> ordering) {
        return (T) ParIterableLike.Cclass.max(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> T maxBy(Function1<T, S> function1, Ordering<S> ordering) {
        return (T) ParIterableLike.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> T min(Ordering<U> ordering) {
        return (T) ParIterableLike.Cclass.min(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> T minBy(Function1<T, S> function1, Ordering<S> ordering) {
        return (T) ParIterableLike.Cclass.minBy(this, function1, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public String mkString() {
        return ParIterableLike.Cclass.mkString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public String mkString(String str) {
        return ParIterableLike.Cclass.mkString(this, str);
    }

    @Override // scala.collection.GenTraversableOnce
    public String mkString(String str, String str2, String str3) {
        return ParIterableLike.Cclass.mkString(this, str, str2, str3);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<T, ParHashSet<T>> newBuilder() {
        return GenericParTemplate.Cclass.newBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
    public Combiner<T, ParHashSet<T>> newCombiner() {
        return GenericParTemplate.Cclass.newCombiner(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void nnSizeMapAdd(int i) {
        FlatHashTable.Cclass.nnSizeMapAdd(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void nnSizeMapRemove(int i) {
        FlatHashTable.Cclass.nnSizeMapRemove(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void nnSizeMapReset(int i) {
        FlatHashTable.Cclass.nnSizeMapReset(this, i);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return ParIterableLike.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.Parallelizable
    public scala.collection.parallel.ParIterable par() {
        return ParIterableLike.Cclass.par(this);
    }

    @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<T, ParHashSet<T>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParHashSet<T>, ParHashSet<T>> partition(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void printContents() {
        FlatHashTable.Cclass.printContents(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void printDebugBuffer() {
        ParIterableLike.Cclass.printDebugBuffer(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void printSizeMap() {
        FlatHashTable.Cclass.printSizeMap(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U product(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.product(this, numeric);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int randomSeed() {
        return FlatHashTable.Cclass.randomSeed(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U reduce(Function2<U, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U> U reduceLeft(Function2<U, T, U> function2) {
        return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceLeftOption(Function2<U, T, U> function2) {
        return ParIterableLike.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
        return ParIterableLike.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> U reduceRight(Function2<T, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceRightOption(Function2<T, U, U> function2) {
        return ParIterableLike.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public boolean removeElem(T t) {
        return FlatHashTable.Cclass.removeElem(this, t);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public scala.collection.parallel.ParIterable repr() {
        return ParIterableLike.Cclass.repr(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Combiner<S, That> reuse(Option<Combiner<S, That>> option, Combiner<S, That> combiner) {
        return ParIterableLike.Cclass.reuse(this, option, combiner);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U> boolean sameElements(GenIterable<U> genIterable) {
        return ParIterableLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.mutable.Cloneable
    public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
        return super.clone();
    }

    @Override // scala.collection.parallel.ParIterableLike
    public TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport() {
        return this.scala$collection$parallel$ParIterableLike$$_tasksupport;
    }

    @Override // scala.collection.parallel.ParIterableLike
    @TraitSetter
    public void scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(TaskSupport taskSupport) {
        this.scala$collection$parallel$ParIterableLike$$_tasksupport = taskSupport;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParHashSet<T>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public int scanBlockSize() {
        return ParIterableLike.Cclass.scanBlockSize(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanLeft(S s, Function2<S, T, S> function2, CanBuildFrom<ParHashSet<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanRight(S s, Function2<T, S, S> function2, CanBuildFrom<ParHashSet<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int seedvalue() {
        return this.seedvalue;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void seedvalue_$eq(int i) {
        this.seedvalue = i;
    }

    @Override // scala.collection.parallel.mutable.ParSet, scala.collection.parallel.mutable.ParIterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public HashSet<T> seq() {
        return new HashSet<>(hashTableContents());
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable sequentially(Function1 function1) {
        return ParIterableLike.Cclass.sequentially(this, function1);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void serializeTo(ObjectOutputStream objectOutputStream) {
        FlatHashTable.Cclass.serializeTo(this, objectOutputStream);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public int size() {
        return tableSize();
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final int sizeMapBucketBitSize() {
        return FlatHashTable.HashUtils.Cclass.sizeMapBucketBitSize(this);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final int sizeMapBucketSize() {
        return FlatHashTable.HashUtils.Cclass.sizeMapBucketSize(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void sizeMapDisable() {
        FlatHashTable.Cclass.sizeMapDisable(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void sizeMapInit(int i) {
        FlatHashTable.Cclass.sizeMapInit(this, i);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public void sizeMapInitAndRebuild() {
        FlatHashTable.Cclass.sizeMapInitAndRebuild(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int[] sizemap() {
        return this.sizemap;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void sizemap_$eq(int[] iArr) {
        this.sizemap = iArr;
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable slice(int i, int i2) {
        return ParIterableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParHashSet<T>, ParHashSet<T>> span(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParHashSet<T>, ParHashSet<T>> splitAt(int i) {
        return ParIterableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParHashSet<T>.ParHashSetIterator splitter() {
        return new ParHashSetIterator(this, 0, table().length, size());
    }

    @Override // scala.collection.parallel.ParIterable, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "ParHashSet";
    }

    @Override // scala.collection.GenSetLike, scala.collection.SortedSetLike
    public boolean subsetOf(GenSet<T> genSet) {
        return GenSetLike.Cclass.subsetOf(this, genSet);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U sum(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public Object[] table() {
        return this.table;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int tableSize() {
        return this.tableSize;
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int tableSizeSeed() {
        return FlatHashTable.Cclass.tableSizeSeed(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void tableSize_$eq(int i) {
        this.tableSize = i;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void table_$eq(Object[] objArr) {
        this.table = objArr;
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable tail() {
        return ParIterableLike.Cclass.tail(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable take(int i) {
        return ParIterableLike.Cclass.take(this, i);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable takeWhile(Function1 function1) {
        return ParIterableLike.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <R, Tp> Object task2ops(ParIterableLike<T, ParHashSet<T>, HashSet<T>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
        return ParIterableLike.Cclass.task2ops(this, strictSplitterCheckTask);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public TaskSupport tasksupport() {
        return ParIterableLike.Cclass.tasksupport(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void tasksupport_$eq(TaskSupport taskSupport) {
        scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(taskSupport);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public int threshold() {
        return this.threshold;
    }

    @Override // scala.collection.mutable.FlatHashTable
    @TraitSetter
    public void threshold_$eq(int i) {
        this.threshold = i;
    }

    @Override // scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, T, Col> canBuildFrom) {
        return (Col) ParIterableLike.Cclass.m112to(this, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Object toArray(ClassTag<U> classTag) {
        return ParIterableLike.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Buffer<U> toBuffer() {
        return ParIterableLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public IndexedSeq<T> toIndexedSeq() {
        return ParIterableLike.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.parallel.mutable.ParIterable, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public ParIterable<T> toIterable() {
        return ParIterable.Cclass.toIterable(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<T> toIterator() {
        return ParIterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public List<T> toList() {
        return ParIterableLike.Cclass.toList(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <K, V> ParMap<K, V> toMap(Predef$$less$colon$less<T, Tuple2<K, V>> predef$$less$colon$less) {
        return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
        return (That) ParIterableLike.Cclass.toParCollection(this, function0);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<T, Tuple2<K, V>> predef$$less$colon$less) {
        return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.mutable.ParIterable, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public ParSeq<T> toSeq() {
        return ParIterable.Cclass.toSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <U> scala.collection.parallel.immutable.ParSet<U> toSet() {
        return ParIterableLike.Cclass.toSet(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<T> toStream() {
        return ParIterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public String toString() {
        return ParIterableLike.Cclass.toString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public GenTraversable<T> toTraversable() {
        return ParIterableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public Vector<T> toVector() {
        return ParIterableLike.Cclass.toVector(this);
    }

    @Override // scala.collection.mutable.FlatHashTable
    public final int totalSizeMapBuckets() {
        return FlatHashTable.Cclass.totalSizeMapBuckets(this);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public scala.collection.parallel.ParSet union(GenSet genSet) {
        return ParSetLike.Cclass.union(this, genSet);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<T, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<T, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object view() {
        return ParIterableLike.Cclass.view(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable withFilter(Function1 function1) {
        return ParIterableLike.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <R> Object wrap(Function0<R> function0) {
        return ParIterableLike.Cclass.wrap(this, function0);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParHashSet<T>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParHashSet<T>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, That> That zipWithIndex(CanBuildFrom<ParHashSet<T>, Tuple2<U, Object>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
