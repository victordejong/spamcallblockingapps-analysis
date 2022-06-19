package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import scala.Function0;
import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractIterator;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Map;
import scala.collection.MapLike;
import scala.collection.Set;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.HashTable;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\t\ru!B\u0001\u0003\u0011\u0003I\u0011!\u0004'j].,G\rS1tQ6\u000b\u0007O\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001\u0001C\u0001\u0006\f\u001b\u0005\u0011a!\u0002\u0007\u0003\u0011\u0003i!!\u0004'j].,G\rS1tQ6\u000b\u0007oE\u0002\f\u001d]\u00022a\u0004\n\u0015\u001b\u0005\u0001\"BA\t\u0005\u0003\u001d9WM\\3sS\u000eL!a\u0005\t\u0003#5+H/\u00192mK6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0002\u000b+\u0019!AB\u0001\u0001\u0017+\r9R\u0004K\n\u0007+aQS&M\u001c\u0011\t)I2dJ\u0005\u00035\t\u00111\"\u00112tiJ\f7\r^'baB\u0011A$\b\u0007\u0001\t\u0015qRC1\u0001 \u0005\u0005\t\u0015C\u0001\u0011%!\t\t#%D\u0001\u0007\u0013\t\u0019cAA\u0004O_RD\u0017N\\4\u0011\u0005\u0005*\u0013B\u0001\u0014\u0007\u0005\r\te.\u001f\t\u00039!\"Q!K\u000bC\u0002}\u0011\u0011A\u0011\t\u0005\u0015-Zr%\u0003\u0002-\u0005\t\u0019Q*\u00199\u0011\u000b)q3d\n\u0019\n\u0005=\u0012!aB'ba2K7.\u001a\t\u0005\u0015UYr\u0005\u0005\u0003\u000bem!\u0014BA\u001a\u0003\u0005%A\u0015m\u001d5UC\ndW\r\u0005\u0003\u000bkm9\u0013B\u0001\u001c\u0003\u0005-a\u0015N\\6fI\u0016sGO]=\u0011\u0005\u0005B\u0014BA\u001d\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011\u0015YT\u0003\"\u0001=\u0003\u0019a\u0014N\\5u}Q\t\u0001\u0007C\u0003?+\u0011\u0005s(A\u0003f[B$\u00180F\u00011\u0011\u0015\tU\u0003\"\u0011C\u0003\u0011\u0019\u0018N_3\u0016\u0003\r\u0003\"!\t#\n\u0005\u00153!aA%oi\u0016!q)\u0006\u00015\u0005\u0015)e\u000e\u001e:z\u0011\u001dIU\u00031A\u0005\u0012)\u000b!BZ5sgR,e\u000e\u001e:z+\u0005Y\u0005C\u0001'G\u001b\u0005)\u0002b\u0002(\u0016\u0001\u0004%\tbT\u0001\u000fM&\u00148\u000f^#oiJLx\fJ3r)\t\u00016\u000b\u0005\u0002\"#&\u0011!K\u0002\u0002\u0005+:LG\u000fC\u0004U\u001b\u0006\u0005\t\u0019A&\u0002\u0007a$\u0013\u0007\u0003\u0004W+\u0001\u0006KaS\u0001\fM&\u00148\u000f^#oiJL\b\u0005\u000b\u0002V1B\u0011\u0011%W\u0005\u00035\u001a\u0011\u0011\u0002\u001e:b]NLWM\u001c;\t\u000fq+\u0002\u0019!C\t\u0015\u0006IA.Y:u\u000b:$(/\u001f\u0005\b=V\u0001\r\u0011\"\u0005`\u00035a\u0017m\u001d;F]R\u0014\u0018p\u0018\u0013fcR\u0011\u0001\u000b\u0019\u0005\b)v\u000b\t\u00111\u0001L\u0011\u0019\u0011W\u0003)Q\u0005\u0017\u0006QA.Y:u\u000b:$(/\u001f\u0011)\u0005\u0005D\u0006\"B3\u0016\t\u00031\u0017aA4fiR\u0011qM\u001b\t\u0004C!<\u0013BA5\u0007\u0005\u0019y\u0005\u000f^5p]\")1\u000e\u001aa\u00017\u0005\u00191.Z=\t\u000b5,B\u0011\t8\u0002\u0007A,H\u000fF\u0002h_BDQa\u001b7A\u0002mAQ!\u001d7A\u0002\u001d\nQA^1mk\u0016DQa]\u000b\u0005BQ\faA]3n_Z,GCA4v\u0011\u0015Y'\u000f1\u0001\u001c\u0011\u00159X\u0003\"\u0001y\u0003!!\u0003\u000f\\;tI\u0015\fHC\u0001'z\u0011\u0015Qh\u000f1\u0001|\u0003\tYg\u000f\u0005\u0003\"yn9\u0013BA?\u0007\u0005\u0019!V\u000f\u001d7fe!2ao`A\u0003\u0003\u0013\u00012!IA\u0001\u0013\r\t\u0019A\u0002\u0002\u0015I\u0016\u0004(/Z2bi\u0016$wJ^3se&$\u0017N\\4\"\u0005\u0005\u001d\u0011\u0001P\u0016>AMDw.\u001e7eA9|G\u000f\t2fA=4XM\u001d:jI\u0012,g\u000eI:pA%$\be\u001d;bsN\u00043m\u001c8tSN$XM\u001c;!o&$\b\u000e\t9vi:\n#!a\u0003\u0002\rIr\u0013'\r\u00181\u0011\u001d\ty!\u0006C\u0001\u0003#\t\u0011\u0002J7j]V\u001cH%Z9\u0015\u00071\u000b\u0019\u0002\u0003\u0004l\u0003\u001b\u0001\ra\u0007\u0015\b\u0003\u001by\u0018qCA\u0005C\t\tI\"A .{\u0001\u001a\bn\\;mI\u0002rw\u000e\u001e\u0011cK\u0002zg/\u001a:sS\u0012$WM\u001c\u0011t_\u0002JG\u000fI:uCf\u001c\beY8og&\u001cH/\u001a8uA]LG\u000f\u001b\u0011sK6|g/\u001a\u0018\t\u000f\u0005uQ\u0003\"\u0001\u0002 \u0005A\u0011\u000e^3sCR|'/\u0006\u0002\u0002\"A)\u00111EA\u0013w6\tA!C\u0002\u0002(\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0004\u0007\u0003W)\u0002\"!\f\u0003\u0019\u0019KG\u000e^3sK\u0012\\U-_:\u0014\t\u0005%\u0012q\u0006\t\u0004\u0019\u0006E\u0012\u0002BA\u0016\u0003gI!a\f\u0003\t\u0017\u0005]\u0012\u0011\u0006B\u0001B\u0003%\u0011\u0011H\u0001\u0002aB1\u0011%a\u000f\u001c\u0003\u007fI1!!\u0010\u0007\u0005%1UO\\2uS>t\u0017\u0007E\u0002\"\u0003\u0003J1!a\u0011\u0007\u0005\u001d\u0011un\u001c7fC:DqaOA\u0015\t\u0003\t9\u0005\u0006\u0003\u0002J\u0005-\u0003c\u0001'\u0002*!A\u0011qGA#\u0001\u0004\tI\u0004C\u0004?\u0003S!\t%a\u0014\u0016\u0005\u0005E\u0003\u0003\u0002\u0006\u00167\u0001Bq!!\u0016\u0016\t\u0003\n9&\u0001\u0006gS2$XM]&fsN$B!!\u0017\u0002^A1\u00111EA.7\u001dJ!\u0001\f\u0003\t\u0011\u0005]\u00121\u000ba\u0001\u0003s1a!!\u0019\u0016\u0011\u0005\r$\u0001D'baB,GMV1mk\u0016\u001cX\u0003BA3\u0003[\u001aB!a\u0018\u0002hA)A*!\u001b\u0002l%!\u0011\u0011MA\u001a!\ra\u0012Q\u000e\u0003\b\u0003_\nyF1\u0001 \u0005\u0005\u0019\u0005bCA:\u0003?\u0012\t\u0011)A\u0005\u0003k\n\u0011A\u001a\t\u0007C\u0005mr%a\u001b\t\u000fm\ny\u0006\"\u0001\u0002zQ!\u00111PA?!\u0015a\u0015qLA6\u0011!\t\u0019(a\u001eA\u0002\u0005U\u0004b\u0002 \u0002`\u0011\u0005\u0013q\n\u0005\b\u0003\u0007+B\u0011IAC\u0003%i\u0017\r\u001d,bYV,7/\u0006\u0003\u0002\b\u00065E\u0003BAE\u0003\u001f\u0003r!a\t\u0002\\m\tY\tE\u0002\u001d\u0003\u001b#q!a\u001c\u0002\u0002\n\u0007q\u0004\u0003\u0005\u0002t\u0005\u0005\u0005\u0019AAI!\u0019\t\u00131H\u0014\u0002\f\u001a1\u0011QS\u000b\t\u0003/\u0013Q\u0002R3gCVdGoS3z'\u0016$8\u0003BAJ\u00033\u00032\u0001TAN\u0013\u0011\t)*a\r\t\u000fm\n\u0019\n\"\u0001\u0002 R\u0011\u0011\u0011\u0015\t\u0004\u0019\u0006M\u0005b\u0002 \u0002\u0014\u0012\u0005\u0013QU\u000b\u0003\u0003O\u0003BACAU7%\u0019\u00111\u0016\u0002\u0003\u001b1Kgn[3e\u0011\u0006\u001c\bnU3u\u0011\u001d\ty+\u0006C!\u0003c\u000baa[3z'\u0016$XCAAZ!\u0015\t\u0019#!.\u001c\u0013\r\t9\f\u0002\u0002\u0004'\u0016$\bbBA^+\u0011\u0005\u0013QX\u0001\rW\u0016L8/\u0013;fe\u0006$xN]\u000b\u0003\u0003\u007f\u0003R!a\t\u0002&mAq!a1\u0016\t\u0003\n)-\u0001\bwC2,Xm]%uKJ\fGo\u001c:\u0016\u0005\u0005\u001d\u0007#BA\u0012\u0003K9\u0003bBAf+\u0011\u0005\u0013QZ\u0001\bM>\u0014X-Y2i+\u0011\ty-a6\u0015\u0007A\u000b\t\u000e\u0003\u0005\u0002t\u0005%\u0007\u0019AAj!\u0019\t\u00131H>\u0002VB\u0019A$a6\u0005\u000f\u0005e\u0017\u0011\u001ab\u0001?\t\tQ\u000bC\u0004\u0002^V!\t&a8\u0002\u0019\u0019|'/Z1dQ\u0016sGO]=\u0016\t\u0005\u0005\u0018\u0011\u001e\u000b\u0004!\u0006\r\b\u0002CA:\u00037\u0004\r!!:\u0011\r\u0005\nYdSAt!\ra\u0012\u0011\u001e\u0003\b\u00033\fYN1\u0001 \u0011\u001d\ti/\u0006C\t\u0003_\fab\u0019:fCR,g*Z<F]R\u0014\u00180\u0006\u0003\u0002r\u0006eH#B&\u0002t\u0006U\bBB6\u0002l\u0002\u00071\u0004C\u0004r\u0003W\u0004\r!a>\u0011\u0007q\tI\u0010B\u0004\u0002|\u0006-(\u0019A\u0010\u0003\u0005\t\u000b\u0004bBA��+\u0011\u0005#\u0011A\u0001\u0006G2,\u0017M\u001d\u000b\u0002!\"9!QA\u000b\u0005\n\t\u001d\u0011aC<sSR,wJ\u00196fGR$2\u0001\u0015B\u0005\u0011!\u0011YAa\u0001A\u0002\t5\u0011aA8viB!!q\u0002B\r\u001b\t\u0011\tB\u0003\u0003\u0003\u0014\tU\u0011AA5p\u0015\t\u00119\"\u0001\u0003kCZ\f\u0017\u0002\u0002B\u000e\u0005#\u0011!c\u00142kK\u000e$x*\u001e;qkR\u001cFO]3b[\"9!qD\u000b\u0005\n\t\u0005\u0012A\u0003:fC\u0012|%M[3diR\u0019\u0001Ka\t\t\u0011\t\u0015\"Q\u0004a\u0001\u0005O\t!!\u001b8\u0011\t\t=!\u0011F\u0005\u0005\u0005W\u0011\tBA\tPE*,7\r^%oaV$8\u000b\u001e:fC6Dc!\u0006B\u0018c\nU\u0002cA\u0011\u00032%\u0019!1\u0007\u0004\u0003!M+'/[1m-\u0016\u00148/[8o+&#e$A\u0001\t\rmZA\u0011\u0001B\u001d)\u0005I\u0001b\u0002B\u001f\u0017\u0011\r!qH\u0001\rG\u0006t')^5mI\u001a\u0013x.\\\u000b\u0007\u0005\u0003\u0012IF!\u0018\u0016\u0005\t\r\u0003#C\b\u0003F\t%#Q\u000bB0\u0013\r\u00119\u0005\u0005\u0002\r\u0007\u0006t')^5mI\u001a\u0013x.\u001c\t\u0005\u0005\u0017\u0012i%D\u0001\f\u0013\u0011\u0011yE!\u0015\u0003\t\r{G\u000e\\\u0005\u0004\u0005'\u0002\"!D$f]6\u000b\u0007OR1di>\u0014\u0018\u0010\u0005\u0004\"y\n]#1\f\t\u00049\teCA\u0002\u0010\u0003<\t\u0007q\u0004E\u0002\u001d\u0005;\"a!\u000bB\u001e\u0005\u0004y\u0002C\u0002\u0006\u0016\u0005/\u0012Y\u0006\u0003\u0004?\u0017\u0011\u0005!1M\u000b\u0007\u0005K\u0012YGa\u001c\u0016\u0005\t\u001d\u0004C\u0002\u0006\u0016\u0005S\u0012i\u0007E\u0002\u001d\u0005W\"aA\bB1\u0005\u0004y\u0002c\u0001\u000f\u0003p\u00111\u0011F!\u0019C\u0002}A\u0011Ba\u001d\f\u0003\u0003%IA!\u001e\u0002\u0017I,\u0017\r\u001a*fg>dg/\u001a\u000b\u0003\u0005o\u0002BA!\u001f\u0003��5\u0011!1\u0010\u0006\u0005\u0005{\u0012)\"\u0001\u0003mC:<\u0017\u0002\u0002BA\u0005w\u0012aa\u00142kK\u000e$\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashMap.class */
public class LinkedHashMap<A, B> extends AbstractMap<A, B> implements HashTable<A, LinkedEntry<A, B>>, Serializable {
    public static final long serialVersionUID = 1;
    private transient int _loadFactor;
    private transient LinkedEntry<A, B> firstEntry = null;
    private transient LinkedEntry<A, B> lastEntry = null;
    private transient int seedvalue;
    private transient int[] sizemap;
    private transient HashEntry<Object, HashEntry>[] table;
    private transient int tableSize;
    private transient int threshold;

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashMap$DefaultKeySet.class */
    public class DefaultKeySet extends MapLike<A, B, LinkedHashMap<A, B>>.DefaultKeySet {
        public DefaultKeySet(LinkedHashMap<A, B> linkedHashMap) {
            super(linkedHashMap);
        }

        @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public LinkedHashSet<A> empty() {
            return LinkedHashSet$.MODULE$.empty();
        }

        public /* synthetic */ LinkedHashMap scala$collection$mutable$LinkedHashMap$DefaultKeySet$$$outer() {
            return (LinkedHashMap) this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashMap$FilteredKeys.class */
    public class FilteredKeys extends MapLike<A, B, LinkedHashMap<A, B>>.FilteredKeys {
        public FilteredKeys(LinkedHashMap<A, B> linkedHashMap, Function1<A, Object> function1) {
            super(linkedHashMap, function1);
        }

        @Override // scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
        public LinkedHashMap<A, Nothing$> empty() {
            return LinkedHashMap$.MODULE$.empty();
        }

        public /* synthetic */ LinkedHashMap scala$collection$mutable$LinkedHashMap$FilteredKeys$$$outer() {
            return (LinkedHashMap) this.$outer;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedHashMap$MappedValues.class */
    public class MappedValues<C> extends MapLike<A, B, LinkedHashMap<A, B>>.MappedValues<C> {
        public MappedValues(LinkedHashMap<A, B> linkedHashMap, Function1<B, C> function1) {
            super(linkedHashMap, function1);
        }

        @Override // scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
        public LinkedHashMap<A, Nothing$> empty() {
            return LinkedHashMap$.MODULE$.empty();
        }

        public /* synthetic */ LinkedHashMap scala$collection$mutable$LinkedHashMap$MappedValues$$$outer() {
            return (LinkedHashMap) this.$outer;
        }
    }

    public LinkedHashMap() {
        HashTable.HashUtils.Cclass.$init$(this);
        HashTable.Cclass.$init$(this);
    }

    public static <A, B> CanBuildFrom<LinkedHashMap<?, ?>, Tuple2<A, B>, LinkedHashMap<A, B>> canBuildFrom() {
        return LinkedHashMap$.MODULE$.canBuildFrom();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        firstEntry_$eq(null);
        lastEntry_$eq(null);
        init(objectInputStream, new LinkedHashMap$$anonfun$readObject$1(this, objectInputStream));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        serializeTo(objectOutputStream, new LinkedHashMap$$anonfun$writeObject$1(this, objectOutputStream));
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    public LinkedHashMap<A, B> $minus$eq(A a) {
        remove(a);
        return this;
    }

    @Override // scala.collection.mutable.MapLike
    public LinkedHashMap<A, B> $plus$eq(Tuple2<A, B> tuple2) {
        put(tuple2.mo269_1(), tuple2.mo268_2());
        return this;
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

    @Override // scala.collection.mutable.HashTable
    public boolean alwaysInitSizeMap() {
        return HashTable.Cclass.alwaysInitSizeMap(this);
    }

    @Override // scala.collection.mutable.HashTable
    public int calcSizeMapSize(int i) {
        return HashTable.Cclass.calcSizeMapSize(this, i);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        clearTable();
        firstEntry_$eq(null);
        lastEntry_$eq(null);
    }

    @Override // scala.collection.mutable.HashTable
    public void clearTable() {
        HashTable.Cclass.clearTable(this);
    }

    @Override // scala.collection.mutable.HashTable
    public <B1> LinkedEntry<A, B> createNewEntry(A a, B1 b1) {
        LinkedEntry<A, B> linkedEntry = new LinkedEntry<>(a, b1);
        if (firstEntry() == null) {
            firstEntry_$eq(linkedEntry);
        } else {
            lastEntry().later_$eq(linkedEntry);
            linkedEntry.earlier_$eq(lastEntry());
        }
        lastEntry_$eq(linkedEntry);
        return linkedEntry;
    }

    @Override // scala.collection.mutable.HashTable
    public boolean elemEquals(A a, A a2) {
        return HashTable.Cclass.elemEquals(this, a, a2);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public int elemHashCode(A a) {
        return HashTable.HashUtils.Cclass.elemHashCode(this, a);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public LinkedHashMap<A, B> empty() {
        return LinkedHashMap$.MODULE$.empty();
    }

    @Override // scala.collection.mutable.HashTable
    public Iterator<LinkedEntry<A, B>> entriesIterator() {
        return HashTable.Cclass.entriesIterator(this);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Map<A, B> filterKeys(Function1<A, Object> function1) {
        return new FilteredKeys(this, function1);
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry findEntry(Object obj) {
        return HashTable.Cclass.findEntry(this, obj);
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry findOrAddEntry(Object obj, Object obj2) {
        return HashTable.Cclass.findOrAddEntry(this, obj, obj2);
    }

    public LinkedEntry<A, B> firstEntry() {
        return this.firstEntry;
    }

    public void firstEntry_$eq(LinkedEntry<A, B> linkedEntry) {
        this.firstEntry = linkedEntry;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
        LinkedEntry<A, B> firstEntry = firstEntry();
        while (true) {
            LinkedEntry<A, B> linkedEntry = firstEntry;
            if (linkedEntry != null) {
                function1.apply(new Tuple2<>(linkedEntry.key(), linkedEntry.value()));
                firstEntry = linkedEntry.later();
            } else {
                return;
            }
        }
    }

    @Override // scala.collection.mutable.HashTable
    public <U> void foreachEntry(Function1<LinkedEntry<A, B>, U> function1) {
        LinkedEntry<A, B> firstEntry = firstEntry();
        while (true) {
            LinkedEntry<A, B> linkedEntry = firstEntry;
            if (linkedEntry != null) {
                function1.apply(linkedEntry);
                firstEntry = linkedEntry.later();
            } else {
                return;
            }
        }
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<B> get(A a) {
        LinkedEntry linkedEntry = (LinkedEntry) findEntry(a);
        return linkedEntry == null ? None$.MODULE$ : new Some(linkedEntry.value());
    }

    @Override // scala.collection.mutable.HashTable
    public HashTable.Contents<A, LinkedEntry<A, B>> hashTableContents() {
        return HashTable.Cclass.hashTableContents(this);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int improve(int i, int i2) {
        return HashTable.HashUtils.Cclass.improve(this, i, i2);
    }

    @Override // scala.collection.mutable.HashTable
    public final int index(int i) {
        return HashTable.Cclass.index(this, i);
    }

    @Override // scala.collection.mutable.HashTable
    public void init(ObjectInputStream objectInputStream, Function0<LinkedEntry<A, B>> function0) {
        HashTable.Cclass.init(this, objectInputStream, function0);
    }

    @Override // scala.collection.mutable.HashTable
    public void initWithContents(HashTable.Contents<A, LinkedEntry<A, B>> contents) {
        HashTable.Cclass.initWithContents(this, contents);
    }

    @Override // scala.collection.mutable.HashTable
    public int initialSize() {
        return HashTable.Cclass.initialSize(this);
    }

    @Override // scala.collection.mutable.HashTable
    public boolean isSizeMapDefined() {
        return HashTable.Cclass.isSizeMapDefined(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<A, B>> iterator() {
        return new AbstractIterator<Tuple2<A, B>>(this) { // from class: scala.collection.mutable.LinkedHashMap$$anon$1
            private LinkedEntry<A, B> cur;

            {
                this.cur = this.firstEntry();
            }

            private LinkedEntry<A, B> cur() {
                return this.cur;
            }

            private void cur_$eq(LinkedEntry<A, B> linkedEntry) {
                this.cur = linkedEntry;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return cur() != null;
            }

            @Override // scala.collection.Iterator
            public Tuple2<A, B> next() {
                Tuple2 tuple2;
                if (hasNext()) {
                    tuple2 = new Tuple2(cur().key(), cur().value());
                    cur_$eq(cur().later());
                } else {
                    tuple2 = (Tuple2) Iterator$.MODULE$.empty().next();
                }
                return tuple2;
            }
        };
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Set<A> keySet() {
        return new DefaultKeySet(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<A> keysIterator() {
        return new AbstractIterator<A>(this) { // from class: scala.collection.mutable.LinkedHashMap$$anon$2
            private LinkedEntry<A, B> cur;

            {
                this.cur = this.firstEntry();
            }

            private LinkedEntry<A, B> cur() {
                return this.cur;
            }

            private void cur_$eq(LinkedEntry<A, B> linkedEntry) {
                this.cur = linkedEntry;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return cur() != null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.Iterator
            public A next() {
                Nothing$ nothing$;
                if (hasNext()) {
                    nothing$ = cur().key();
                    cur_$eq(cur().later());
                } else {
                    nothing$ = Iterator$.MODULE$.empty().next();
                }
                return nothing$;
            }
        };
    }

    public LinkedEntry<A, B> lastEntry() {
        return this.lastEntry;
    }

    public void lastEntry_$eq(LinkedEntry<A, B> linkedEntry) {
        this.lastEntry = linkedEntry;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public <C> Map<A, C> mapValues(Function1<B, C> function1) {
        return new MappedValues(this, function1);
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

    @Override // scala.collection.mutable.HashTable
    public void printSizeMap() {
        HashTable.Cclass.printSizeMap(this);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public Option<B> put(A a, B b) {
        None$ none$;
        LinkedEntry linkedEntry = (LinkedEntry) findOrAddEntry(a, b);
        if (linkedEntry == null) {
            none$ = None$.MODULE$;
        } else {
            Object value = linkedEntry.value();
            linkedEntry.value_$eq(b);
            none$ = new Some(value);
        }
        return none$;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public Option<B> remove(A a) {
        None$ none$;
        LinkedEntry linkedEntry = (LinkedEntry) removeEntry(a);
        if (linkedEntry == null) {
            none$ = None$.MODULE$;
        } else {
            if (linkedEntry.earlier() == null) {
                firstEntry_$eq(linkedEntry.later());
            } else {
                linkedEntry.earlier().later_$eq(linkedEntry.later());
            }
            if (linkedEntry.later() == null) {
                lastEntry_$eq(linkedEntry.earlier());
            } else {
                linkedEntry.later().earlier_$eq(linkedEntry.earlier());
            }
            none$ = new Some(linkedEntry.value());
        }
        return none$;
    }

    @Override // scala.collection.mutable.HashTable
    public HashEntry removeEntry(Object obj) {
        return HashTable.Cclass.removeEntry(this, obj);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
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

    @Override // scala.collection.mutable.HashTable
    public void serializeTo(ObjectOutputStream objectOutputStream, Function1<LinkedEntry<A, B>, BoxedUnit> function1) {
        HashTable.Cclass.serializeTo(this, objectOutputStream, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
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

    @Override // scala.collection.mutable.HashTable
    public HashEntry<A, LinkedEntry<A, B>>[] table() {
        return (HashEntry<A, LinkedEntry<A, B>>[]) this.table;
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
    public void table_$eq(HashEntry<A, LinkedEntry<A, B>>[] hashEntryArr) {
        this.table = hashEntryArr;
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

    @Override // scala.collection.mutable.HashTable
    public final int totalSizeMapBuckets() {
        return HashTable.Cclass.totalSizeMapBuckets(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<B> valuesIterator() {
        return new AbstractIterator<B>(this) { // from class: scala.collection.mutable.LinkedHashMap$$anon$3
            private LinkedEntry<A, B> cur;

            {
                this.cur = this.firstEntry();
            }

            private LinkedEntry<A, B> cur() {
                return this.cur;
            }

            private void cur_$eq(LinkedEntry<A, B> linkedEntry) {
                this.cur = linkedEntry;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return cur() != null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.Iterator
            public B next() {
                Nothing$ nothing$;
                if (hasNext()) {
                    nothing$ = cur().value();
                    cur_$eq(cur().later());
                } else {
                    nothing$ = Iterator$.MODULE$.empty().next();
                }
                return nothing$;
            }
        };
    }
}
