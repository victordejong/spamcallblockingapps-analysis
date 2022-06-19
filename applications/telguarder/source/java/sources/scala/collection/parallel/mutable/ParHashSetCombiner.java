package scala.collection.parallel.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Objects;
import scala.Function1;
import scala.MatchError;
import scala.Option;
import scala.Predef$;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.FlatHashTable;
import scala.collection.mutable.FlatHashTable$;
import scala.collection.mutable.UnrolledBuffer;
import scala.collection.mutable.UnrolledBuffer$;
import scala.collection.parallel.BucketCombiner;
import scala.collection.parallel.Task;
import scala.collection.parallel.package$;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.IntRef;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\tuaAB\u0001\u0003\u0003\u0003\u0011!B\u0001\nQCJD\u0015m\u001d5TKR\u001cu.\u001c2j]\u0016\u0014(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0011A\f'/\u00197mK2T!a\u0002\u0005\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\n\u0003\u0015\u00198-\u00197b+\tY!cE\u0002\u0001\u0019\u0015\u0002b!\u0004\b\u0011;\u0005\"S\"\u0001\u0003\n\u0005=!!A\u0004\"vG.,GoQ8nE&tWM\u001d\t\u0003#Ia\u0001\u0001B\u0003\u0014\u0001\t\u0007QCA\u0001U\u0007\u0001\t\"A\u0006\u000e\u0011\u0005]AR\"\u0001\u0005\n\u0005eA!a\u0002(pi\"Lgn\u001a\t\u0003/mI!\u0001\b\u0005\u0003\u0007\u0005s\u0017\u0010E\u0002\u001f?Ai\u0011AA\u0005\u0003A\t\u0011!\u0002U1s\u0011\u0006\u001c\bnU3u!\t9\"%\u0003\u0002$\u0011\t1\u0011I\\=SK\u001a\u00042A\b\u0001\u0011!\r13\u0007\u0005\b\u0003OAr!\u0001K\u0018\u000f\u0005%rcB\u0001\u0016.\u001b\u0005Y#B\u0001\u0017\u0015\u0003\u0019a$o\\8u}%\t\u0011\"\u0003\u0002\b\u0011%\u00111AB\u0005\u0003cI\nQB\u00127bi\"\u000b7\u000f\u001b+bE2,'BA\u0002\u0007\u0013\t!TGA\u0005ICNDW\u000b^5mg*\u0011\u0011G\r\u0005\to\u0001\u0011)\u0019!C\u0005q\u0005yA/\u00192mK2{\u0017\r\u001a$bGR|'/F\u0001:!\t9\"(\u0003\u0002<\u0011\t\u0019\u0011J\u001c;\t\u0011u\u0002!\u0011!Q\u0001\ne\n\u0001\u0003^1cY\u0016du.\u00193GC\u000e$xN\u001d\u0011\t\u000b}\u0002A\u0011\u0001!\u0002\rqJg.\u001b;?)\t!\u0013\tC\u00038}\u0001\u0007\u0011\bC\u0004D\u0001\t\u0007I\u0011\u0002\u001d\u0002\u00159|g.\\1tW2,g\u000e\u0003\u0004F\u0001\u0001\u0006I!O\u0001\f]>tW.Y:lY\u0016t\u0007\u0005C\u0004H\u0001\t\u0007I\u0011\u0002\u001d\u0002\u0013M,W\r\u001a<bYV,\u0007BB%\u0001A\u0003%\u0011(\u0001\u0006tK\u0016$g/\u00197vK\u0002BQa\u0013\u0001\u0005\u00021\u000b\u0001\u0002\n9mkN$S-\u001d\u000b\u0003\u001b:k\u0011\u0001\u0001\u0005\u0006\u001f*\u0003\r\u0001E\u0001\u0005K2,W\u000eC\u0003R\u0001\u0011\u0005!+\u0001\u0004sKN,H\u000e\u001e\u000b\u0002;!)A\u000b\u0001C\u0005+\u0006Y\u0001/\u0019:Q_B,H.\u0019;f+\u00051\u0006cA,Z!9\u0011\u0001\fM\u0007\u0002e%\u0011!,\u000e\u0002\t\u0007>tG/\u001a8ug\")A\f\u0001C\u0005+\u0006Y1/Z9Q_B,H.\u0019;f\r\u0011q\u0006\u0001A0\u0003'\u0005#G-\u001b8h\r2\fG\u000fS1tQR\u000b'\r\\3\u0014\u0007u\u000b\u0003\rE\u0002YCBI!A\u0019\u001a\u0003\u001b\u0019c\u0017\r\u001e%bg\"$\u0016M\u00197f\u0011!!WL!A!\u0002\u0013I\u0014\u0001\u00038v[\u0016dW-\\:\t\u0011\u0019l&\u0011!Q\u0001\ne\n!\u0001\u001c4\t\u0011!l&\u0011!Q\u0001\ne\n1\"\u001b8tK\u0016$g/\u00197vK\")q(\u0018C\u0001UR!1\u000e\\7o!\tiU\fC\u0003eS\u0002\u0007\u0011\bC\u0003gS\u0002\u0007\u0011\bC\u0003iS\u0002\u0007\u0011\bC\u0003q;\u0012\u0005\u0013/\u0001\u0005u_N#(/\u001b8h)\u0005\u0011\bCA:w\u001d\t9B/\u0003\u0002v\u0011\u00051\u0001K]3eK\u001aL!a\u001e=\u0003\rM#(/\u001b8h\u0015\t)\b\u0002C\u0003{;\u0012\u0005\u0001(A\u0006uC\ndW\rT3oORD\u0007\"\u0002?^\t\u0003i\u0018aB:fiNK'0\u001a\u000b\u0004}\u0006\r\u0001CA\f��\u0013\r\t\t\u0001\u0003\u0002\u0005+:LG\u000f\u0003\u0004\u0002\u0006m\u0004\r!O\u0001\u0003gjDq!!\u0003^\t\u0003\tY!A\u0006j]N,'\u000f^#oiJLHcB\u001d\u0002\u000e\u0005E\u0011Q\u0003\u0005\b\u0003\u001f\t9\u00011\u0001:\u0003!Ign]3si\u0006#\bbBA\n\u0003\u000f\u0001\r!O\u0001\fG>lWm\u001d\"fM>\u0014X\rC\u0004\u0002\u0018\u0005\u001d\u0001\u0019A\u0011\u0002\u00119,w/\u00128uef4a!a\u0007\u0001\u0001\u0005u!A\u0003$jY2\u0014En\\2lgN)\u0011\u0011D\u0011\u0002 A9Q\"!\t\u0002&\u0005E\u0012bAA\u0012\t\t!A+Y:l!\u00199\u0012qE\u001d\u0002,%\u0019\u0011\u0011\u0006\u0005\u0003\rQ+\b\u000f\\33!\u0011A\u0016QF\u0011\n\u0007\u0005=\"G\u0001\bV]J|G\u000e\\3e\u0005V4g-\u001a:\u0011\u00075\u000bI\u0002C\u0006\u00026\u0005e!\u0011!Q\u0001\n\u0005]\u0012a\u00022vG.,Go\u001d\t\u0006/\u0005e\u00121F\u0005\u0004\u0003wA!!B!se\u0006L\bBCA \u00033\u0011\t\u0011)A\u0005W\u0006)A/\u00192mK\"Q\u00111IA\r\u0005\u000b\u0007I\u0011\u0001\u001d\u0002\r=4gm]3u\u0011)\t9%!\u0007\u0003\u0002\u0003\u0006I!O\u0001\b_\u001a47/\u001a;!\u0011)\tY%!\u0007\u0003\u0006\u0004%\t\u0001O\u0001\bQ><X.\u00198z\u0011)\ty%!\u0007\u0003\u0002\u0003\u0006I!O\u0001\tQ><X.\u00198zA!9q(!\u0007\u0005\u0002\u0005MCCCA\u0019\u0003+\n9&!\u0017\u0002\\!A\u0011QGA)\u0001\u0004\t9\u0004C\u0004\u0002@\u0005E\u0003\u0019A6\t\u000f\u0005\r\u0013\u0011\u000ba\u0001s!9\u00111JA)\u0001\u0004I\u0004\"C)\u0002\u001a\u0001\u0007I\u0011AA0+\t\t)\u0003\u0003\u0006\u0002d\u0005e\u0001\u0019!C\u0001\u0003K\n!B]3tk2$x\fJ3r)\rq\u0018q\r\u0005\u000b\u0003S\n\t'!AA\u0002\u0005\u0015\u0012a\u0001=%c!I\u0011QNA\rA\u0003&\u0011QE\u0001\be\u0016\u001cX\u000f\u001c;!\u0011!\t\t(!\u0007\u0005\u0002\u0005M\u0014\u0001\u00027fC\u001a$2A`A;\u0011!\t9(a\u001cA\u0002\u0005e\u0014\u0001\u00029sKZ\u0004RaFA>\u0003KI1!! \t\u0005\u0019y\u0005\u000f^5p]\"I\u0011\u0011QA\r\u0005\u0004%I\u0001O\u0001\nE2|7m[:ju\u0016D\u0001\"!\"\u0002\u001a\u0001\u0006I!O\u0001\u000bE2|7m[:ju\u0016\u0004\u0003\u0002CAE\u00033!I!a#\u0002\u0015\tdwnY6Ti\u0006\u0014H\u000fF\u0002:\u0003\u001bCq!a$\u0002\b\u0002\u0007\u0011(A\u0003cY>\u001c7\u000e\u0003\u0005\u0002\u0014\u0006eA\u0011BAK\u00039qW\r\u001f;CY>\u001c7n\u0015;beR$2!OAL\u0011\u001d\ty)!%A\u0002eB\u0001\"a'\u0002\u001a\u0011%\u0011QT\u0001\nM&dGN\u00117pG.$\u0002\"!\n\u0002 \u0006\u0005\u0016Q\u0015\u0005\b\u0003\u001f\u000bI\n1\u0001:\u0011!\t\u0019+!'A\u0002\u0005-\u0012!B3mK6\u001c\b\u0002CAT\u00033\u0003\r!a\u000b\u0002\u00131,g\r^8wKJ\u001c\b\u0002CAV\u00033!I!!,\u0002\u0013%t7/\u001a:u\u00032dG\u0003CA\u0013\u0003_\u000b\u0019,a.\t\u000f\u0005E\u0016\u0011\u0016a\u0001s\u0005)\u0011\r\u001e)pg\"9\u0011QWAU\u0001\u0004I\u0014!\u00032fM>\u0014X\rU8t\u0011!\t\u0019+!+A\u0002\u0005-\u0002\u0002CA^\u00033!\t!!0\u0002\u000bM\u0004H.\u001b;\u0016\u0005\u0005}\u0006CBAa\u0003\u000f\f\t$\u0004\u0002\u0002D*\u0019\u0011Q\u0019\u0004\u0002\u0013%lW.\u001e;bE2,\u0017\u0002BAe\u0003\u0007\u0014A\u0001T5ti\"A\u0011QZA\r\t\u0003\ny-A\u0003nKJ<W\rF\u0002\u007f\u0003#D\u0001\"a5\u0002L\u0002\u0007\u0011\u0011G\u0001\u0005i\"\fG\u000f\u0003\u0005\u0002X\u0006eA\u0011AAm\u0003I\u0019\bn\\;mIN\u0003H.\u001b;GkJ$\b.\u001a:\u0016\u0005\u0005m\u0007cA\f\u0002^&\u0019\u0011q\u001c\u0005\u0003\u000f\t{w\u000e\\3b]\u001eA\u00111\u001d\u0002\t\u0002\u0011\t)/\u0001\nQCJD\u0015m\u001d5TKR\u001cu.\u001c2j]\u0016\u0014\bc\u0001\u0010\u0002h\u001a9\u0011A\u0001E\u0001\t\u0005%8cAAtC!9q(a:\u0005\u0002\u00055HCAAs\u0011)\t\t0a:C\u0002\u0013\u0005!\u0001O\u0001\u0011I&\u001c8M]5nS:\fg\u000e\u001e2jiND\u0001\"!>\u0002h\u0002\u0006I!O\u0001\u0012I&\u001c8M]5nS:\fg\u000e\u001e2jiN\u0004\u0003BCA}\u0003O\u0014\r\u0011\"\u0001\u0003q\u0005Ia.^7cY>\u001c7n\u001d\u0005\t\u0003{\f9\u000f)A\u0005s\u0005Qa.^7cY>\u001c7n\u001d\u0011\t\u0015\t\u0005\u0011q\u001db\u0001\n\u0003\u0011\u0001(\u0001\teSN\u001c'/[7j]\u0006tG/\\1tW\"A!QAAtA\u0003%\u0011(A\teSN\u001c'/[7j]\u0006tG/\\1tW\u0002B!B!\u0003\u0002h\n\u0007I\u0011\u0001\u00029\u00035qwN\\7bg.dWM\\4uQ\"A!QBAtA\u0003%\u0011(\u0001\bo_:l\u0017m]6mK:<G\u000f\u001b\u0011\t\u0011\tE\u0011q\u001dC\u0001\u0005'\tQ!\u00199qYf,BA!\u0006\u0003\u001cU\u0011!q\u0003\t\u0005=\u0001\u0011I\u0002E\u0002\u0012\u00057!aa\u0005B\b\u0005\u0004)\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSetCombiner.class */
public abstract class ParHashSetCombiner<T> extends BucketCombiner<T, ParHashSet<T>, Object, ParHashSetCombiner<T>> implements FlatHashTable.HashUtils<T> {
    private final int nonmasklen = ParHashSetCombiner$.MODULE$.nonmasklength();
    private final int scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue = 27;
    private final int tableLoadFactor;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSetCombiner$AddingFlatHashTable.class */
    public class AddingFlatHashTable implements FlatHashTable<T> {
        public final /* synthetic */ ParHashSetCombiner $outer;
        private transient int _loadFactor;
        private transient int seedvalue;
        private transient int[] sizemap;
        private transient Object[] table;
        private transient int tableSize;
        private transient int threshold;

        public AddingFlatHashTable(ParHashSetCombiner<T> parHashSetCombiner, int i, int i2, int i3) {
            Objects.requireNonNull(parHashSetCombiner);
            this.$outer = parHashSetCombiner;
            FlatHashTable.HashUtils.Cclass.$init$(this);
            FlatHashTable.Cclass.$init$(this);
            _loadFactor_$eq(i2);
            table_$eq(new Object[capacity(FlatHashTable$.MODULE$.sizeForThreshold(i, _loadFactor()))]);
            tableSize_$eq(0);
            threshold_$eq(FlatHashTable$.MODULE$.newThreshold(_loadFactor(), table().length));
            seedvalue_$eq(i3);
            sizeMapInit(table().length);
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

        @Override // scala.collection.mutable.FlatHashTable
        public boolean alwaysInitSizeMap() {
            return FlatHashTable.Cclass.alwaysInitSizeMap(this);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public int calcSizeMapSize(int i) {
            return FlatHashTable.Cclass.calcSizeMapSize(this, i);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public int capacity(int i) {
            return FlatHashTable.Cclass.capacity(this, i);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public void clearTable() {
            FlatHashTable.Cclass.clearTable(this);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public boolean containsElem(T t) {
            return FlatHashTable.Cclass.containsElem(this, t);
        }

        @Override // scala.collection.mutable.FlatHashTable.HashUtils
        public final Object elemToEntry(T t) {
            return FlatHashTable.HashUtils.Cclass.elemToEntry(this, t);
        }

        @Override // scala.collection.mutable.FlatHashTable.HashUtils
        public final T entryToElem(Object obj) {
            return (T) FlatHashTable.HashUtils.Cclass.entryToElem(this, obj);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public Option<T> findEntry(T t) {
            return FlatHashTable.Cclass.findEntry(this, t);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public FlatHashTable.Contents<T> hashTableContents() {
            return FlatHashTable.Cclass.hashTableContents(this);
        }

        @Override // scala.collection.mutable.FlatHashTable.HashUtils
        public final int improve(int i, int i2) {
            return FlatHashTable.HashUtils.Cclass.improve(this, i, i2);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public final int index(int i) {
            return FlatHashTable.Cclass.index(this, i);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public void init(ObjectInputStream objectInputStream, Function1<T, BoxedUnit> function1) {
            FlatHashTable.Cclass.init(this, objectInputStream, function1);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public void initWithContents(FlatHashTable.Contents<T> contents) {
            FlatHashTable.Cclass.initWithContents(this, contents);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public int initialSize() {
            return FlatHashTable.Cclass.initialSize(this);
        }

        public int insertEntry(int i, int i2, Object obj) {
            int i3 = i;
            if (i == -1) {
                i3 = index(obj.hashCode());
            }
            Object obj2 = table()[i3];
            while (true) {
                Object obj3 = obj2;
                boolean z = true;
                if (obj3 == null) {
                    table()[i3] = obj;
                    nnSizeMapAdd(i3);
                    return 1;
                }
                if (obj3 != obj) {
                    z = obj3 == null ? false : obj3 instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj3, obj) : obj3 instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj3, obj) : obj3.equals(obj);
                }
                if (z) {
                    return 0;
                }
                i3++;
                if (i3 >= i2) {
                    return -1;
                }
                obj2 = table()[i3];
            }
        }

        @Override // scala.collection.mutable.FlatHashTable
        public boolean isSizeMapDefined() {
            return FlatHashTable.Cclass.isSizeMapDefined(this);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public Iterator<T> iterator() {
            return FlatHashTable.Cclass.iterator(this);
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

        @Override // scala.collection.mutable.FlatHashTable
        public void printContents() {
            FlatHashTable.Cclass.printContents(this);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public void printSizeMap() {
            FlatHashTable.Cclass.printSizeMap(this);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public int randomSeed() {
            return FlatHashTable.Cclass.randomSeed(this);
        }

        @Override // scala.collection.mutable.FlatHashTable
        public boolean removeElem(T t) {
            return FlatHashTable.Cclass.removeElem(this, t);
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashSetCombiner$AddingFlatHashTable$$$outer */
        public /* synthetic */ ParHashSetCombiner m79x4e6b34d2() {
            return this.$outer;
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

        @Override // scala.collection.mutable.FlatHashTable
        public void serializeTo(ObjectOutputStream objectOutputStream) {
            FlatHashTable.Cclass.serializeTo(this, objectOutputStream);
        }

        public void setSize(int i) {
            tableSize_$eq(i);
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

        @Override // scala.collection.mutable.FlatHashTable
        public Object[] table() {
            return this.table;
        }

        public int tableLength() {
            return table().length;
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

        @Override // scala.collection.mutable.FlatHashTable
        public int threshold() {
            return this.threshold;
        }

        @Override // scala.collection.mutable.FlatHashTable
        @TraitSetter
        public void threshold_$eq(int i) {
            this.threshold = i;
        }

        public String toString() {
            Predef$ predef$ = Predef$.MODULE$;
            return new StringOps("AFHT(%s)").format(Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(table().length)}));
        }

        @Override // scala.collection.mutable.FlatHashTable
        public final int totalSizeMapBuckets() {
            return FlatHashTable.Cclass.totalSizeMapBuckets(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSetCombiner$FillBlocks.class */
    public class FillBlocks implements Task<Tuple2<Object, UnrolledBuffer<Object>>, ParHashSetCombiner<T>.FillBlocks> {
        public final /* synthetic */ ParHashSetCombiner $outer;
        private final int blocksize;
        private final UnrolledBuffer<Object>[] buckets;
        private final int howmany;
        private final int offset;
        private Tuple2<Object, UnrolledBuffer<Object>> result = new Tuple2<>(BoxesRunTime.boxToInteger(Integer.MIN_VALUE), new UnrolledBuffer(ClassTag$.MODULE$.AnyRef()));
        private final ParHashSetCombiner<T>.AddingFlatHashTable table;
        private volatile Throwable throwable;

        public FillBlocks(ParHashSetCombiner<T> parHashSetCombiner, UnrolledBuffer<Object>[] unrolledBufferArr, ParHashSetCombiner<T>.AddingFlatHashTable addingFlatHashTable, int i, int i2) {
            this.buckets = unrolledBufferArr;
            this.table = addingFlatHashTable;
            this.offset = i;
            this.howmany = i2;
            Objects.requireNonNull(parHashSetCombiner);
            this.$outer = parHashSetCombiner;
            throwable_$eq(null);
            this.blocksize = addingFlatHashTable.tableLength() >> ParHashSetCombiner$.MODULE$.discriminantbits();
        }

        private int blockStart(int i) {
            return i * blocksize();
        }

        private int blocksize() {
            return this.blocksize;
        }

        private Tuple2<Object, UnrolledBuffer<Object>> fillBlock(int i, UnrolledBuffer<Object> unrolledBuffer, UnrolledBuffer<Object> unrolledBuffer2) {
            int nextBlockStart = nextBlockStart(i);
            Tuple2<Object, UnrolledBuffer<Object>> tuple2 = unrolledBuffer == null ? new Tuple2<>(BoxesRunTime.boxToInteger(0), UnrolledBuffer$.MODULE$.apply(Nil$.MODULE$, ClassTag$.MODULE$.AnyRef())) : insertAll(-1, nextBlockStart, unrolledBuffer);
            if (tuple2 != null) {
                Tuple2 tuple22 = new Tuple2(BoxesRunTime.boxToInteger(tuple2._1$mcI$sp()), tuple2.mo268_2());
                int _1$mcI$sp = tuple22._1$mcI$sp();
                UnrolledBuffer unrolledBuffer3 = (UnrolledBuffer) tuple22.mo268_2();
                Tuple2<Object, UnrolledBuffer<Object>> insertAll = insertAll(blockStart(i), nextBlockStart, unrolledBuffer2);
                if (insertAll == null) {
                    throw new MatchError(insertAll);
                }
                Tuple2 tuple23 = new Tuple2(BoxesRunTime.boxToInteger(insertAll._1$mcI$sp()), insertAll.mo268_2());
                return new Tuple2<>(BoxesRunTime.boxToInteger(_1$mcI$sp + tuple23._1$mcI$sp()), unrolledBuffer3.concat((UnrolledBuffer) tuple23.mo268_2()));
            }
            throw new MatchError(tuple2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Tuple2<Object, UnrolledBuffer<Object>> insertAll(int i, int i2, UnrolledBuffer<Object> unrolledBuffer) {
            UnrolledBuffer unrolledBuffer2 = new UnrolledBuffer(ClassTag$.MODULE$.AnyRef());
            ParHashSetCombiner<T>.AddingFlatHashTable addingFlatHashTable = this.table;
            int i3 = 0;
            for (UnrolledBuffer.Unrolled<Object> headPtr = unrolledBuffer.headPtr(); headPtr != null; headPtr = headPtr.next()) {
                Object[] objArr = (Object[]) headPtr.array();
                int size = headPtr.size();
                for (int i4 = 0; i4 < size; i4++) {
                    Object obj = objArr[i4];
                    int insertEntry = addingFlatHashTable.insertEntry(i, i2, obj);
                    if (insertEntry >= 0) {
                        i3 += insertEntry;
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    } else {
                        unrolledBuffer2.$plus$eq((UnrolledBuffer) obj);
                    }
                }
            }
            return new Tuple2<>(BoxesRunTime.boxToInteger(i3), unrolledBuffer2);
        }

        private int nextBlockStart(int i) {
            return (i + 1) * blocksize();
        }

        @Override // scala.collection.parallel.Task
        public void forwardThrowable() {
            Task.Cclass.forwardThrowable(this);
        }

        public int howmany() {
            return this.howmany;
        }

        @Override // scala.collection.parallel.Task
        public void leaf(Option<Tuple2<Object, UnrolledBuffer<Object>>> option) {
            UnrolledBuffer<Object> unrolledBuffer = new UnrolledBuffer<>(ClassTag$.MODULE$.AnyRef());
            int i = 0;
            for (int offset = offset(); offset < offset() + howmany(); offset++) {
                Tuple2<Object, UnrolledBuffer<Object>> fillBlock = fillBlock(offset, this.buckets[offset], unrolledBuffer);
                if (fillBlock == null) {
                    throw new MatchError(fillBlock);
                }
                Tuple2 tuple2 = new Tuple2(BoxesRunTime.boxToInteger(fillBlock._1$mcI$sp()), fillBlock.mo268_2());
                int _1$mcI$sp = tuple2._1$mcI$sp();
                unrolledBuffer = (UnrolledBuffer) tuple2.mo268_2();
                i += _1$mcI$sp;
            }
            result_$eq(new Tuple2<>(BoxesRunTime.boxToInteger(i), unrolledBuffer));
        }

        @Override // scala.collection.parallel.Task
        public /* bridge */ /* synthetic */ void merge(Object obj) {
            merge((FillBlocks) ((FillBlocks) obj));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void merge(ParHashSetCombiner<T>.FillBlocks fillBlocks) {
            Tuple2<Object, UnrolledBuffer<Object>> insertAll = insertAll(blockStart(fillBlocks.offset()), blockStart(fillBlocks.offset() + fillBlocks.howmany()), result().mo268_2());
            if (insertAll != null) {
                Tuple2 tuple2 = new Tuple2(BoxesRunTime.boxToInteger(insertAll._1$mcI$sp()), insertAll.mo268_2());
                result_$eq(new Tuple2<>(BoxesRunTime.boxToInteger(result()._1$mcI$sp() + fillBlocks.result()._1$mcI$sp() + tuple2._1$mcI$sp()), ((UnrolledBuffer) tuple2.mo268_2()).concat(fillBlocks.result().mo268_2())));
                return;
            }
            throw new MatchError(insertAll);
        }

        @Override // scala.collection.parallel.Task
        public void mergeThrowables(Task<?, ?> task) {
            Task.Cclass.mergeThrowables(this, task);
        }

        public int offset() {
            return this.offset;
        }

        @Override // scala.collection.parallel.Task
        public Object repr() {
            return Task.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.Task
        public Tuple2<Object, UnrolledBuffer<Object>> result() {
            return this.result;
        }

        public void result_$eq(Tuple2<Object, UnrolledBuffer<Object>> tuple2) {
            this.result = tuple2;
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashSetCombiner$FillBlocks$$$outer */
        public /* synthetic */ ParHashSetCombiner m78xbe0abdeb() {
            return this.$outer;
        }

        @Override // scala.collection.parallel.Task
        public boolean shouldSplitFurther() {
            return howmany() > package$.MODULE$.thresholdFromSize(ParHashMapCombiner$.MODULE$.numblocks(), m78xbe0abdeb().combinerTaskSupport().parallelismLevel());
        }

        @Override // scala.collection.parallel.Task
        public void signalAbort() {
            Task.Cclass.signalAbort(this);
        }

        @Override // scala.collection.parallel.Task
        public List<ParHashSetCombiner<T>.FillBlocks> split() {
            int howmany = howmany() / 2;
            return List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new FillBlocks[]{new FillBlocks(m78xbe0abdeb(), this.buckets, this.table, offset(), howmany), new FillBlocks(m78xbe0abdeb(), this.buckets, this.table, offset() + howmany, howmany() - howmany)}));
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
        public void tryLeaf(Option<Tuple2<Object, UnrolledBuffer<Object>>> option) {
            Task.Cclass.tryLeaf(this, option);
        }

        @Override // scala.collection.parallel.Task
        public void tryMerge(Object obj) {
            Task.Cclass.tryMerge(this, obj);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParHashSetCombiner(int i) {
        super(ParHashSetCombiner$.MODULE$.numblocks());
        this.tableLoadFactor = i;
        FlatHashTable.HashUtils.Cclass.$init$(this);
    }

    public static <T> ParHashSetCombiner<T> apply() {
        return ParHashSetCombiner$.MODULE$.apply();
    }

    private int nonmasklen() {
        return this.nonmasklen;
    }

    private FlatHashTable.Contents<T> parPopulate() {
        AddingFlatHashTable addingFlatHashTable = new AddingFlatHashTable(this, size(), tableLoadFactor(), scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue());
        Tuple2 tuple2 = (Tuple2) combinerTaskSupport().executeAndWaitResult(new FillBlocks(this, buckets(), addingFlatHashTable, 0, buckets().length));
        if (tuple2 != null) {
            Tuple2 tuple22 = new Tuple2(BoxesRunTime.boxToInteger(tuple2._1$mcI$sp()), tuple2.mo268_2());
            int _1$mcI$sp = tuple22._1$mcI$sp();
            UnrolledBuffer unrolledBuffer = (UnrolledBuffer) tuple22.mo268_2();
            IntRef create = IntRef.create(0);
            unrolledBuffer.foreach(new ParHashSetCombiner$$anonfun$parPopulate$1(this, addingFlatHashTable, create));
            addingFlatHashTable.setSize(create.elem + _1$mcI$sp);
            return addingFlatHashTable.hashTableContents();
        }
        throw new MatchError(tuple2);
    }

    private FlatHashTable.Contents<T> seqPopulate() {
        return new ParHashSetCombiner$$anon$2(this).hashTableContents();
    }

    private int tableLoadFactor() {
        return this.tableLoadFactor;
    }

    @Override // scala.collection.mutable.Builder, scala.collection.generic.Growable
    public ParHashSetCombiner<T> $plus$eq(T t) {
        Object elemToEntry = elemToEntry(t);
        sz_$eq(m119sz() + 1);
        int improve = improve(elemToEntry.hashCode(), scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue()) >>> nonmasklen();
        if (buckets()[improve] == null) {
            buckets()[improve] = new UnrolledBuffer<>(ClassTag$.MODULE$.AnyRef());
        }
        buckets()[improve].$plus$eq((UnrolledBuffer<Object>) elemToEntry);
        return this;
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final Object elemToEntry(T t) {
        return FlatHashTable.HashUtils.Cclass.elemToEntry(this, t);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final T entryToElem(Object obj) {
        return (T) FlatHashTable.HashUtils.Cclass.entryToElem(this, obj);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final int improve(int i, int i2) {
        return FlatHashTable.HashUtils.Cclass.improve(this, i, i2);
    }

    @Override // scala.collection.mutable.Builder
    public ParHashSet<T> result() {
        return new ParHashSet<>(size() >= ParHashSetCombiner$.MODULE$.numblocks() * sizeMapBucketSize() ? parPopulate() : seqPopulate());
    }

    public int scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue() {
        return this.scala$collection$parallel$mutable$ParHashSetCombiner$$seedvalue;
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final int sizeMapBucketBitSize() {
        return FlatHashTable.HashUtils.Cclass.sizeMapBucketBitSize(this);
    }

    @Override // scala.collection.mutable.FlatHashTable.HashUtils
    public final int sizeMapBucketSize() {
        return FlatHashTable.HashUtils.Cclass.sizeMapBucketSize(this);
    }
}
