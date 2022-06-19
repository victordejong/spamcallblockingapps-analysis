package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Serializable;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenMapLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.concurrent.BasicNode;
import scala.collection.concurrent.CNode;
import scala.collection.concurrent.INode;
import scala.collection.concurrent.LNode;
import scala.collection.concurrent.MainNode;
import scala.collection.concurrent.SNode;
import scala.collection.concurrent.TNode;
import scala.collection.concurrent.TrieMap;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.CanCombineFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericParMapCompanion;
import scala.collection.generic.GenericParMapTemplate;
import scala.collection.generic.GenericParTemplate;
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
import scala.collection.parallel.Combiner;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParIterableLike$ScanLeaf$;
import scala.collection.parallel.ParIterableLike$ScanNode$;
import scala.collection.parallel.ParMap;
import scala.collection.parallel.ParMapLike;
import scala.collection.parallel.ParSet;
import scala.collection.parallel.Splitter;
import scala.collection.parallel.Task;
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.mutable.ParIterable;
import scala.collection.parallel.mutable.ParMap;
import scala.collection.parallel.mutable.ParMapLike;
import scala.collection.parallel.mutable.ParTrieMapCombiner;
import scala.collection.parallel.package$;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\t=a\u0001B\u0001\u0003\u0005-\u0011!\u0002U1s)JLW-T1q\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u001dA\u0011AC2pY2,7\r^5p]*\t\u0011\"A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u000719\u0012eE\u0004\u0001\u001bE\u0019#\u0006N\u001c\u0011\u00059yQ\"\u0001\u0005\n\u0005AA!AB!osJ+g\r\u0005\u0003\u0013'U\u0001S\"\u0001\u0002\n\u0005Q\u0011!A\u0002)be6\u000b\u0007\u000f\u0005\u0002\u0017/1\u0001A!\u0002\r\u0001\u0005\u0004I\"!A&\u0012\u0005ii\u0002C\u0001\b\u001c\u0013\ta\u0002BA\u0004O_RD\u0017N\\4\u0011\u00059q\u0012BA\u0010\t\u0005\r\te.\u001f\t\u0003-\u0005\"QA\t\u0001C\u0002e\u0011\u0011A\u0016\t\u0006I\u001d*\u0002%K\u0007\u0002K)\u0011aEB\u0001\bO\u0016tWM]5d\u0013\tASEA\u000bHK:,'/[2QCJl\u0015\r\u001d+f[Bd\u0017\r^3\u0011\u0005I\u0001\u0001C\u0002\n,+\u0001jc&\u0003\u0002-\u0005\tQ\u0001+\u0019:NCBd\u0015n[3\u0011\tI\u0001Q\u0003\t\t\u0005_I*\u0002%D\u00011\u0015\t\td!\u0001\u0006d_:\u001cWO\u001d:f]RL!a\r\u0019\u0003\u000fQ\u0013\u0018.Z'baB!!#N\u000b!\u0013\t1$A\u0001\nQCJ$&/[3NCB\u001cu.\u001c2j]\u0016\u0014\bC\u0001\b9\u0013\tI\u0004B\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005<\u0001\t\u0015\r\u0011\"\u0003=\u0003\u0015\u0019GO]5f+\u0005q\u0003\u0002\u0003 \u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0018\u0002\r\r$(/[3!\u0011\u0019\u0001\u0005\u0001\"\u0001\u0007\u0003\u00061A(\u001b8jiz\"\"!\f\"\t\u000bmz\u0004\u0019\u0001\u0018\t\u000b\u0001\u0003A\u0011\u0001#\u0015\u00035BQA\u0012\u0001\u0005B\u001d\u000bA\"\\1q\u0007>l\u0007/\u00198j_:,\u0012\u0001\u0013\t\u0004I%K\u0013B\u0001&&\u0005Y9UM\\3sS\u000e\u0004\u0016M]'ba\u000e{W\u000e]1oS>t\u0007\"\u0002'\u0001\t\u0003j\u0015!B3naRLX#A\u0017\t\r=\u0003\u0001\u0015\"\u0015Q\u0003-qWm^\"p[\nLg.\u001a:\u0016\u0003E\u0003BAU*V[5\tA!\u0003\u0002U\t\tA1i\\7cS:,'\u000f\u0005\u0003\u000f-V\u0001\u0013BA,\t\u0005\u0019!V\u000f\u001d7fe!)\u0011\f\u0001C!y\u0005\u00191/Z9\t\u000bm\u0003A\u0011\u0001/\u0002\u0011M\u0004H.\u001b;uKJ,\u0012!\u0018\t\u0005%y+\u0002%\u0003\u0002`\u0005\t\u0011\u0002+\u0019:Ue&,W*\u00199Ta2LG\u000f^3s\u0011\u0015\t\u0007\u0001\"\u0011c\u0003\u0015\u0019G.Z1s)\u0005\u0019\u0007C\u0001\be\u0013\t)\u0007B\u0001\u0003V]&$\b\"B4\u0001\t\u0003!\u0015A\u0002:fgVdG\u000fC\u0003j\u0001\u0011\u0005!.A\u0002hKR$\"a\u001b8\u0011\u00079a\u0007%\u0003\u0002n\u0011\t1q\n\u001d;j_:DQa\u001c5A\u0002U\t1a[3z\u0011\u0015\t\b\u0001\"\u0001s\u0003\r\u0001X\u000f\u001e\u000b\u0004WN$\b\"B8q\u0001\u0004)\u0002\"B;q\u0001\u0004\u0001\u0013!\u0002<bYV,\u0007\"B<\u0001\t\u0003A\u0018AB;qI\u0006$X\rF\u0002dsjDQa\u001c<A\u0002UAQ!\u001e<A\u0002\u0001BQ\u0001 \u0001\u0005\u0002u\faA]3n_Z,GCA6\u007f\u0011\u0015y7\u00101\u0001\u0016\u0011\u001d\t\t\u0001\u0001C\u0001\u0003\u0007\t\u0001\u0002\n9mkN$S-\u001d\u000b\u0005\u0003\u000b\t9!D\u0001\u0001\u0011\u0019\tIa a\u0001+\u0006\u00111N\u001e\u0005\b\u0003\u001b\u0001A\u0011AA\b\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0003\u0002\u0006\u0005E\u0001BB8\u0002\f\u0001\u0007Q\u0003C\u0004\u0002\u0016\u0001!\t%a\u0006\u0002\tML'0Z\u000b\u0003\u00033\u00012ADA\u000e\u0013\r\ti\u0002\u0003\u0002\u0004\u0013:$\bbBA\u0011\u0001\u0011\u0005\u00131E\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0003K\u0001B!a\n\u000225\u0011\u0011\u0011\u0006\u0006\u0005\u0003W\ti#\u0001\u0003mC:<'BAA\u0018\u0003\u0011Q\u0017M^1\n\t\u0005M\u0012\u0011\u0006\u0002\u0007'R\u0014\u0018N\\4\u0007\r\u0005]\u0002\u0001AA\u001d\u0005\u0011\u0019\u0016N_3\u0014\u000b\u0005UR\"a\u000f\u0011\u000fI\u000bi$!\u0007\u0002B%\u0019\u0011q\b\u0003\u0003\tQ\u000b7o\u001b\t\u0005\u0003\u000b\t)\u0004C\u0006\u0002F\u0005U\"\u0011!Q\u0001\n\u0005e\u0011AB8gMN,G\u000fC\u0006\u0002J\u0005U\"\u0011!Q\u0001\n\u0005e\u0011a\u00025po6\fg.\u001f\u0005\f\u0003\u001b\n)D!A!\u0002\u0013\ty%A\u0003beJ\f\u0017\u0010E\u0003\u000f\u0003#\n)&C\u0002\u0002T!\u0011Q!\u0011:sCf\u00042aLA,\u0013\r\tI\u0006\r\u0002\n\u0005\u0006\u001c\u0018n\u0019(pI\u0016Dq\u0001QA\u001b\t\u0003\ti\u0006\u0006\u0005\u0002B\u0005}\u0013\u0011MA2\u0011!\t)%a\u0017A\u0002\u0005e\u0001\u0002CA%\u00037\u0002\r!!\u0007\t\u0011\u00055\u00131\fa\u0001\u0003\u001fB\u0011bZA\u001b\u0001\u0004%\t!a\u0006\t\u0015\u0005%\u0014Q\u0007a\u0001\n\u0003\tY'\u0001\u0006sKN,H\u000e^0%KF$2aYA7\u0011)\ty'a\u001a\u0002\u0002\u0003\u0007\u0011\u0011D\u0001\u0004q\u0012\n\u0004\"CA:\u0003k\u0001\u000b\u0015BA\r\u0003\u001d\u0011Xm];mi\u0002B\u0001\"a\u001e\u00026\u0011\u0005\u0011\u0011P\u0001\u0005Y\u0016\fg\rF\u0002d\u0003wB\u0001\"! \u0002v\u0001\u0007\u0011qP\u0001\u0005aJ,g\u000f\u0005\u0003\u000fY\u0006e\u0001\u0002CAB\u0003k!\t!!\"\u0002\u000bM\u0004H.\u001b;\u0016\u0005\u0005\u001d\u0005CBAE\u0003\u0017\u000b\t%D\u0001\u0007\u0013\r\tiI\u0002\u0002\u0004'\u0016\f\b\u0002CAI\u0003k!\t!a%\u0002%MDw.\u001e7e'Bd\u0017\u000e\u001e$veRDWM]\u000b\u0003\u0003+\u00032ADAL\u0013\r\tI\n\u0003\u0002\b\u0005>|G.Z1o\u0011!\ti*!\u000e\u0005B\u0005}\u0015!B7fe\u001e,GcA2\u0002\"\"A\u00111UAN\u0001\u0004\t\t%\u0001\u0003uQ\u0006$xaBAT\u0005!\u0005\u0011\u0011V\u0001\u000b!\u0006\u0014HK]5f\u001b\u0006\u0004\bc\u0001\n\u0002,\u001a1\u0011A\u0001E\u0001\u0003[\u001bR!a+\u00020^\u0002B\u0001JAYS%\u0019\u00111W\u0013\u0003\u001bA\u000b'/T1q\r\u0006\u001cGo\u001c:z\u0011\u001d\u0001\u00151\u0016C\u0001\u0003o#\"!!+\t\u000f1\u000bY\u000b\"\u0001\u0002<V1\u0011QXAb\u0003\u000f,\"!a0\u0011\rI\u0001\u0011\u0011YAc!\r1\u00121\u0019\u0003\u00071\u0005e&\u0019A\r\u0011\u0007Y\t9\r\u0002\u0004#\u0003s\u0013\r!\u0007\u0005\b\u001f\u0006-F\u0011AAf+\u0019\ti-!6\u0002ZV\u0011\u0011q\u001a\t\u0007%N\u000b\t.a7\u0011\r91\u00161[Al!\r1\u0012Q\u001b\u0003\u00071\u0005%'\u0019A\r\u0011\u0007Y\tI\u000e\u0002\u0004#\u0003\u0013\u0014\r!\u0007\t\u0007%\u0001\t\u0019.a6\t\u0011\u0005}\u00171\u0016C\u0002\u0003C\fAbY1o\u0005VLG\u000e\u001a$s_6,b!a9\u0002|\u0006}XCAAs!%!\u0013q]Av\u0003o\u0014\t!C\u0002\u0002j\u0016\u0012abQ1o\u0007>l'-\u001b8f\rJ|W\u000e\u0005\u0003\u0002n\u0006=XBAAV\u0013\u0011\t\t0a=\u0003\t\r{G\u000e\\\u0005\u0004\u0003k,#!D$f]6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0004\u000f-\u0006e\u0018Q \t\u0004-\u0005mHA\u0002\r\u0002^\n\u0007\u0011\u0004E\u0002\u0017\u0003\u007f$aAIAo\u0005\u0004I\u0002C\u0002\n\u0001\u0003s\fi\u0010\u0003\u0006\u0003\u0006\u0005-\u0016\u0011!C\u0005\u0005\u000f\t1B]3bIJ+7o\u001c7wKR\u0011!\u0011\u0002\t\u0005\u0003O\u0011Y!\u0003\u0003\u0003\u000e\u0005%\"AB(cU\u0016\u001cG\u000f")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParTrieMap.class */
public final class ParTrieMap<K, V> implements ParMap<K, V>, ParTrieMapCombiner<K, V>, Serializable {
    private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
    private volatile ParIterableLike$ScanNode$ ScanNode$module;
    private volatile transient TaskSupport _combinerTaskSupport;
    private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;
    private final TrieMap<K, V> scala$collection$parallel$mutable$ParTrieMap$$ctrie;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParTrieMap$Size.class */
    public class Size implements Task<Object, ParTrieMap<K, V>.Size> {
        public final /* synthetic */ ParTrieMap $outer;
        private final BasicNode[] array;
        private final int howmany;
        private final int offset;
        private int result = -1;
        private volatile Throwable throwable;

        public Size(ParTrieMap<K, V> parTrieMap, int i, int i2, BasicNode[] basicNodeArr) {
            this.offset = i;
            this.howmany = i2;
            this.array = basicNodeArr;
            Objects.requireNonNull(parTrieMap);
            this.$outer = parTrieMap;
            throwable_$eq(null);
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Object> option) {
            int i;
            BoxedUnit boxedUnit;
            int i2 = this.offset;
            int i3 = this.howmany;
            int i4 = 0;
            int i5 = i2;
            while (true) {
                int i6 = i5;
                if (i6 >= i3 + i2) {
                    result_$eq(i4);
                    return;
                }
                BasicNode basicNode = this.array[i6];
                if (basicNode instanceof SNode) {
                    i = i4 + 1;
                    boxedUnit = BoxedUnit.UNIT;
                } else if (!(basicNode instanceof INode)) {
                    throw new MatchError(basicNode);
                } else {
                    i = i4 + ((INode) basicNode).cachedSize(scala$collection$parallel$mutable$ParTrieMap$Size$$$outer().scala$collection$parallel$mutable$ParTrieMap$$ctrie());
                    boxedUnit = BoxedUnit.UNIT;
                }
                i4 = i;
                i5 = i6 + 1;
            }
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((Size) ((Size) obj));
        }

        public void merge(ParTrieMap<K, V>.Size size) {
            result_$eq(result() + size.result());
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
        @Override // scala.collection.parallel.Task
        public Object result() {
            return this.result;
        }

        public void result_$eq(int i) {
            this.result = i;
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void result_$eq(Object obj) {
            result_$eq(BoxesRunTime.unboxToInt(obj));
        }

        public /* synthetic */ ParTrieMap scala$collection$parallel$mutable$ParTrieMap$Size$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            boolean z = true;
            if (this.howmany <= 1) {
                z = false;
            }
            return z;
        }

        @Override // scala.collection.parallel.Task
        public void signalAbort() {
            Task.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.Task
        public Seq<ParTrieMap<K, V>.Size> split() {
            int i = this.howmany / 2;
            return (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Size[]{new Size(scala$collection$parallel$mutable$ParTrieMap$Size$$$outer(), this.offset, i, this.array), new Size(scala$collection$parallel$mutable$ParTrieMap$Size$$$outer(), this.offset + i, this.howmany - i, this.array)}));
        }

        @Override // scala.collection.parallel.Task
        public Throwable throwable() {
            return this.throwable;
        }

        @Override // scala.collection.parallel.Task
        @TraitSetter
        public void throwable_$eq(Throwable th) {
            this.throwable = th;
        }

        @Override // scala.collection.parallel.Task
        public void tryLeaf(Option<Object> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    public ParTrieMap() {
        this(new TrieMap());
    }

    public ParTrieMap(TrieMap<K, V> trieMap) {
        this.scala$collection$parallel$mutable$ParTrieMap$$ctrie = trieMap;
        Parallelizable.Cclass.$init$(this);
        GenMapLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        GenIterable.Cclass.$init$(this);
        GenericParTemplate.Cclass.$init$(this);
        GenericParMapTemplate.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(package$.MODULE$.defaultTaskSupport());
        ParIterable.Cclass.$init$(this);
        ParMapLike.Cclass.$init$(this);
        ParMap.Cclass.$init$(this);
        ParIterable.Cclass.$init$(this);
        Growable.Cclass.$init$(this);
        Shrinkable.Cclass.$init$(this);
        Cloneable.Cclass.$init$(this);
        ParMapLike.Cclass.$init$(this);
        ParMap.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        _combinerTaskSupport_$eq(package$.MODULE$.defaultTaskSupport());
        ParTrieMapCombiner.Cclass.$init$(this);
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

    public static <K, V> CanCombineFrom<ParTrieMap<?, ?>, Tuple2<K, V>, ParTrieMap<K, V>> canBuildFrom() {
        return ParTrieMap$.MODULE$.canBuildFrom();
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $colon$bslash(S s, Function2<Tuple2<K, V>, S, S> function2) {
        Object foldRight;
        foldRight = foldRight(s, function2);
        return (S) foldRight;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $div$colon(S s, Function2<S, Tuple2<K, V>, S> function2) {
        Object foldLeft;
        foldLeft = foldLeft(s, function2);
        return (S) foldLeft;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public ParMap $minus(Object obj) {
        return ParMapLike.Cclass.$minus(this, obj);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<K> $minus$eq(K k, K k2, Seq<K> seq) {
        return Shrinkable.Cclass.$minus$eq(this, k, k2, seq);
    }

    @Override // scala.collection.parallel.mutable.ParMapLike, scala.collection.generic.Shrinkable
    public ParTrieMap<K, V> $minus$eq(K k) {
        scala$collection$parallel$mutable$ParTrieMap$$ctrie().$minus$eq((TrieMap<K, V>) k);
        return this;
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<K> $minus$minus$eq(TraversableOnce<K> traversableOnce) {
        return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
    }

    @Override // scala.collection.parallel.ParMap, scala.collection.GenMapLike, scala.collection.MapLike
    public <U> ParMap<K, U> $plus(Tuple2<K, U> tuple2) {
        return ParMapLike.Cclass.$plus(this, tuple2);
    }

    @Override // scala.collection.generic.Growable
    public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
        Growable $plus$plus$eq;
        $plus$plus$eq = $plus$eq((ParTrieMap<K, V>) obj).$plus$eq(obj2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.parallel.mutable.ParMapLike
    public ParTrieMap<K, V> $plus$eq(Tuple2<K, V> tuple2) {
        scala$collection$parallel$mutable$ParTrieMap$$ctrie().$plus$eq((Tuple2) tuple2);
        return this;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParTrieMap<K, V>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    @Override // scala.collection.generic.Growable
    public Growable<Tuple2<K, V>> $plus$plus$eq(TraversableOnce<Tuple2<K, V>> traversableOnce) {
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

    @Override // scala.collection.parallel.Combiner
    public TaskSupport _combinerTaskSupport() {
        return this._combinerTaskSupport;
    }

    @Override // scala.collection.parallel.Combiner
    @TraitSetter
    public void _combinerTaskSupport_$eq(TaskSupport taskSupport) {
        this._combinerTaskSupport = taskSupport;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S aggregate(Function0<S> function0, Function2<S, Tuple2<K, V>, S> function2, Function2<S, S, S> function22) {
        return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public V apply(K k) {
        return (V) ParMapLike.Cclass.apply(this, k);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object bf2seq(CanBuildFrom<ParTrieMap<K, V>, S, That> canBuildFrom) {
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

    @Override // scala.collection.parallel.mutable.ParTrieMapCombiner, scala.collection.parallel.Combiner
    public boolean canBeShared() {
        return ParTrieMapCombiner.Cclass.canBeShared(this);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return ParIterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.parallel.mutable.ParMapLike, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        scala$collection$parallel$mutable$ParTrieMap$$ctrie().clear();
    }

    @Override // scala.collection.mutable.Cloneable
    public Object clone() {
        return Cloneable.Cclass.clone(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That collect(PartialFunction<Tuple2<K, V>, S> partialFunction, CanBuildFrom<ParTrieMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.parallel.mutable.ParTrieMapCombiner, scala.collection.parallel.Combiner
    public <N extends Tuple2<K, V>, NewTo> Combiner<N, NewTo> combine(Combiner<N, NewTo> combiner) {
        return ParTrieMapCombiner.Cclass.combine(this, combiner);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object combinerFactory() {
        return ParIterableLike.Cclass.combinerFactory(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object combinerFactory(Function0<Combiner<S, That>> function0) {
        return ParIterableLike.Cclass.combinerFactory(this, function0);
    }

    @Override // scala.collection.parallel.Combiner
    public TaskSupport combinerTaskSupport() {
        return Combiner.Cclass.combinerTaskSupport(this);
    }

    @Override // scala.collection.parallel.Combiner
    public void combinerTaskSupport_$eq(TaskSupport taskSupport) {
        _combinerTaskSupport_$eq(taskSupport);
    }

    @Override // scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<ParIterable> companion() {
        return ParIterable.Cclass.companion(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public boolean contains(K k) {
        return ParMapLike.Cclass.contains(this, k);
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
    public int count(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.count(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ArrayBuffer<String> debugBuffer() {
        return ParIterableLike.Cclass.debugBuffer(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public String debugInformation() {
        return ParIterableLike.Cclass.debugInformation(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void debugclear() {
        ParIterableLike.Cclass.debugclear(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ArrayBuffer<String> debuglog(String str) {
        return ParIterableLike.Cclass.debuglog(this, str);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    /* renamed from: default */
    public V mo6041default(K k) {
        return (V) ParMapLike.Cclass.m6252default(this, k);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <PI extends DelegatedSignalling> Object delegatedSignalling2ops(PI pi) {
        return ParIterableLike.Cclass.delegatedSignalling2ops(this, pi);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable drop(int i) {
        return ParIterableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable dropWhile(Function1 function1) {
        return ParIterableLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.parallel.mutable.ParMap, scala.collection.parallel.ParMap, scala.collection.parallel.ParMapLike
    public ParTrieMap<K, V> empty() {
        return ParTrieMap$.MODULE$.empty();
    }

    @Override // scala.collection.GenMapLike, scala.Equals
    public boolean equals(Object obj) {
        return GenMapLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable filter(Function1 function1) {
        return ParIterableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.parallel.ParMap<K, V> filterKeys(Function1<K, Object> function1) {
        return ParMapLike.Cclass.filterKeys(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable filterNot(Function1 function1) {
        return ParIterableLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Tuple2<K, V>> find(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That flatMap(Function1<Tuple2<K, V>, GenTraversableOnce<S>> function1, CanBuildFrom<ParTrieMap<K, V>, S, That> canBuildFrom) {
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
    public <S> S foldLeft(S s, Function2<S, Tuple2<K, V>, S> function2) {
        return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <S> S foldRight(S s, Function2<Tuple2<K, V>, S, S> function2) {
        return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Tuple2<K, V>, U> function1) {
        ParIterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Combiner<B, ParIterable<B>> genericBuilder() {
        return GenericParTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate
    public <B> Combiner<B, ParIterable<B>> genericCombiner() {
        return GenericParTemplate.Cclass.genericCombiner(this);
    }

    @Override // scala.collection.generic.GenericParMapTemplate
    public <P, Q> Combiner<Tuple2<P, Q>, ParTrieMap<P, Q>> genericMapCombiner() {
        return GenericParMapTemplate.Cclass.genericMapCombiner(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<V> get(K k) {
        return scala$collection$parallel$mutable$ParTrieMap$$ctrie().get(k);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <U> U getOrElse(K k, Function0<U> function0) {
        return (U) ParMapLike.Cclass.getOrElse(this, k, function0);
    }

    @Override // scala.collection.GenTraversableLike
    public <K> scala.collection.parallel.immutable.ParMap<K, ParTrieMap<K, V>> groupBy(Function1<Tuple2<K, V>, K> function1) {
        return ParIterableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return ParIterableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.GenMapLike
    public int hashCode() {
        return GenMapLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Object head() {
        return ParIterableLike.Cclass.head(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<Tuple2<K, V>> headOption() {
        return ParIterableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable init() {
        return ParIterableLike.Cclass.init(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void initTaskSupport() {
        ParIterableLike.Cclass.initTaskSupport(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
    public boolean isDefinedAt(K k) {
        return ParMapLike.Cclass.isDefinedAt(this, k);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return ParIterableLike.Cclass.isEmpty(this);
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
    public Splitter<Tuple2<K, V>> iterator() {
        return ParIterableLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public ParSet<K> keySet() {
        return ParMapLike.Cclass.keySet(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable<K> keys() {
        return ParMapLike.Cclass.keys(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public IterableSplitter<K> keysIterator() {
        return ParMapLike.Cclass.keysIterator(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Object last() {
        return ParIterableLike.Cclass.last(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<Tuple2<K, V>> lastOption() {
        return ParIterableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
    public <S, That> That map(Function1<Tuple2<K, V>, S> function1, CanBuildFrom<ParTrieMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.parallel.mutable.ParMap, scala.collection.parallel.ParMap, scala.collection.generic.GenericParMapTemplate
    public GenericParMapCompanion<scala.collection.parallel.ParMap> mapCompanion() {
        return ParTrieMap$.MODULE$;
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<Tuple2<K, V>, NewTo> mapResult(Function1<ParTrieMap<K, V>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <S> scala.collection.parallel.ParMap<K, S> mapValues(Function1<V, S> function1) {
        return ParMapLike.Cclass.mapValues(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public Object max(Ordering ordering) {
        return ParIterableLike.Cclass.max(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public Object maxBy(Function1 function1, Ordering ordering) {
        return ParIterableLike.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public Object min(Ordering ordering) {
        return ParIterableLike.Cclass.min(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public Object minBy(Function1 function1, Ordering ordering) {
        return ParIterableLike.Cclass.minBy(this, function1, ordering);
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
    public Builder<Tuple2<K, V>, ParIterable<Tuple2<K, V>>> newBuilder() {
        return GenericParTemplate.Cclass.newBuilder(this);
    }

    @Override // scala.collection.parallel.mutable.ParMap, scala.collection.generic.GenericParMapTemplate, scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
    public Combiner<Tuple2<K, V>, ParTrieMap<K, V>> newCombiner() {
        return ParTrieMap$.MODULE$.newCombiner();
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
    public Combiner<Tuple2<K, V>, ParTrieMap<K, V>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParTrieMap<K, V>, ParTrieMap<K, V>> partition(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void printDebugBuffer() {
        ParIterableLike.Cclass.printDebugBuffer(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U product(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.product(this, numeric);
    }

    @Override // scala.collection.parallel.mutable.ParMapLike
    public Option<V> put(K k, V v) {
        return scala$collection$parallel$mutable$ParTrieMap$$ctrie().put(k, v);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U reduce(Function2<U, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U> U reduceLeft(Function2<U, Tuple2<K, V>, U> function2) {
        return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceLeftOption(Function2<U, Tuple2<K, V>, U> function2) {
        return ParIterableLike.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
        return ParIterableLike.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> U reduceRight(Function2<Tuple2<K, V>, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceRightOption(Function2<Tuple2<K, V>, U, U> function2) {
        return ParIterableLike.Cclass.reduceRightOption(this, function2);
    }

    public Option<V> remove(K k) {
        return scala$collection$parallel$mutable$ParTrieMap$$ctrie().remove(k);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public scala.collection.parallel.ParIterable repr() {
        return ParIterableLike.Cclass.repr(this);
    }

    @Override // scala.collection.mutable.Builder
    public ParTrieMap<K, V> result() {
        return this;
    }

    @Override // scala.collection.parallel.Combiner
    public Object resultWithTaskSupport() {
        return Combiner.Cclass.resultWithTaskSupport(this);
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

    public TrieMap<K, V> scala$collection$parallel$mutable$ParTrieMap$$ctrie() {
        return this.scala$collection$parallel$mutable$ParTrieMap$$ctrie;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParTrieMap<K, V>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public int scanBlockSize() {
        return ParIterableLike.Cclass.scanBlockSize(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanLeft(S s, Function2<S, Tuple2<K, V>, S> function2, CanBuildFrom<ParTrieMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanRight(S s, Function2<Tuple2<K, V>, S, S> function2, CanBuildFrom<ParTrieMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.parallel.mutable.ParMap, scala.collection.GenMap, scala.collection.GenMapLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public TrieMap<K, V> seq() {
        return scala$collection$parallel$mutable$ParTrieMap$$ctrie();
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable sequentially(Function1 function1) {
        return ParIterableLike.Cclass.sequentially(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public int size() {
        int i;
        MainNode<K, V> gcasRead = scala$collection$parallel$mutable$ParTrieMap$$ctrie().readRoot(scala$collection$parallel$mutable$ParTrieMap$$ctrie().readRoot$default$1()).gcasRead(scala$collection$parallel$mutable$ParTrieMap$$ctrie());
        if (gcasRead instanceof TNode) {
            i = ((TNode) gcasRead).cachedSize(scala$collection$parallel$mutable$ParTrieMap$$ctrie());
        } else if (gcasRead instanceof LNode) {
            i = ((LNode) gcasRead).cachedSize(scala$collection$parallel$mutable$ParTrieMap$$ctrie());
        } else if (!(gcasRead instanceof CNode)) {
            throw new MatchError(gcasRead);
        } else {
            CNode cNode = (CNode) gcasRead;
            tasksupport().executeAndWaitResult(new Size(this, 0, cNode.array().length, cNode.array()));
            i = cNode.cachedSize(scala$collection$parallel$mutable$ParTrieMap$$ctrie());
        }
        return i;
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

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable slice(int i, int i2) {
        return ParIterableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParTrieMap<K, V>, ParTrieMap<K, V>> span(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParTrieMap<K, V>, ParTrieMap<K, V>> splitAt(int i) {
        return ParIterableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParTrieMapSplitter<K, V> splitter() {
        return new ParTrieMapSplitter<>(0, (TrieMap) scala$collection$parallel$mutable$ParTrieMap$$ctrie().readOnlySnapshot(), true);
    }

    @Override // scala.collection.parallel.ParMap, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "ParTrieMap";
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U sum(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.sum(this, numeric);
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
    public <R, Tp> Object task2ops(ParIterableLike<Tuple2<K, V>, ParTrieMap<K, V>, TrieMap<K, V>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
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

    @Override // scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<K, V>, Col> canBuildFrom) {
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
    public IndexedSeq<Tuple2<K, V>> toIndexedSeq() {
        return ParIterableLike.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public ParIterable<Tuple2<K, V>> toIterable() {
        return ParIterable.Cclass.toIterable(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<Tuple2<K, V>> toIterator() {
        return ParIterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public List<Tuple2<K, V>> toList() {
        return ParIterableLike.Cclass.toList(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <K, V> scala.collection.parallel.immutable.ParMap<K, V> toMap(Predef$$less$colon$less<Tuple2<K, V>, Tuple2<K, V>> predef$$less$colon$less) {
        return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
        return (That) ParIterableLike.Cclass.toParCollection(this, function0);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<Tuple2<K, V>, Tuple2<K, V>> predef$$less$colon$less) {
        return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.SetLike
    public ParSeq<Tuple2<K, V>> toSeq() {
        return ParIterable.Cclass.toSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <U> scala.collection.parallel.immutable.ParSet<U> toSet() {
        return ParIterableLike.Cclass.toSet(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<Tuple2<K, V>> toStream() {
        return ParIterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public String toString() {
        return ParIterableLike.Cclass.toString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public GenTraversable<Tuple2<K, V>> toTraversable() {
        return ParIterableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public Vector<Tuple2<K, V>> toVector() {
        return ParIterableLike.Cclass.toVector(this);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<Tuple2<K, V>, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<Tuple2<K, V>, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    public void update(K k, V v) {
        scala$collection$parallel$mutable$ParTrieMap$$ctrie().update(k, v);
    }

    @Override // scala.collection.parallel.mutable.ParMap, scala.collection.parallel.ParMap, scala.collection.GenMap, scala.collection.MapLike
    public <U> ParMap<K, U> updated(K k, U u) {
        return ParMap.Cclass.updated(this, k, u);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable<V> values() {
        return ParMapLike.Cclass.values(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public IterableSplitter<V> valuesIterator() {
        return ParMapLike.Cclass.valuesIterator(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object view() {
        return ParIterableLike.Cclass.view(this);
    }

    @Override // scala.collection.parallel.mutable.ParMap
    public ParMap<K, V> withDefault(Function1<K, V> function1) {
        return ParMap.Cclass.withDefault(this, function1);
    }

    @Override // scala.collection.parallel.mutable.ParMap
    public ParMap<K, V> withDefaultValue(V v) {
        return ParMap.Cclass.withDefaultValue(this, v);
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
    public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParTrieMap<K, V>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParTrieMap<K, V>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, That> That zipWithIndex(CanBuildFrom<ParTrieMap<K, V>, Tuple2<U, Object>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
