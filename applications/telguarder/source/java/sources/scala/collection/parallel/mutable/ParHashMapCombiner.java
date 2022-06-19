package scala.collection.parallel.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Objects;
import scala.Array$;
import scala.Function0;
import scala.Function1;
import scala.Option;
import scala.Predef$;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.mutable.DefaultEntry;
import scala.collection.mutable.HashEntry;
import scala.collection.mutable.HashTable;
import scala.collection.mutable.HashTable$;
import scala.collection.mutable.UnrolledBuffer;
import scala.collection.parallel.BucketCombiner;
import scala.collection.parallel.Task;
import scala.collection.parallel.package$;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
import scala.runtime.VolatileObjectRef;
@ScalaSignature(bytes = "\u0006\u0001\u0005\rhAB\u0001\u0003\u0003\u0003\u0011!B\u0001\nQCJD\u0015m\u001d5NCB\u001cu.\u001c2j]\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0011A\f'/\u00197mK2T!a\u0002\u0005\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\n\u0003\u0015\u00198-\u00197b+\rYa#I\n\u0004\u00011i\u0003CB\u0007\u000f!\r:C&D\u0001\u0005\u0013\tyAA\u0001\bCk\u000e\\W\r^\"p[\nLg.\u001a:\u0011\tE\u0011B\u0003I\u0007\u0002\u0011%\u00111\u0003\u0003\u0002\u0007)V\u0004H.\u001a\u001a\u0011\u0005U1B\u0002\u0001\u0003\u0006/\u0001\u0011\r!\u0007\u0002\u0002\u0017\u000e\u0001\u0011C\u0001\u000e\u001e!\t\t2$\u0003\u0002\u001d\u0011\t9aj\u001c;iS:<\u0007CA\t\u001f\u0013\ty\u0002BA\u0002B]f\u0004\"!F\u0011\u0005\u000b\t\u0002!\u0019A\r\u0003\u0003Y\u0003B\u0001J\u0013\u0015A5\t!!\u0003\u0002'\u0005\tQ\u0001+\u0019:ICNDW*\u00199\u0011\t!RC\u0003I\u0007\u0002S)\u00111AB\u0005\u0003W%\u0012A\u0002R3gCVdG/\u00128uef\u0004B\u0001\n\u0001\u0015AA\u0019aF\u000f\u000b\u000f\u0005=BdB\u0001\u00198\u001d\t\tdG\u0004\u00023k5\t1G\u0003\u000251\u00051AH]8pizJ\u0011!C\u0005\u0003\u000f!I!a\u0001\u0004\n\u0005eJ\u0013!\u0003%bg\"$\u0016M\u00197f\u0013\tYDHA\u0005ICNDW\u000b^5mg*\u0011\u0011(\u000b\u0005\t}\u0001\u0011)\u0019!C\u0005\u007f\u0005yA/\u00192mK2{\u0017\r\u001a$bGR|'/F\u0001A!\t\t\u0012)\u0003\u0002C\u0011\t\u0019\u0011J\u001c;\t\u0011\u0011\u0003!\u0011!Q\u0001\n\u0001\u000b\u0001\u0003^1cY\u0016du.\u00193GC\u000e$xN\u001d\u0011\t\u000b\u0019\u0003A\u0011A$\u0002\rqJg.\u001b;?)\ta\u0003\nC\u0003?\u000b\u0002\u0007\u0001\tC\u0004K\u0001\t\u0007I\u0011B \u0002\u00159|g.\\1tW2,g\u000e\u0003\u0004M\u0001\u0001\u0006I\u0001Q\u0001\f]>tW.Y:lY\u0016t\u0007\u0005C\u0004O\u0001\t\u0007I\u0011B \u0002\u0013M,W\r\u001a<bYV,\u0007B\u0002)\u0001A\u0003%\u0001)\u0001\u0006tK\u0016$g/\u00197vK\u0002BQA\u0015\u0001\u0005\u0002M\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0003)Vk\u0011\u0001\u0001\u0005\u0006-F\u0003\r\u0001E\u0001\u0005K2,W\u000eC\u0003Y\u0001\u0011\u0005\u0011,\u0001\u0004sKN,H\u000e\u001e\u000b\u0002G\u0019!1\f\u0001\u0001]\u0005)1\u0015\u000e\u001c7CY>\u001c7n]\n\u00045v\u0003\u0007CA\t_\u0013\ty\u0006B\u0001\u0004B]f\u0014VM\u001a\t\u0005\u001b\u0005\u00045-\u0003\u0002c\t\t!A+Y:l!\t!&\f\u0003\u0005f5\n\u0005\t\u0015!\u0003g\u0003\u001d\u0011WoY6fiN\u00042!E4j\u0013\tA\u0007BA\u0003BeJ\f\u0017\u0010E\u0002k[\u001er!\u0001K6\n\u00051L\u0013AD+oe>dG.\u001a3Ck\u001a4WM]\u0005\u0003]>\u0014\u0001\"\u00168s_2dW\r\u001a\u0006\u0003Y&B\u0001\"\u001d.\u0003\u0002\u0003\u0006IA]\u0001\u0006i\u0006\u0014G.\u001a\t\u0003)N4Q\u0001\u001e\u0001\u0001\u0001U\u0014q\"\u00113eS:<\u0007*Y:i)\u0006\u0014G.Z\n\u0004gv3\b\u0003\u0002\u0015x)\u001dJ!\u0001_\u0015\u0003\u0013!\u000b7\u000f\u001b+bE2,\u0007\u0002\u0003>t\u0005\u0003\u0005\u000b\u0011\u0002!\u0002\u00119,X.\u001a7f[ND\u0001\u0002`:\u0003\u0002\u0003\u0006I\u0001Q\u0001\u0003Y\u001aD\u0001B`:\u0003\u0002\u0003\u0006I\u0001Q\u0001\u000b?N,W\r\u001a<bYV,\u0007B\u0002$t\t\u0003\t\t\u0001F\u0004s\u0003\u0007\t)!a\u0002\t\u000bi|\b\u0019\u0001!\t\u000bq|\b\u0019\u0001!\t\u000by|\b\u0019\u0001!\t\u000f\u0005-1\u000f\"\u0001\u0002\u000e\u000591/\u001a;TSj,G\u0003BA\b\u0003+\u00012!EA\t\u0013\r\t\u0019\u0002\u0003\u0002\u0005+:LG\u000fC\u0004\u0002\u0018\u0005%\u0001\u0019\u0001!\u0002\u0005MT\bbBA\u000eg\u0012\u0005\u0011QD\u0001\fS:\u001cXM\u001d;F]R\u0014\u0018\u0010\u0006\u0003\u0002 \u0005\u0015\u0002cA\t\u0002\"%\u0019\u00111\u0005\u0005\u0003\u000f\t{w\u000e\\3b]\"9\u0011qEA\r\u0001\u00049\u0013!A3\t\u000f\u0005-2\u000f\"\u0005\u0002.\u0005q1M]3bi\u0016tUm^#oiJLX\u0003BA\u0018\u0003w!RAGA\u0019\u0003kAq!a\r\u0002*\u0001\u0007A#A\u0002lKfD\u0001\"a\u000e\u0002*\u0001\u0007\u0011\u0011H\u0001\u0002qB\u0019Q#a\u000f\u0005\u000f\u0005u\u0012\u0011\u0006b\u00013\t\t\u0001\fC\u0005\u0002Bi\u0013\t\u0011)A\u0005\u0001\u00061qN\u001a4tKRD\u0011\"!\u0012[\u0005\u0003\u0005\u000b\u0011\u0002!\u0002\u000f!|w/\\1os\"1aI\u0017C\u0001\u0003\u0013\"\u0012bYA&\u0003\u001b\ny%!\u0015\t\r\u0015\f9\u00051\u0001g\u0011\u0019\t\u0018q\ta\u0001e\"9\u0011\u0011IA$\u0001\u0004\u0001\u0005bBA#\u0003\u000f\u0002\r\u0001\u0011\u0005\b1j\u0003\r\u0011\"\u0001@\u0011%\t9F\u0017a\u0001\n\u0003\tI&\u0001\u0006sKN,H\u000e^0%KF$B!a\u0004\u0002\\!I\u0011QLA+\u0003\u0003\u0005\r\u0001Q\u0001\u0004q\u0012\n\u0004bBA15\u0002\u0006K\u0001Q\u0001\be\u0016\u001cX\u000f\u001c;!\u0011\u001d\t)G\u0017C\u0001\u0003O\nA\u0001\\3bMR!\u0011qBA5\u0011!\tY'a\u0019A\u0002\u00055\u0014\u0001\u00029sKZ\u0004B!EA8\u0001&\u0019\u0011\u0011\u000f\u0005\u0003\r=\u0003H/[8o\u0011\u001d\t)H\u0017C\u0005\u0003o\n\u0011BZ5mY\ncwnY6\u0015\u000b\u0001\u000bI(! \t\u000f\u0005m\u00141\u000fa\u0001\u0001\u0006)!\r\\8dW\"9\u0011qPA:\u0001\u0004I\u0017!B3mK6\u001c\bbBAB5\u0012\u0005\u0011QQ\u0001\u0006gBd\u0017\u000e^\u000b\u0003\u0003\u000f\u0003R!!#\u0002\u0010\u000el!!a#\u000b\u0007\u00055e!A\u0005j[6,H/\u00192mK&!\u0011\u0011SAF\u0005\u0011a\u0015n\u001d;\t\u000f\u0005U%\f\"\u0011\u0002\u0018\u0006)Q.\u001a:hKR!\u0011qBAM\u0011\u001d\tY*a%A\u0002\r\fA\u0001\u001e5bi\"9\u0011q\u0014.\u0005\u0002\u0005\u0005\u0016AE:i_VdGm\u00159mSR4UO\u001d;iKJ,\"!a\b\b\u0011\u0005\u0015&\u0001#\u0001\u0005\u0003O\u000b!\u0003U1s\u0011\u0006\u001c\b.T1q\u0007>l'-\u001b8feB\u0019A%!+\u0007\u000f\u0005\u0011\u0001\u0012\u0001\u0003\u0002,N\u0019\u0011\u0011V/\t\u000f\u0019\u000bI\u000b\"\u0001\u00020R\u0011\u0011q\u0015\u0005\u000b\u0003g\u000bIK1A\u0005\u0002\ty\u0014\u0001\u00053jg\u000e\u0014\u0018.\\5oC:$(-\u001b;t\u0011!\t9,!+!\u0002\u0013\u0001\u0015!\u00053jg\u000e\u0014\u0018.\\5oC:$(-\u001b;tA!Q\u00111XAU\u0005\u0004%\tAA \u0002\u00139,XN\u00197pG.\u001c\b\u0002CA`\u0003S\u0003\u000b\u0011\u0002!\u0002\u00159,XN\u00197pG.\u001c\b\u0005\u0003\u0006\u0002D\u0006%&\u0019!C\u0001\u0005}\n\u0001\u0003Z5tGJLW.\u001b8b]Rl\u0017m]6\t\u0011\u0005\u001d\u0017\u0011\u0016Q\u0001\n\u0001\u000b\u0011\u0003Z5tGJLW.\u001b8b]Rl\u0017m]6!\u0011)\tY-!+C\u0002\u0013\u0005!aP\u0001\u000e]>tW.Y:lY\u0016tw\r\u001e5\t\u0011\u0005=\u0017\u0011\u0016Q\u0001\n\u0001\u000baB\\8o[\u0006\u001c8\u000e\\3oORD\u0007\u0005\u0003\u0005\u0002T\u0006%F\u0011AAk\u0003\u0015\t\u0007\u000f\u001d7z+\u0019\t9.!8\u0002bV\u0011\u0011\u0011\u001c\t\u0007I\u0001\tY.a8\u0011\u0007U\ti\u000e\u0002\u0004\u0018\u0003#\u0014\r!\u0007\t\u0004+\u0005\u0005HA\u0002\u0012\u0002R\n\u0007\u0011\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMapCombiner.class */
public abstract class ParHashMapCombiner<K, V> extends BucketCombiner<Tuple2<K, V>, ParHashMap<K, V>, DefaultEntry<K, V>, ParHashMapCombiner<K, V>> implements HashTable.HashUtils<K> {
    private final int nonmasklen = ParHashMapCombiner$.MODULE$.nonmasklength();
    private final int seedvalue = 27;
    private final int tableLoadFactor;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMapCombiner$AddingHashTable.class */
    public class AddingHashTable implements HashTable<K, DefaultEntry<K, V>> {
        public final /* synthetic */ ParHashMapCombiner $outer;
        private transient int _loadFactor;
        private transient int seedvalue;
        private transient int[] sizemap;
        private transient HashEntry<Object, HashEntry>[] table;
        private transient int tableSize;
        private transient int threshold;

        public AddingHashTable(ParHashMapCombiner<K, V> parHashMapCombiner, int i, int i2, int i3) {
            Objects.requireNonNull(parHashMapCombiner);
            this.$outer = parHashMapCombiner;
            HashTable.HashUtils.Cclass.$init$(this);
            HashTable.Cclass.$init$(this);
            _loadFactor_$eq(i2);
            table_$eq(new HashEntry[HashTable$.MODULE$.capacity(HashTable$.MODULE$.sizeForThreshold(_loadFactor(), i))]);
            tableSize_$eq(0);
            seedvalue_$eq(i3);
            threshold_$eq(HashTable$.MODULE$.newThreshold(_loadFactor(), table().length));
            sizeMapInit(table().length);
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

        @Override // scala.collection.mutable.HashTable
        public void clearTable() {
            HashTable.Cclass.clearTable(this);
        }

        @Override // scala.collection.mutable.HashTable
        public <X> Nothing$ createNewEntry(K k, X x) {
            return Predef$.MODULE$.$qmark$qmark$qmark();
        }

        @Override // scala.collection.mutable.HashTable
        public boolean elemEquals(K k, K k2) {
            return HashTable.Cclass.elemEquals(this, k, k2);
        }

        @Override // scala.collection.mutable.HashTable.HashUtils
        public int elemHashCode(K k) {
            return HashTable.HashUtils.Cclass.elemHashCode(this, k);
        }

        @Override // scala.collection.mutable.HashTable
        public Iterator<DefaultEntry<K, V>> entriesIterator() {
            return HashTable.Cclass.entriesIterator(this);
        }

        @Override // scala.collection.mutable.HashTable
        public HashEntry findEntry(Object obj) {
            return HashTable.Cclass.findEntry(this, obj);
        }

        @Override // scala.collection.mutable.HashTable
        public HashEntry findOrAddEntry(Object obj, Object obj2) {
            return HashTable.Cclass.findOrAddEntry(this, obj, obj2);
        }

        @Override // scala.collection.mutable.HashTable
        public <U> void foreachEntry(Function1<DefaultEntry<K, V>, U> function1) {
            HashTable.Cclass.foreachEntry(this, function1);
        }

        @Override // scala.collection.mutable.HashTable
        public HashTable.Contents<K, DefaultEntry<K, V>> hashTableContents() {
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
        public void init(ObjectInputStream objectInputStream, Function0<DefaultEntry<K, V>> function0) {
            HashTable.Cclass.init(this, objectInputStream, function0);
        }

        @Override // scala.collection.mutable.HashTable
        public void initWithContents(HashTable.Contents<K, DefaultEntry<K, V>> contents) {
            HashTable.Cclass.initWithContents(this, contents);
        }

        @Override // scala.collection.mutable.HashTable
        public int initialSize() {
            return HashTable.Cclass.initialSize(this);
        }

        public boolean insertEntry(DefaultEntry<K, V> defaultEntry) {
            boolean z;
            int index = index(elemHashCode(defaultEntry.key()));
            DefaultEntry defaultEntry2 = (DefaultEntry) table()[index];
            DefaultEntry defaultEntry3 = defaultEntry2;
            while (true) {
                boolean z2 = true;
                if (defaultEntry3 == null) {
                    break;
                }
                Object key = defaultEntry3.key();
                K key2 = defaultEntry.key();
                if (key != key2) {
                    z2 = key == null ? false : key instanceof Number ? BoxesRunTime.equalsNumObject((Number) key, key2) : key instanceof Character ? BoxesRunTime.equalsCharObject((Character) key, key2) : key.equals(key2);
                }
                if (z2) {
                    defaultEntry3 = null;
                    index = -1;
                } else {
                    defaultEntry3 = (DefaultEntry) defaultEntry3.next();
                }
            }
            if (index != -1) {
                defaultEntry.next_$eq(defaultEntry2);
                table()[index] = defaultEntry;
                nnSizeMapAdd(index);
                z = true;
            } else {
                z = false;
            }
            return z;
        }

        @Override // scala.collection.mutable.HashTable
        public boolean isSizeMapDefined() {
            return HashTable.Cclass.isSizeMapDefined(this);
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

        @Override // scala.collection.mutable.HashTable
        public HashEntry removeEntry(Object obj) {
            return HashTable.Cclass.removeEntry(this, obj);
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashMapCombiner$AddingHashTable$$$outer */
        public /* synthetic */ ParHashMapCombiner m83xb13c1e45() {
            return this.$outer;
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
        public void serializeTo(ObjectOutputStream objectOutputStream, Function1<DefaultEntry<K, V>, BoxedUnit> function1) {
            HashTable.Cclass.serializeTo(this, objectOutputStream, function1);
        }

        public void setSize(int i) {
            tableSize_$eq(i);
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
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMapCombiner$FillBlocks.class */
    public class FillBlocks implements Task<Object, ParHashMapCombiner<K, V>.FillBlocks> {
        public final /* synthetic */ ParHashMapCombiner $outer;
        private final UnrolledBuffer.Unrolled<DefaultEntry<K, V>>[] buckets;
        private final int howmany;
        private final int offset;
        private int result = Integer.MIN_VALUE;
        private final ParHashMapCombiner<K, V>.AddingHashTable table;
        private volatile Throwable throwable;

        public FillBlocks(ParHashMapCombiner<K, V> parHashMapCombiner, UnrolledBuffer.Unrolled<DefaultEntry<K, V>>[] unrolledArr, ParHashMapCombiner<K, V>.AddingHashTable addingHashTable, int i, int i2) {
            this.buckets = unrolledArr;
            this.table = addingHashTable;
            this.offset = i;
            this.howmany = i2;
            Objects.requireNonNull(parHashMapCombiner);
            this.$outer = parHashMapCombiner;
            throwable_$eq(null);
        }

        private int fillBlock(int i, UnrolledBuffer.Unrolled<DefaultEntry<K, V>> unrolled) {
            ParHashMapCombiner<K, V>.AddingHashTable addingHashTable = this.table;
            int i2 = 0;
            while (unrolled != null) {
                DefaultEntry<K, V>[] defaultEntryArr = (DefaultEntry[]) unrolled.array();
                int size = unrolled.size();
                int i3 = 0;
                while (i3 < size) {
                    int i4 = i2;
                    if (addingHashTable.insertEntry(defaultEntryArr[i3])) {
                        i4 = i2 + 1;
                    }
                    i3++;
                    i2 = i4;
                }
                unrolled = unrolled.next();
            }
            return i2;
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Object> option) {
            int i = this.offset;
            int i2 = this.howmany;
            result_$eq(0);
            for (int i3 = i; i3 < i2 + i; i3++) {
                result_$eq(result() + fillBlock(i3, this.buckets[i3]));
            }
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((FillBlocks) ((FillBlocks) obj));
        }

        public void merge(ParHashMapCombiner<K, V>.FillBlocks fillBlocks) {
            result_$eq(result() + fillBlocks.result());
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

        /* renamed from: scala$collection$parallel$mutable$ParHashMapCombiner$FillBlocks$$$outer */
        public /* synthetic */ ParHashMapCombiner m82x517b08b1() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return this.howmany > package$.MODULE$.thresholdFromSize(ParHashMapCombiner$.MODULE$.numblocks(), m82x517b08b1().combinerTaskSupport().parallelismLevel());
        }

        @Override // scala.collection.parallel.Task
        public void signalAbort() {
            Task.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.Task
        public List<ParHashMapCombiner<K, V>.FillBlocks> split() {
            int i = this.howmany / 2;
            return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new FillBlocks[]{new FillBlocks(m82x517b08b1(), this.buckets, this.table, this.offset, i), new FillBlocks(m82x517b08b1(), this.buckets, this.table, this.offset + i, this.howmany - i)}));
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParHashMapCombiner(int i) {
        super(ParHashMapCombiner$.MODULE$.numblocks());
        this.tableLoadFactor = i;
        HashTable.HashUtils.Cclass.$init$(this);
    }

    public static <K, V> ParHashMapCombiner<K, V> apply() {
        return ParHashMapCombiner$.MODULE$.apply();
    }

    private int nonmasklen() {
        return this.nonmasklen;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [T, scala.collection.parallel.mutable.ParHashMapCombiner$table$2$] */
    /* renamed from: scala$collection$parallel$mutable$ParHashMapCombiner$$table$1$lzycompute */
    private ParHashMapCombiner$table$2$ m84x3fec1488(VolatileObjectRef volatileObjectRef) {
        synchronized (this) {
            if (volatileObjectRef.elem == 0) {
                volatileObjectRef.elem = new ParHashMapCombiner$table$2$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return (ParHashMapCombiner$table$2$) volatileObjectRef.elem;
    }

    private int seedvalue() {
        return this.seedvalue;
    }

    private int tableLoadFactor() {
        return this.tableLoadFactor;
    }

    public ParHashMapCombiner<K, V> $plus$eq(Tuple2<K, V> tuple2) {
        sz_$eq(m119sz() + 1);
        int improve = improve(elemHashCode(tuple2.mo269_1()), seedvalue()) >>> nonmasklen();
        if (buckets()[improve] == null) {
            buckets()[improve] = new UnrolledBuffer<>(ClassTag$.MODULE$.apply(DefaultEntry.class));
        }
        buckets()[improve].$plus$eq((UnrolledBuffer<DefaultEntry<K, V>>) new DefaultEntry<>(tuple2.mo269_1(), tuple2.mo268_2()));
        return this;
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public int elemHashCode(K k) {
        return HashTable.HashUtils.Cclass.elemHashCode(this, k);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int improve(int i, int i2) {
        return HashTable.HashUtils.Cclass.improve(this, i, i2);
    }

    @Override // scala.collection.mutable.Builder
    public ParHashMap<K, V> result() {
        ParHashMap<K, V> parHashMap;
        if (size() >= ParHashMapCombiner$.MODULE$.numblocks() * sizeMapBucketSize()) {
            AddingHashTable addingHashTable = new AddingHashTable(this, size(), tableLoadFactor(), seedvalue());
            UnrolledBuffer.Unrolled[] unrolledArr = (UnrolledBuffer.Unrolled[]) Predef$.MODULE$.refArrayOps(buckets()).map(new ParHashMapCombiner$$anonfun$4(this), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.apply(UnrolledBuffer.Unrolled.class)));
            addingHashTable.setSize(BoxesRunTime.unboxToInt(combinerTaskSupport().executeAndWaitResult(new FillBlocks(this, unrolledArr, addingHashTable, 0, unrolledArr.length))));
            parHashMap = new ParHashMap<>(addingHashTable.hashTableContents());
        } else {
            VolatileObjectRef<Object> zero = VolatileObjectRef.zero();
            for (int i = 0; i < ParHashMapCombiner$.MODULE$.numblocks(); i++) {
                if (buckets()[i] != null) {
                    buckets()[i].foreach(new ParHashMapCombiner$$anonfun$result$1(this, zero));
                }
            }
            parHashMap = new ParHashMap<>(scala$collection$parallel$mutable$ParHashMapCombiner$$table$1(zero).hashTableContents());
        }
        return parHashMap;
    }

    public final ParHashMapCombiner$table$2$ scala$collection$parallel$mutable$ParHashMapCombiner$$table$1(VolatileObjectRef volatileObjectRef) {
        return volatileObjectRef.elem == 0 ? m84x3fec1488(volatileObjectRef) : (ParHashMapCombiner$table$2$) volatileObjectRef.elem;
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int sizeMapBucketBitSize() {
        return HashTable.HashUtils.Cclass.sizeMapBucketBitSize(this);
    }

    @Override // scala.collection.mutable.HashTable.HashUtils
    public final int sizeMapBucketSize() {
        return HashTable.HashUtils.Cclass.sizeMapBucketSize(this);
    }
}
