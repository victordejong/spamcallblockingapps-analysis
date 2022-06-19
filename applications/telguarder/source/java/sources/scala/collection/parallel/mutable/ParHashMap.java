package scala.collection.parallel.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
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
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenMapLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
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
import scala.collection.immutable.IndexedSeq$;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.DefaultEntry;
import scala.collection.mutable.HashEntry;
import scala.collection.mutable.HashMap;
import scala.collection.mutable.HashTable;
import scala.collection.mutable.StringBuilder;
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
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.mutable.ParHashTable;
import scala.collection.parallel.mutable.ParIterable;
import scala.collection.parallel.mutable.ParMap;
import scala.collection.parallel.mutable.ParMapLike;
import scala.collection.parallel.package$;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.RichInt$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\t=e!B\u0001\u0003\u0001-i#A\u0003)be\"\u000b7\u000f['ba*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0005qCJ\fG\u000e\\3m\u0015\t9\u0001\"\u0001\u0006d_2dWm\u0019;j_:T\u0011!C\u0001\u0006g\u000e\fG.Y\u0002\u0001+\raq#I\n\b\u00015\t2EK\u001a:!\tqq\"D\u0001\t\u0013\t\u0001\u0002B\u0001\u0004B]f\u0014VM\u001a\t\u0005%M)\u0002%D\u0001\u0003\u0013\t!\"A\u0001\u0004QCJl\u0015\r\u001d\t\u0003-]a\u0001\u0001B\u0003\u0019\u0001\t\u0007\u0011DA\u0001L#\tQR\u0004\u0005\u0002\u000f7%\u0011A\u0004\u0003\u0002\b\u001d>$\b.\u001b8h!\tqa$\u0003\u0002 \u0011\t\u0019\u0011I\\=\u0011\u0005Y\tC!\u0002\u0012\u0001\u0005\u0004I\"!\u0001,\u0011\u000b\u0011:S\u0003I\u0015\u000e\u0003\u0015R!A\n\u0004\u0002\u000f\u001d,g.\u001a:jG&\u0011\u0001&\n\u0002\u0016\u000f\u0016tWM]5d!\u0006\u0014X*\u00199UK6\u0004H.\u0019;f!\t\u0011\u0002\u0001\u0005\u0004\u0013WU\u0001SFL\u0005\u0003Y\t\u0011!\u0002U1s\u001b\u0006\u0004H*[6f!\u0011\u0011\u0002!\u0006\u0011\u0011\t=\nT\u0003I\u0007\u0002a)\u00111AB\u0005\u0003eA\u0012q\u0001S1tQ6\u000b\u0007\u000f\u0005\u0003\u0013iU1\u0014BA\u001b\u0003\u00051\u0001\u0016M\u001d%bg\"$\u0016M\u00197f!\u0011ys'\u0006\u0011\n\u0005a\u0002$\u0001\u0004#fM\u0006,H\u000e^#oiJL\bC\u0001\b;\u0013\tY\u0004B\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005>\u0001\t\u0005\t\u0015!\u0003?\u0003!\u0019wN\u001c;f]R\u001c\b\u0003B C+Yr!a\f!\n\u0005\u0005\u0003\u0014!\u0003%bg\"$\u0016M\u00197f\u0013\t\u0019EI\u0001\u0005D_:$XM\u001c;t\u0015\t\t\u0005\u0007\u0003\u0004G\u0001\u0011\u0005aaR\u0001\u0007y%t\u0017\u000e\u001e \u0015\u00055B\u0005\"B\u001fF\u0001\u0004qT\u0001\u0002&\u0001\u0001Y\u0012Q!\u00128uefDQA\u0012\u0001\u0005\u00021#\u0012!\f\u0005\u0006\u001d\u0002!\teT\u0001\r[\u0006\u00048i\\7qC:LwN\\\u000b\u0002!B\u0019A%U\u0015\n\u0005I+#AF$f]\u0016\u0014\u0018n\u0019)be6\u000b\u0007oQ8na\u0006t\u0017n\u001c8\t\u000bQ\u0003A\u0011I+\u0002\u000b\u0015l\u0007\u000f^=\u0016\u00035Baa\u0016\u0001!\n#B\u0016a\u00038fo\u000e{WNY5oKJ,\u0012!\u0017\t\u0005%i+\u0002%\u0003\u0002\\\u0005\t\u0011\u0002+\u0019:ICNDW*\u00199D_6\u0014\u0017N\\3s\u0011\u0015i\u0006\u0001\"\u0011_\u0003\r\u0019X-]\u000b\u0002]!)\u0001\r\u0001C\u0001C\u0006A1\u000f\u001d7jiR,'/F\u0001c!\t\u0019G-D\u0001\u0001\r\u0011)\u0007\u0001\u00014\u0003%A\u000b'\u000fS1tQ6\u000b\u0007/\u0013;fe\u0006$xN]\n\u0003I\u001e\u0004Ba\u00195kE&\u0011\u0011\u000e\u000e\u0002\u000e\u000b:$(/_%uKJ\fGo\u001c:\u0011\t9YW\u0003I\u0005\u0003Y\"\u0011a\u0001V;qY\u0016\u0014\u0004\u0002\u00038e\u0005\u0003\u0005\u000b\u0011B8\u0002\u000bM$\u0018M\u001d;\u0011\u00059\u0001\u0018BA9\t\u0005\rIe\u000e\u001e\u0005\tg\u0012\u0014\t\u0011)A\u0005_\u0006AQO\u001c;jY&#\u0007\u0010\u0003\u0005vI\n\u0005\t\u0015!\u0003p\u0003%!x\u000e^1m'&TX\r\u0003\u0005xI\n\u0005\t\u0015!\u00037\u0003\u0005)\u0007\"\u0002$e\t\u0003IH#\u00022{wrl\b\"\u00028y\u0001\u0004y\u0007\"B:y\u0001\u0004y\u0007\"B;y\u0001\u0004y\u0007\"B<y\u0001\u00041\u0004BB@e\t\u0003\t\t!\u0001\u0006f]R\u0014\u0018PM5uK6$2A[A\u0002\u0011\u0019\t)A a\u0001m\u0005)QM\u001c;ss\"9\u0011\u0011\u00023\u0005\u0002\u0005-\u0011a\u00038fo&#XM]1u_J$\u0012BYA\u0007\u0003#\t)\"!\u0007\t\u000f\u0005=\u0011q\u0001a\u0001_\u00069\u0011\u000e\u001a=Ge>l\u0007bBA\n\u0003\u000f\u0001\ra\\\u0001\tS\u0012DXK\u001c;jY\"9\u0011qCA\u0004\u0001\u0004y\u0017a\u0002;pi\u0006d7K\u001f\u0005\b\u00037\t9\u00011\u00017\u0003\t)7\u000fC\u0004\u0002 \u0001!\t%!\t\u0002\tML'0Z\u000b\u0002_\"9\u0011Q\u0005\u0001\u0005B\u0005\u001d\u0012!B2mK\u0006\u0014HCAA\u0015!\rq\u00111F\u0005\u0004\u0003[A!\u0001B+oSRDq!!\r\u0001\t\u0003\t\u0019$A\u0002hKR$B!!\u000e\u0002<A!a\"a\u000e!\u0013\r\tI\u0004\u0003\u0002\u0007\u001fB$\u0018n\u001c8\t\u000f\u0005u\u0012q\u0006a\u0001+\u0005\u00191.Z=\t\u000f\u0005\u0005\u0003\u0001\"\u0001\u0002D\u0005\u0019\u0001/\u001e;\u0015\r\u0005U\u0012QIA$\u0011\u001d\ti$a\u0010A\u0002UAq!!\u0013\u0002@\u0001\u0007\u0001%A\u0003wC2,X\rC\u0004\u0002N\u0001!\t!a\u0014\u0002\rU\u0004H-\u0019;f)\u0019\tI#!\u0015\u0002T!9\u0011QHA&\u0001\u0004)\u0002bBA%\u0003\u0017\u0002\r\u0001\t\u0005\b\u0003/\u0002A\u0011AA-\u0003\u0019\u0011X-\\8wKR!\u0011QGA.\u0011\u001d\ti$!\u0016A\u0002UAq!a\u0018\u0001\t\u0003\t\t'\u0001\u0005%a2,8\u000fJ3r)\r\u0019\u00171\r\u0005\b\u0003K\ni\u00061\u0001k\u0003\tYg\u000fC\u0004\u0002j\u0001!\t!a\u001b\u0002\u0013\u0011j\u0017N\\;tI\u0015\fHcA2\u0002n!9\u0011QHA4\u0001\u0004)\u0002bBA9\u0001\u0011\u0005\u00131O\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0003\u0003k\u0002B!a\u001e\u0002\u00026\u0011\u0011\u0011\u0010\u0006\u0005\u0003w\ni(\u0001\u0003mC:<'BAA@\u0003\u0011Q\u0017M^1\n\t\u0005\r\u0015\u0011\u0010\u0002\u0007'R\u0014\u0018N\\4\t\u000f\u0005\u001d\u0005\u0001\"\u0005\u0002\n\u0006q1M]3bi\u0016tUm^#oiJLX\u0003BAF\u0003+#b!!$\u0002\u0010\u0006E\u0005CA2J\u0011\u001d\ti$!\"A\u0002UA\u0001\"!\u0013\u0002\u0006\u0002\u0007\u00111\u0013\t\u0004-\u0005UEaBAL\u0003\u000b\u0013\r!\u0007\u0002\u0003-FBq!a'\u0001\t\u0013\ti*A\u0006xe&$Xm\u00142kK\u000e$H\u0003BA\u0015\u0003?C\u0001\"!)\u0002\u001a\u0002\u0007\u00111U\u0001\u0004_V$\b\u0003BAS\u0003Wk!!a*\u000b\t\u0005%\u0016QP\u0001\u0003S>LA!!,\u0002(\n\u0011rJ\u00196fGR|U\u000f\u001e9viN#(/Z1n\u0011\u001d\t\t\f\u0001C\u0005\u0003g\u000b!B]3bI>\u0013'.Z2u)\u0011\tI#!.\t\u0011\u0005]\u0016q\u0016a\u0001\u0003s\u000b!!\u001b8\u0011\t\u0005\u0015\u00161X\u0005\u0005\u0003{\u000b9KA\tPE*,7\r^%oaV$8\u000b\u001e:fC6D\u0001\"!1\u0001\t\u0003\"\u00111Y\u0001\u0011EJ|7.\u001a8J]Z\f'/[1oiN,\"!!2\u0011\r\u0005\u001d\u0017\u0011ZAg\u001b\u00051\u0011bAAf\r\t\u00191+Z9\u0011\t\u0005=\u0017Q\u001b\b\u0004\u001d\u0005E\u0017bAAj\u0011\u00051\u0001K]3eK\u001aLA!a!\u0002X*\u0019\u00111\u001b\u0005\t\u000f\u0005m\u0007\u0001\"\u0003\u0002^\u0006Y1\r[3dW\n+8m[3u)\u0011\ty.a;\u0011\r\u0005\u0005\u0018q]A;\u001b\t\t\u0019OC\u0002\u0002f\u001a\t\u0011\"[7nkR\f'\r\\3\n\t\u0005%\u00181\u001d\u0002\u0005\u0019&\u001cH\u000fC\u0004\u0002n\u0006e\u0007\u0019A8\u0002\u0003%Dq!!=\u0001\t\u0013\t\u00190\u0001\u0006dQ\u0016\u001c7.\u00128uef$B!!>\u0003\u0002A1\u0011q_A\u007f\u0003\u001bt1ADA}\u0013\r\tY\u0010C\u0001\ba\u0006\u001c7.Y4f\u0013\u0011\tI/a@\u000b\u0007\u0005m\b\u0002C\u0004\u0002n\u0006=\b\u0019A8)\u000f\u0001\u0011)!!\u0013\u0003\fA\u0019aBa\u0002\n\u0007\t%\u0001B\u0001\tTKJL\u0017\r\u001c,feNLwN\\+J\tz\t\u0011aB\u0004\u0003\u0010\tA\tA!\u0005\u0002\u0015A\u000b'\u000fS1tQ6\u000b\u0007\u000fE\u0002\u0013\u0005'1a!\u0001\u0002\t\u0002\tU1#\u0002B\n\u0005/I\u0004\u0003\u0002\u0013\u0003\u001a%J1Aa\u0007&\u00055\u0001\u0016M]'ba\u001a\u000b7\r^8ss\"9aIa\u0005\u0005\u0002\t}AC\u0001B\t\u0011)\u0011\u0019Ca\u0005A\u0002\u0013\u0005\u0011\u0011E\u0001\u0006SR,'o\u001d\u0005\u000b\u0005O\u0011\u0019\u00021A\u0005\u0002\t%\u0012!C5uKJ\u001cx\fJ3r)\u0011\tICa\u000b\t\u0013\t5\"QEA\u0001\u0002\u0004y\u0017a\u0001=%c!A!\u0011\u0007B\nA\u0003&q.\u0001\u0004ji\u0016\u00148\u000f\t\u0005\b)\nMA\u0011\u0001B\u001b+\u0019\u00119D!\u0010\u0003BU\u0011!\u0011\b\t\u0007%\u0001\u0011YDa\u0010\u0011\u0007Y\u0011i\u0004\u0002\u0004\u0019\u0005g\u0011\r!\u0007\t\u0004-\t\u0005CA\u0002\u0012\u00034\t\u0007\u0011\u0004C\u0004X\u0005'!\tA!\u0012\u0016\r\t\u001d#Q\u000bB-+\t\u0011I\u0005\u0005\u0005\u0003L\t5#\u0011\u000bB.\u001b\u0005!\u0011b\u0001B(\t\tA1i\\7cS:,'\u000f\u0005\u0004\u000fW\nM#q\u000b\t\u0004-\tUCA\u0002\r\u0003D\t\u0007\u0011\u0004E\u0002\u0017\u00053\"aA\tB\"\u0005\u0004I\u0002C\u0002\n\u0001\u0005'\u00129\u0006\u0003\u0005\u0003`\tMA1\u0001B1\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\u0019\u0011\u0019Ga\u001f\u0003��U\u0011!Q\r\t\nI\t\u001d$1\u000eB<\u0005\u0003K1A!\u001b&\u00059\u0019\u0015M\\\"p[\nLg.\u001a$s_6\u0004BA!\u001c\u0003p5\u0011!1C\u0005\u0005\u0005c\u0012\u0019H\u0001\u0003D_2d\u0017b\u0001B;K\tiq)\u001a8NCB4\u0015m\u0019;pef\u0004bAD6\u0003z\tu\u0004c\u0001\f\u0003|\u00111\u0001D!\u0018C\u0002e\u00012A\u0006B@\t\u0019\u0011#Q\fb\u00013A1!\u0003\u0001B=\u0005{B!B!\"\u0003\u0014\u0005\u0005I\u0011\u0002BD\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\t%\u0005\u0003BA<\u0005\u0017KAA!$\u0002z\t1qJ\u00196fGR\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMap.class */
public class ParHashMap<K, V> implements ParMap<K, V>, ParHashTable<K, DefaultEntry<K, V>>, Serializable {
    public static final long serialVersionUID = 1;
    private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
    private volatile ParIterableLike$ScanNode$ ScanNode$module;
    private transient int _loadFactor;
    private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;
    private transient int seedvalue;
    private transient int[] sizemap;
    private transient HashEntry<Object, HashEntry>[] table;
    private transient int tableSize;
    private transient int threshold;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMap$ParHashMapIterator.class */
    public class ParHashMapIterator extends ParHashTable<K, DefaultEntry<K, V>>.EntryIterator<Tuple2<K, V>, ParHashMap<K, V>.ParHashMapIterator> {
        public ParHashMapIterator(ParHashMap<K, V> parHashMap, int i, int i2, int i3, DefaultEntry<K, V> defaultEntry) {
            super(parHashMap, i, i2, i3, defaultEntry);
        }

        @Override // scala.collection.parallel.mutable.ParHashTable.EntryIterator
        public /* bridge */ /* synthetic */ Object entry2item(HashEntry hashEntry) {
            return entry2item((DefaultEntry) ((DefaultEntry) hashEntry));
        }

        public Tuple2<K, V> entry2item(DefaultEntry<K, V> defaultEntry) {
            return new Tuple2<>(defaultEntry.key(), defaultEntry.value());
        }

        @Override // scala.collection.parallel.mutable.ParHashTable.EntryIterator
        public /* bridge */ /* synthetic */ IterableSplitter newIterator(int i, int i2, int i3, HashEntry hashEntry) {
            return newIterator(i, i2, i3, (DefaultEntry) ((DefaultEntry) hashEntry));
        }

        public ParHashMap<K, V>.ParHashMapIterator newIterator(int i, int i2, int i3, DefaultEntry<K, V> defaultEntry) {
            return new ParHashMapIterator(m85xf90484f6(), i, i2, i3, defaultEntry);
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashMap$ParHashMapIterator$$$outer */
        public /* synthetic */ ParHashMap m85xf90484f6() {
            return (ParHashMap) this.$outer;
        }
    }

    public ParHashMap() {
        this(null);
    }

    public ParHashMap(HashTable.Contents<K, DefaultEntry<K, V>> contents) {
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
        HashTable.HashUtils.Cclass.$init$(this);
        HashTable.Cclass.$init$(this);
        ParHashTable.Cclass.$init$(this);
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

    public static <K, V> CanCombineFrom<ParHashMap<?, ?>, Tuple2<K, V>, ParHashMap<K, V>> canBuildFrom() {
        return ParHashMap$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [scala.collection.immutable.List] */
    /* JADX WARN: Type inference failed for: r5v0, types: [scala.collection.parallel.mutable.ParHashMap<K, V>, scala.collection.parallel.mutable.ParHashMap] */
    private final List check$1(HashEntry hashEntry, int i) {
        Nil$ nil$;
        while (true) {
            if (hashEntry != null) {
                if (index(elemHashCode(hashEntry.key())) != i) {
                    nil$ = check$1((HashEntry) hashEntry.next(), i).$colon$colon(new StringBuilder().append((Object) "Element ").append(hashEntry.key()).append((Object) " at ").append(BoxesRunTime.boxToInteger(i)).append((Object) " with ").append(BoxesRunTime.boxToInteger(elemHashCode(hashEntry.key()))).append((Object) " maps to ").append(BoxesRunTime.boxToInteger(index(elemHashCode(hashEntry.key())))).toString());
                    break;
                }
                hashEntry = (HashEntry) hashEntry.next();
            } else {
                nil$ = Nil$.MODULE$;
                break;
            }
        }
        return nil$;
    }

    public static int iters() {
        return ParHashMap$.MODULE$.iters();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        init(objectInputStream, new ParHashMap$$anonfun$readObject$1(this, objectInputStream));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        serializeTo(objectOutputStream, new ParHashMap$$anonfun$writeObject$1(this, objectOutputStream));
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
    public ParHashMap<K, V> $minus$eq(K k) {
        removeEntry(k);
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
    public /* bridge */ /* synthetic */ Growable $plus$eq(Object obj) {
        return $plus$eq((Tuple2) ((Tuple2) obj));
    }

    @Override // scala.collection.generic.Growable
    public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
        Growable $plus$plus$eq;
        $plus$plus$eq = $plus$eq((ParHashMap<K, V>) obj).$plus$eq(obj2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.parallel.mutable.ParMapLike
    public ParHashMap<K, V> $plus$eq(Tuple2<K, V> tuple2) {
        DefaultEntry defaultEntry = (DefaultEntry) findOrAddEntry(tuple2.mo269_1(), tuple2.mo268_2());
        if (defaultEntry != null) {
            defaultEntry.value_$eq(tuple2.mo268_2());
        }
        return this;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParHashMap<K, V>, U, That> canBuildFrom) {
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

    @Override // scala.collection.mutable.HashTable
    public int _loadFactor() {
        return this._loadFactor;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void _loadFactor_$eq(int i) {
        this._loadFactor = i;
    }

    @Override // scala.collection.mutable.HashTable
    public void addEntry(HashEntry hashEntry) {
        HashTable.Cclass.addEntry(this, hashEntry);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S aggregate(Function0<S> function0, Function2<S, Tuple2<K, V>, S> function2, Function2<S, S, S> function22) {
        return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.parallel.mutable.ParHashTable, scala.collection.mutable.HashTable
    public boolean alwaysInitSizeMap() {
        return ParHashTable.Cclass.alwaysInitSizeMap(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public V apply(K k) {
        return (V) ParMapLike.Cclass.apply(this, k);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object bf2seq(CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return ParIterableLike.Cclass.bf2seq(this, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Seq<String> brokenInvariants() {
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        IndexedSeq indexedSeq = (IndexedSeq) richInt$.until$extension0(0, table().length / sizeMapBucketSize()).map(new ParHashMap$$anonfun$2(this), IndexedSeq$.MODULE$.canBuildFrom());
        RichInt$ richInt$2 = RichInt$.MODULE$;
        Predef$ predef$2 = Predef$.MODULE$;
        return (Seq) ((TraversableLike) indexedSeq.flatMap(new ParHashMap$$anonfun$brokenInvariants$1(this), IndexedSeq$.MODULE$.canBuildFrom())).$plus$plus((GenTraversableOnce) ((IndexedSeq) richInt$2.until$extension0(0, table().length).map(new ParHashMap$$anonfun$3(this), IndexedSeq$.MODULE$.canBuildFrom())).flatMap(new ParHashMap$$anonfun$brokenInvariants$2(this), IndexedSeq$.MODULE$.canBuildFrom()), IndexedSeq$.MODULE$.canBuildFrom());
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <Elem, To> Object builder2ops(Builder<Elem, To> builder) {
        return ParIterableLike.Cclass.builder2ops(this, builder);
    }

    @Override // scala.collection.mutable.HashTable
    public int calcSizeMapSize(int i) {
        return HashTable.Cclass.calcSizeMapSize(this, i);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return ParIterableLike.Cclass.canEqual(this, obj);
    }

    @Override // scala.collection.parallel.mutable.ParMapLike, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        clearTable();
    }

    @Override // scala.collection.mutable.HashTable
    public void clearTable() {
        HashTable.Cclass.clearTable(this);
    }

    @Override // scala.collection.mutable.Cloneable
    public Object clone() {
        return Cloneable.Cclass.clone(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That collect(PartialFunction<Tuple2<K, V>, S> partialFunction, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
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

    @Override // scala.collection.mutable.HashTable
    public <V1> DefaultEntry<K, V> createNewEntry(K k, V1 v1) {
        return new DefaultEntry<>(k, v1);
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

    @Override // scala.collection.mutable.HashTable
    public boolean elemEquals(K k, K k2) {
        return HashTable.Cclass.elemEquals(this, k, k2);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public int elemHashCode(K k) {
        return HashTable.HashUtils.Cclass.elemHashCode(this, k);
    }

    @Override // scala.collection.parallel.mutable.ParMap, scala.collection.parallel.ParMap, scala.collection.parallel.ParMapLike
    public ParHashMap<K, V> empty() {
        return new ParHashMap<>();
    }

    @Override // scala.collection.mutable.HashTable
    public Iterator<DefaultEntry<K, V>> entriesIterator() {
        return HashTable.Cclass.entriesIterator(this);
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

    @Override // scala.collection.mutable.HashTable
    public HashEntry findEntry(Object obj) {
        return HashTable.Cclass.findEntry(this, obj);
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry findOrAddEntry(Object obj, Object obj2) {
        return HashTable.Cclass.findOrAddEntry(this, obj, obj2);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That flatMap(Function1<Tuple2<K, V>, GenTraversableOnce<S>> function1, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
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

    @Override // scala.collection.mutable.HashTable
    public <U> void foreachEntry(Function1<DefaultEntry<K, V>, U> function1) {
        HashTable.Cclass.foreachEntry(this, function1);
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
    public <P, Q> Combiner<Tuple2<P, Q>, ParHashMap<P, Q>> genericMapCombiner() {
        return GenericParMapTemplate.Cclass.genericMapCombiner(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<V> get(K k) {
        DefaultEntry defaultEntry = (DefaultEntry) findEntry(k);
        return defaultEntry == null ? None$.MODULE$ : new Some(defaultEntry.value());
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <U> U getOrElse(K k, Function0<U> function0) {
        return (U) ParMapLike.Cclass.getOrElse(this, k, function0);
    }

    @Override // scala.collection.GenTraversableLike
    public <K> scala.collection.parallel.immutable.ParMap<K, ParHashMap<K, V>> groupBy(Function1<Tuple2<K, V>, K> function1) {
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

    @Override // scala.collection.mutable.HashTable
    public HashTable.Contents<K, DefaultEntry<K, V>> hashTableContents() {
        return HashTable.Cclass.hashTableContents(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Object head() {
        return ParIterableLike.Cclass.head(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<Tuple2<K, V>> headOption() {
        return ParIterableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int improve(int i, int i2) {
        return HashTable.HashUtils.Cclass.improve(this, i, i2);
    }

    @Override // scala.collection.mutable.HashTable
    public final int index(int i) {
        return HashTable.Cclass.index(this, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable init() {
        return ParIterableLike.Cclass.init(this);
    }

    @Override // scala.collection.mutable.HashTable
    public void init(ObjectInputStream objectInputStream, Function0<DefaultEntry<K, V>> function0) {
        HashTable.Cclass.init(this, objectInputStream, function0);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void initTaskSupport() {
        ParIterableLike.Cclass.initTaskSupport(this);
    }

    @Override // scala.collection.mutable.HashTable
    public void initWithContents(HashTable.Contents<K, DefaultEntry<K, V>> contents) {
        HashTable.Cclass.initWithContents(this, contents);
    }

    @Override // scala.collection.mutable.HashTable
    public int initialSize() {
        return HashTable.Cclass.initialSize(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
    public boolean isDefinedAt(K k) {
        return ParMapLike.Cclass.isDefinedAt(this, k);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return ParIterableLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.mutable.HashTable
    public boolean isSizeMapDefined() {
        return HashTable.Cclass.isSizeMapDefined(this);
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
    public <S, That> That map(Function1<Tuple2<K, V>, S> function1, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.parallel.mutable.ParMap, scala.collection.parallel.ParMap, scala.collection.generic.GenericParMapTemplate
    public GenericParMapCompanion<scala.collection.parallel.ParMap> mapCompanion() {
        return ParHashMap$.MODULE$;
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
    public ParHashMapCombiner<K, V> newCombiner() {
        return ParHashMapCombiner$.MODULE$.apply();
    }

    @Override // scala.collection.mutable.HashTable
    public void nnSizeMapAdd(int i) {
        HashTable.Cclass.nnSizeMapAdd(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void nnSizeMapRemove(int i) {
        HashTable.Cclass.nnSizeMapRemove(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void nnSizeMapReset(int i) {
        HashTable.Cclass.nnSizeMapReset(this, i);
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
    public Combiner<Tuple2<K, V>, ParHashMap<K, V>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParHashMap<K, V>, ParHashMap<K, V>> partition(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void printDebugBuffer() {
        ParIterableLike.Cclass.printDebugBuffer(this);
    }

    @Override // scala.collection.mutable.HashTable
    public void printSizeMap() {
        HashTable.Cclass.printSizeMap(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U product(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.product(this, numeric);
    }

    @Override // scala.collection.parallel.mutable.ParMapLike
    public Option<V> put(K k, V v) {
        None$ none$;
        DefaultEntry defaultEntry = (DefaultEntry) findOrAddEntry(k, v);
        if (defaultEntry == null) {
            none$ = None$.MODULE$;
        } else {
            Object value = defaultEntry.value();
            defaultEntry.value_$eq(v);
            none$ = new Some(value);
        }
        return none$;
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
        DefaultEntry defaultEntry = (DefaultEntry) removeEntry(k);
        return defaultEntry != null ? new Some(defaultEntry.value()) : None$.MODULE$;
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry removeEntry(Object obj) {
        return HashTable.Cclass.removeEntry(this, obj);
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

    public List<String> scala$collection$parallel$mutable$ParHashMap$$checkBucket(int i) {
        int i2 = sizemap()[i];
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        int unboxToInt = BoxesRunTime.unboxToInt(richInt$.until$extension0(sizeMapBucketSize() * i, (i + 1) * sizeMapBucketSize()).foldLeft(BoxesRunTime.boxToInteger(0), new ParHashMap$$anonfun$1(this)));
        return unboxToInt != i2 ? List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new String[]{new StringBuilder().append((Object) "Found ").append(BoxesRunTime.boxToInteger(unboxToInt)).append((Object) " elements, while sizemap showed ").append(BoxesRunTime.boxToInteger(i2)).toString()})) : Nil$.MODULE$;
    }

    public List<String> scala$collection$parallel$mutable$ParHashMap$$checkEntry(int i) {
        return check$1(table()[i], i);
    }

    public final int scala$collection$parallel$mutable$ParHashMap$$count$1(HashEntry hashEntry) {
        return hashEntry == null ? 0 : scala$collection$parallel$mutable$ParHashMap$$count$1((HashEntry) hashEntry.next()) + 1;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParHashMap<K, V>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public int scanBlockSize() {
        return ParIterableLike.Cclass.scanBlockSize(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanLeft(S s, Function2<S, Tuple2<K, V>, S> function2, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanRight(S s, Function2<Tuple2<K, V>, S, S> function2, CanBuildFrom<ParHashMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.mutable.HashTable
    public int seedvalue() {
        return this.seedvalue;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void seedvalue_$eq(int i) {
        this.seedvalue = i;
    }

    @Override // scala.collection.parallel.mutable.ParMap, scala.collection.GenMap, scala.collection.GenMapLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public HashMap<K, V> seq() {
        return new HashMap<>(hashTableContents());
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable sequentially(Function1 function1) {
        return ParIterableLike.Cclass.sequentially(this, function1);
    }

    @Override // scala.collection.mutable.HashTable
    public void serializeTo(ObjectOutputStream objectOutputStream, Function1<DefaultEntry<K, V>, BoxedUnit> function1) {
        HashTable.Cclass.serializeTo(this, objectOutputStream, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public int size() {
        return tableSize();
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int sizeMapBucketBitSize() {
        return HashTable.HashUtils.Cclass.sizeMapBucketBitSize(this);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int sizeMapBucketSize() {
        return HashTable.HashUtils.Cclass.sizeMapBucketSize(this);
    }

    @Override // scala.collection.mutable.HashTable
    public void sizeMapDisable() {
        HashTable.Cclass.sizeMapDisable(this);
    }

    @Override // scala.collection.mutable.HashTable
    public void sizeMapInit(int i) {
        HashTable.Cclass.sizeMapInit(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void sizeMapInitAndRebuild() {
        HashTable.Cclass.sizeMapInitAndRebuild(this);
    }

    @Override // scala.collection.mutable.HashTable
    public int[] sizemap() {
        return this.sizemap;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void sizemap_$eq(int[] iArr) {
        this.sizemap = iArr;
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable slice(int i, int i2) {
        return ParIterableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParHashMap<K, V>, ParHashMap<K, V>> span(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParHashMap<K, V>, ParHashMap<K, V>> splitAt(int i) {
        return ParIterableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParHashMap<K, V>.ParHashMapIterator splitter() {
        return new ParHashMapIterator(this, 1, table().length, size(), (DefaultEntry) table()[0]);
    }

    @Override // scala.collection.parallel.ParMap, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "ParHashMap";
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U sum(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry<K, DefaultEntry<K, V>>[] table() {
        return (HashEntry<K, DefaultEntry<K, V>>[]) this.table;
    }

    @Override // scala.collection.mutable.HashTable
    public int tableSize() {
        return this.tableSize;
    }

    @Override // scala.collection.mutable.HashTable
    public int tableSizeSeed() {
        return HashTable.Cclass.tableSizeSeed(this);
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void tableSize_$eq(int i) {
        this.tableSize = i;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void table_$eq(HashEntry<K, DefaultEntry<K, V>>[] hashEntryArr) {
        this.table = hashEntryArr;
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
    public <R, Tp> Object task2ops(ParIterableLike<Tuple2<K, V>, ParHashMap<K, V>, HashMap<K, V>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
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

    @Override // scala.collection.mutable.HashTable
    public int threshold() {
        return this.threshold;
    }

    @Override // scala.collection.mutable.HashTable
    @TraitSetter
    public void threshold_$eq(int i) {
        this.threshold = i;
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

    @Override // scala.collection.mutable.HashTable
    public final int totalSizeMapBuckets() {
        return HashTable.Cclass.totalSizeMapBuckets(this);
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
        put(k, v);
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
    public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParHashMap<K, V>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParHashMap<K, V>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, That> That zipWithIndex(CanBuildFrom<ParHashMap<K, V>, Tuple2<U, Object>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
