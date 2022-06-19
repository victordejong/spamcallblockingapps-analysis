package scala.collection.mutable;

import java.util.Objects;
import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.Tuple2;
import scala.collection.AbstractIterator;
import scala.collection.Iterator;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.HashEntry;
import scala.collection.mutable.OpenHashMap;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.runtime.TraitSetter;
import scala.sys.package$;
@ScalaSignature(bytes = "\u0006\u0001\t\u001dt!B\u0001\u0003\u0011\u0003I\u0011aC(qK:D\u0015m\u001d5NCBT!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001A\u0011!bC\u0007\u0002\u0005\u0019)AB\u0001E\u0001\u001b\tYq\n]3o\u0011\u0006\u001c\b.T1q'\tYa\u0002\u0005\u0002\u0010!5\ta!\u0003\u0002\u0012\r\t1\u0011I\\=SK\u001aDQaE\u0006\u0005\u0002Q\ta\u0001P5oSRtD#A\u0005\t\u000bYYA\u0011A\f\u0002\u000b\u0005\u0004\b\u000f\\=\u0016\u000ba\u00119D!\u0010\u0015\u0007e\u0011\t\u0005\u0005\u0004\u000b5\tU\"1\b\u0004\u0005\u0019\t\u00011$F\u0002\u001dE1\u001aBAG\u000f/cA!!B\b\u0011,\u0013\ty\"AA\u0006BEN$(/Y2u\u001b\u0006\u0004\bCA\u0011#\u0019\u0001!Qa\t\u000eC\u0002\u0011\u00121aS3z#\t)\u0003\u0006\u0005\u0002\u0010M%\u0011qE\u0002\u0002\b\u001d>$\b.\u001b8h!\ty\u0011&\u0003\u0002+\r\t\u0019\u0011I\\=\u0011\u0005\u0005bC!B\u0017\u001b\u0005\u0004!#!\u0002,bYV,\u0007\u0003\u0002\u00060A-J!\u0001\r\u0002\u0003\u00075\u000b\u0007\u000fE\u0003\u000be\u0001ZC'\u0003\u00024\u0005\t9Q*\u00199MS.,\u0007\u0003\u0002\u0006\u001bA-B\u0001B\u000e\u000e\u0003\u0002\u0003\u0006IaN\u0001\fS:LG/[1m'&TX\r\u0005\u0002\u0010q%\u0011\u0011H\u0002\u0002\u0004\u0013:$\b\"B\n\u001b\t\u0003YDC\u0001\u001b=\u0011\u00151$\b1\u00018\u000b\u0011q$\u0004B \u0003\u000b\u0015sGO]=\u0011\t\u0001\u000b\u0005e\u000b\b\u0003\u0015\u00011AAQ\u0006\u0007\u0007\nIq\n]3o\u000b:$(/_\u000b\u0004\t&k5cA!\u000f\u000bB!!B\u0012%K\u0013\t9%AA\u0005ICNDWI\u001c;ssB\u0011\u0011%\u0013\u0003\u0006G\u0005\u0013\r\u0001\n\t\u0005\u0017\u0006CE*D\u0001\f!\t\tS\nB\u0003.\u0003\n\u0007A\u0005\u0003\u0005P\u0003\n\u0015\r\u0011\"\u0001Q\u0003\rYW-_\u000b\u0002\u0011\"A!+\u0011B\u0001B\u0003%\u0001*\u0001\u0003lKf\u0004\u0003\u0002\u0003+B\u0005\u000b\u0007I\u0011A+\u0002\t!\f7\u000f[\u000b\u0002o!Aq+\u0011B\u0001B\u0003%q'A\u0003iCND\u0007\u0005\u0003\u0005Z\u0003\n\u0005\r\u0011\"\u0001[\u0003\u00151\u0018\r\\;f+\u0005Y\u0006cA\b]\u0019&\u0011QL\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u0011}\u000b%\u00111A\u0005\u0002\u0001\f\u0011B^1mk\u0016|F%Z9\u0015\u0005\u0005$\u0007CA\bc\u0013\t\u0019gA\u0001\u0003V]&$\bbB3_\u0003\u0003\u0005\raW\u0001\u0004q\u0012\n\u0004\u0002C4B\u0005\u0003\u0005\u000b\u0015B.\u0002\rY\fG.^3!\u0011\u0015\u0019\u0012\t\"\u0001j)\u0011Q%n\u001b7\t\u000b=C\u0007\u0019\u0001%\t\u000bQC\u0007\u0019A\u001c\t\u000beC\u0007\u0019A.\t\u000bMQB\u0011\u00018\u0015\u0003QBQ\u0001\u001d\u000e\u0005BE\fQ!Z7qif,\u0012\u0001\u000e\u0005\u0007gj\u0001\u000b\u0011B\u001c\u0002#\u0005\u001cG/^1m\u0013:LG/[1m'&TX\rC\u0004v5\u0001\u0007I\u0011B+\u0002\t5\f7o\u001b\u0005\boj\u0001\r\u0011\"\u0003y\u0003!i\u0017m]6`I\u0015\fHCA1z\u0011\u001d)g/!AA\u0002]Baa\u001f\u000e!B\u00139\u0014!B7bg.\u0004\u0003bB?\u001b\u0001\u0004%IA`\u0001\u0006i\u0006\u0014G.Z\u000b\u0002\u007fB)q\"!\u0001\u0002\u0006%\u0019\u00111\u0001\u0004\u0003\u000b\u0005\u0013(/Y=\u0011\u0007\u0005\u001dQ(D\u0001\u001b\u0011%\tYA\u0007a\u0001\n\u0013\ti!A\u0005uC\ndWm\u0018\u0013fcR\u0019\u0011-a\u0004\t\u0011\u0015\fI!!AA\u0002}Dq!a\u0005\u001bA\u0003&q0\u0001\u0004uC\ndW\r\t\u0005\t\u0003/Q\u0002\u0019!C\u0005+\u0006)ql]5{K\"I\u00111\u0004\u000eA\u0002\u0013%\u0011QD\u0001\n?NL'0Z0%KF$2!YA\u0010\u0011!)\u0017\u0011DA\u0001\u0002\u00049\u0004bBA\u00125\u0001\u0006KaN\u0001\u0007?NL'0\u001a\u0011\t\u0011\u0005\u001d\"\u00041A\u0005\nU\u000bq\u0001Z3mKR,G\rC\u0005\u0002,i\u0001\r\u0011\"\u0003\u0002.\u0005YA-\u001a7fi\u0016$w\fJ3r)\r\t\u0017q\u0006\u0005\tK\u0006%\u0012\u0011!a\u0001o!9\u00111\u0007\u000e!B\u00139\u0014\u0001\u00033fY\u0016$X\r\u001a\u0011\t\u000f\u0005]\"\u0004)Q\u0005o\u0005AQn\u001c3D_VtG\u000f\u0003\u0004\u0002<i!\t%V\u0001\u0005g&TX\r\u0003\u0005\u0002@i\u0001K\u0011BA!\u0003!\u0019\u0018N_3`I\u0015\fHcA1\u0002D!9\u0011QIA\u001f\u0001\u00049\u0014!A:\t\u000f\u0005%#\u0004\"\u0005\u0002L\u00051\u0001.Y:i\u001f\u001a$2aNA'\u0011\u0019y\u0015q\ta\u0001A!A\u0011\u0011\u000b\u000e!\n\u0013\t\u0019&A\u0005he><H+\u00192mKR\t\u0011\r\u0003\u0005\u0002Xi\u0001K\u0011BA-\u0003%1\u0017N\u001c3J]\u0012,\u0007\u0010F\u00028\u00037BaaTA+\u0001\u0004\u0001\u0003\u0002CA,5\u0001&I!a\u0018\u0015\u000b]\n\t'a\u0019\t\r=\u000bi\u00061\u0001!\u0011\u0019!\u0016Q\fa\u0001o!A\u0011q\r\u000e!\n\u0013\tI'\u0001\u0005bI\u0012,e\u000e\u001e:z)\r\t\u00171\u000e\u0005\t\u0003[\n)\u00071\u0001\u0002\u0006\u0005)QM\u001c;ss\"9\u0011\u0011\u000f\u000e\u0005B\u0005M\u0014AB;qI\u0006$X\rF\u0003b\u0003k\n9\b\u0003\u0004P\u0003_\u0002\r\u0001\t\u0005\u00073\u0006=\u0004\u0019A\u0016\t\u000f\u0005m$\u0004\"\u0001\u0002~\u0005AA\u0005\u001d7vg\u0012*\u0017\u000f\u0006\u0003\u0002\b\u0005}\u0004\u0002CAA\u0003s\u0002\r!a!\u0002\u0005-4\b#B\b\u0002\u0006\u0002Z\u0013bAAD\r\t1A+\u001e9mKJB\u0003\"!\u001f\u0002\f\u0006E\u0015Q\u0013\t\u0004\u001f\u00055\u0015bAAH\r\t!B-\u001a9sK\u000e\fG/\u001a3Pm\u0016\u0014(/\u001b3j]\u001e\f#!a%\u0002\r.j\u0004e\u001d5pk2$\u0007E\\8uA\t,\u0007e\u001c<feJLG\rZ3oA%t\u0007e\u001c:eKJ\u0004Co\u001c\u0011nC&tG/Y5oA\r|gn]5ti\u0016t7-\u001f\u0011xSRD\u0007\u0005];u]\u0005\u0012\u0011qS\u0001\u0007e9\n\u0014G\f\u0019\t\u000f\u0005m%\u0004\"\u0001\u0002\u001e\u0006IA%\\5okN$S-\u001d\u000b\u0005\u0003\u000f\ty\n\u0003\u0004P\u00033\u0003\r\u0001\t\u0015\t\u00033\u000bY)a)\u0002\u0016\u0006\u0012\u0011QU\u0001J[u\u00023\u000f[8vY\u0012\u0004cn\u001c;!E\u0016\u0004sN^3se&$G-\u001a8!S:\u0004sN\u001d3fe\u0002\"x\u000eI7bS:$\u0018-\u001b8!G>t7/[:uK:\u001c\u0017\u0010I<ji\"\u0004#/Z7pm\u0016t\u0003bBAU5\u0011\u0005\u00131V\u0001\u0004aV$HCBAW\u0003_\u000b\t\fE\u0002\u00109.BaaTAT\u0001\u0004\u0001\u0003BB-\u0002(\u0002\u00071\u0006C\u0004\u0002*j!I!!.\u0015\u0011\u00055\u0016qWA]\u0003wCaaTAZ\u0001\u0004\u0001\u0003B\u0002+\u00024\u0002\u0007q\u0007\u0003\u0004Z\u0003g\u0003\ra\u000b\u0005\b\u0003\u007fSB\u0011IAa\u0003\u0019\u0011X-\\8wKR!\u0011QVAb\u0011\u0019y\u0015Q\u0018a\u0001A!9\u0011q\u0019\u000e\u0005\u0002\u0005%\u0017aA4fiR!\u0011QVAf\u0011\u0019y\u0015Q\u0019a\u0001A!9\u0011q\u001a\u000e\u0005\u0002\u0005E\u0017\u0001C5uKJ\fGo\u001c:\u0016\u0005\u0005M\u0007CBAk\u0003/\f\u0019)D\u0001\u0005\u0013\r\tI\u000e\u0002\u0002\t\u0013R,'/\u0019;pe\"1\u0011Q\u001c\u000e\u0005B9\fQa\u00197p]\u0016Dq!!9\u001b\t\u0003\n\u0019/A\u0004g_J,\u0017m\u00195\u0016\t\u0005\u0015\u00181\u001f\u000b\u0004C\u0006\u001d\b\u0002CAu\u0003?\u0004\r!a;\u0002\u0003\u0019\u0004raDAw\u0003\u0007\u000b\t0C\u0002\u0002p\u001a\u0011\u0011BR;oGRLwN\\\u0019\u0011\u0007\u0005\n\u0019\u0010B\u0004\u0002v\u0006}'\u0019\u0001\u0013\u0003\u0003UC\u0001\"!?\u001bA\u0013%\u00111`\u0001\u0016M>\u0014X-Y2i+:$W\r\\3uK\u0012,e\u000e\u001e:z)\r\t\u0017Q \u0005\t\u0003S\f9\u00101\u0001\u0002��B1q\"!<\u0002\u0006\u0005DqAa\u0001\u001b\t\u0003\u0012)!A\u0005ue\u0006t7OZ8s[R!\u0011q\u0001B\u0004\u0011!\tIO!\u0001A\u0002\t%\u0001CB\b\u0003\f\u0001Z3&C\u0002\u0003\u000e\u0019\u0011\u0011BR;oGRLwN\u001c\u001a\t\u000f\tE!\u0004\"\u0011\u0003\u0014\u00051!/\u001a;bS:$B!a\u0002\u0003\u0016!A\u0011\u0011\u001eB\b\u0001\u0004\u00119\u0002E\u0004\u0010\u0005\u0017\u00013F!\u0007\u0011\u0007=\u0011Y\"C\u0002\u0003\u001e\u0019\u0011qAQ8pY\u0016\fg\u000eC\u0004\u0003\"i!\tEa\t\u0002\u0019M$(/\u001b8h!J,g-\u001b=\u0016\u0005\t\u0015\u0002\u0003\u0002B\u0014\u0005ci!A!\u000b\u000b\t\t-\"QF\u0001\u0005Y\u0006twM\u0003\u0002\u00030\u0005!!.\u0019<b\u0013\u0011\u0011\u0019D!\u000b\u0003\rM#(/\u001b8h!\r\t#q\u0007\u0003\u0007\u0005s)\"\u0019\u0001\u0013\u0003\u0003-\u00032!\tB\u001f\t\u0019\u0011y$\u0006b\u0001I\t\ta\u000bC\u0004\u0003DU\u0001\rA!\u0012\u0002\u000b\u0015dW-\\:\u0011\u000b=\u00119Ea\u0013\n\u0007\t%cA\u0001\u0006=e\u0016\u0004X-\u0019;fIz\u0002raDAC\u0005k\u0011Y\u0004\u0003\u0004q\u0017\u0011\u0005!qJ\u000b\u0007\u0005#\u00129Fa\u0017\u0016\u0005\tM\u0003C\u0002\u0006\u001b\u0005+\u0012I\u0006E\u0002\"\u0005/\"qA!\u000f\u0003N\t\u0007A\u0005E\u0002\"\u00057\"qAa\u0010\u0003N\t\u0007A\u0005\u0003\u0005\u0003`-!\tA\u0001B1\u0003YqW\r\u001f;Q_NLG/\u001b<f!><XM](g)^|GcA\u001c\u0003d!9!Q\rB/\u0001\u00049\u0014!A5")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/OpenHashMap.class */
public class OpenHashMap<Key, Value> extends AbstractMap<Key, Value> {
    private int _size;
    private final int actualInitialSize;
    private int scala$collection$mutable$OpenHashMap$$deleted;
    private int scala$collection$mutable$OpenHashMap$$mask;
    public int scala$collection$mutable$OpenHashMap$$modCount;
    private OpenEntry<Key, Value>[] scala$collection$mutable$OpenHashMap$$table;

    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/OpenHashMap$OpenEntry.class */
    public static final class OpenEntry<Key, Value> implements HashEntry<Key, OpenEntry<Key, Value>> {
        private final int hash;
        private final Key key;
        private Object next;
        private Option<Value> value;

        public OpenEntry(Key key, int i, Option<Value> option) {
            this.key = key;
            this.hash = i;
            this.value = option;
            HashEntry.Cclass.$init$(this);
        }

        public int hash() {
            return this.hash;
        }

        @Override // scala.collection.mutable.HashEntry
        public Key key() {
            return this.key;
        }

        @Override // scala.collection.mutable.HashEntry
        public Object next() {
            return this.next;
        }

        @Override // scala.collection.mutable.HashEntry
        @TraitSetter
        public void next_$eq(Object obj) {
            this.next = obj;
        }

        public Option<Value> value() {
            return this.value;
        }

        public void value_$eq(Option<Value> option) {
            this.value = option;
        }
    }

    public OpenHashMap() {
        this(8);
    }

    public OpenHashMap(int i) {
        int nextPositivePowerOfTwo = OpenHashMap$.MODULE$.nextPositivePowerOfTwo(i);
        this.actualInitialSize = nextPositivePowerOfTwo;
        this.scala$collection$mutable$OpenHashMap$$mask = nextPositivePowerOfTwo - 1;
        this.scala$collection$mutable$OpenHashMap$$table = new OpenEntry[nextPositivePowerOfTwo];
        this._size = 0;
        this.scala$collection$mutable$OpenHashMap$$deleted = 0;
        this.scala$collection$mutable$OpenHashMap$$modCount = 0;
    }

    private int _size() {
        return this._size;
    }

    private void _size_$eq(int i) {
        this._size = i;
    }

    private int findIndex(Key key) {
        return findIndex(key, hashOf(key));
    }

    private int findIndex(Key key, int i) {
        int scala$collection$mutable$OpenHashMap$$mask = scala$collection$mutable$OpenHashMap$$mask() & i;
        int i2 = i;
        int i3 = scala$collection$mutable$OpenHashMap$$mask;
        while (scala$collection$mutable$OpenHashMap$$table()[scala$collection$mutable$OpenHashMap$$mask] != null) {
            if (scala$collection$mutable$OpenHashMap$$table()[scala$collection$mutable$OpenHashMap$$mask].hash() == i) {
                Key key2 = scala$collection$mutable$OpenHashMap$$table()[scala$collection$mutable$OpenHashMap$$mask].key();
                if (key2 == key ? true : key2 == null ? false : key2 instanceof Number ? BoxesRunTime.equalsNumObject((Number) key2, key) : key2 instanceof Character ? BoxesRunTime.equalsCharObject((Character) key2, key) : key2.equals(key)) {
                    break;
                }
            }
            i2 = (i2 * 5) + 1 + i3;
            i3 >>= 5;
            scala$collection$mutable$OpenHashMap$$mask = scala$collection$mutable$OpenHashMap$$mask() & i2;
        }
        return scala$collection$mutable$OpenHashMap$$mask;
    }

    private void foreachUndeletedEntry(Function1<OpenEntry<Key, Value>, BoxedUnit> function1) {
        Predef$.MODULE$.refArrayOps(scala$collection$mutable$OpenHashMap$$table()).foreach(new OpenHashMap$$anonfun$foreachUndeletedEntry$1(this, function1));
    }

    private void growTable() {
        int scala$collection$mutable$OpenHashMap$$mask = (scala$collection$mutable$OpenHashMap$$mask() + 1) * 4;
        OpenEntry<Key, Value>[] scala$collection$mutable$OpenHashMap$$table = scala$collection$mutable$OpenHashMap$$table();
        scala$collection$mutable$OpenHashMap$$table_$eq(new OpenEntry[scala$collection$mutable$OpenHashMap$$mask]);
        scala$collection$mutable$OpenHashMap$$mask_$eq(scala$collection$mutable$OpenHashMap$$mask - 1);
        Predef$.MODULE$.refArrayOps(scala$collection$mutable$OpenHashMap$$table).foreach(new OpenHashMap$$anonfun$growTable$1(this));
        scala$collection$mutable$OpenHashMap$$deleted_$eq(0);
    }

    private void scala$collection$mutable$OpenHashMap$$mask_$eq(int i) {
        this.scala$collection$mutable$OpenHashMap$$mask = i;
    }

    private void scala$collection$mutable$OpenHashMap$$table_$eq(OpenEntry<Key, Value>[] openEntryArr) {
        this.scala$collection$mutable$OpenHashMap$$table = openEntryArr;
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    public OpenHashMap<Key, Value> $minus$eq(Key key) {
        remove(key);
        return this;
    }

    @Override // scala.collection.mutable.MapLike
    public OpenHashMap<Key, Value> $plus$eq(Tuple2<Key, Value> tuple2) {
        put(tuple2.mo269_1(), tuple2.mo268_2());
        return this;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike, scala.collection.mutable.Cloneable
    public OpenHashMap<Key, Value> clone() {
        OpenHashMap<Key, Value> openHashMap = new OpenHashMap<>();
        foreachUndeletedEntry(new OpenHashMap$$anonfun$clone$1(this, openHashMap));
        return openHashMap;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public OpenHashMap<Key, Value> empty() {
        return OpenHashMap$.MODULE$.empty();
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<Tuple2<Key, Value>, U> function1) {
        foreachUndeletedEntry(new OpenHashMap$$anonfun$foreach$1(this, function1, this.scala$collection$mutable$OpenHashMap$$modCount));
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<Value> get(Key key) {
        int hashOf = hashOf(key);
        int scala$collection$mutable$OpenHashMap$$mask = scala$collection$mutable$OpenHashMap$$mask() & hashOf;
        OpenEntry<Key, Value> openEntry = scala$collection$mutable$OpenHashMap$$table()[scala$collection$mutable$OpenHashMap$$mask];
        int i = hashOf;
        while (openEntry != null) {
            if (openEntry.hash() == hashOf) {
                Key key2 = openEntry.key();
                if (key2 == key ? true : key2 == null ? false : key2 instanceof Number ? BoxesRunTime.equalsNumObject((Number) key2, key) : key2 instanceof Character ? BoxesRunTime.equalsCharObject((Character) key2, key) : key2.equals(key)) {
                    return openEntry.value();
                }
            }
            i = (i * 5) + 1 + scala$collection$mutable$OpenHashMap$$mask;
            scala$collection$mutable$OpenHashMap$$mask >>= 5;
            openEntry = scala$collection$mutable$OpenHashMap$$table()[scala$collection$mutable$OpenHashMap$$mask() & i];
        }
        return None$.MODULE$;
    }

    public int hashOf(Key key) {
        int hash = ScalaRunTime$.MODULE$.hash(key);
        int i = hash ^ ((hash >>> 20) ^ (hash >>> 12));
        return (i >>> 4) ^ ((i >>> 7) ^ i);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Tuple2<Key, Value>> iterator() {
        return new AbstractIterator<Tuple2<Key, Value>>(this) { // from class: scala.collection.mutable.OpenHashMap$$anon$1
            private final /* synthetic */ OpenHashMap $outer;
            private int index = 0;
            private final int initialModCount;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
                this.initialModCount = this.scala$collection$mutable$OpenHashMap$$modCount;
            }

            private void advance() {
                if (initialModCount() == this.$outer.scala$collection$mutable$OpenHashMap$$modCount) {
                    while (index() <= this.$outer.scala$collection$mutable$OpenHashMap$$mask()) {
                        if (this.$outer.scala$collection$mutable$OpenHashMap$$table()[index()] != null) {
                            Option value = this.$outer.scala$collection$mutable$OpenHashMap$$table()[index()].value();
                            None$ none$ = None$.MODULE$;
                            if (value == null || !value.equals(none$)) {
                                return;
                            }
                        }
                        index_$eq(index() + 1);
                    }
                    return;
                }
                throw package$.MODULE$.error("Concurrent modification");
            }

            private int index() {
                return this.index;
            }

            private void index_$eq(int i) {
                this.index = i;
            }

            private int initialModCount() {
                return this.initialModCount;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                advance();
                return index() <= this.$outer.scala$collection$mutable$OpenHashMap$$mask();
            }

            @Override // scala.collection.Iterator
            public Tuple2<Key, Value> next() {
                advance();
                OpenHashMap.OpenEntry openEntry = this.$outer.scala$collection$mutable$OpenHashMap$$table()[index()];
                index_$eq(index() + 1);
                return new Tuple2<>(openEntry.key(), openEntry.value().get());
            }
        };
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public Option<Value> put(Key key, Value value) {
        return scala$collection$mutable$OpenHashMap$$put(key, hashOf(key), value);
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public Option<Value> remove(Key key) {
        None$ none$;
        int findIndex = findIndex(key);
        if (scala$collection$mutable$OpenHashMap$$table()[findIndex] != null) {
            Option<Value> value = scala$collection$mutable$OpenHashMap$$table()[findIndex].value();
            None$ none$2 = None$.MODULE$;
            if (value == null || !value.equals(none$2)) {
                none$ = scala$collection$mutable$OpenHashMap$$table()[findIndex].value();
                scala$collection$mutable$OpenHashMap$$table()[findIndex].value_$eq(None$.MODULE$);
                scala$collection$mutable$OpenHashMap$$size_$eq(size() - 1);
                scala$collection$mutable$OpenHashMap$$deleted_$eq(scala$collection$mutable$OpenHashMap$$deleted() + 1);
                return none$;
            }
        }
        none$ = None$.MODULE$;
        return none$;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public OpenHashMap<Key, Value> retain(Function2<Key, Value, Object> function2) {
        foreachUndeletedEntry(new OpenHashMap$$anonfun$retain$1(this, function2));
        return this;
    }

    public void scala$collection$mutable$OpenHashMap$$addEntry(OpenEntry<Key, Value> openEntry) {
        if (openEntry != null) {
            scala$collection$mutable$OpenHashMap$$table()[findIndex(openEntry.key(), openEntry.hash())] = openEntry;
        }
    }

    public int scala$collection$mutable$OpenHashMap$$deleted() {
        return this.scala$collection$mutable$OpenHashMap$$deleted;
    }

    public void scala$collection$mutable$OpenHashMap$$deleted_$eq(int i) {
        this.scala$collection$mutable$OpenHashMap$$deleted = i;
    }

    public int scala$collection$mutable$OpenHashMap$$mask() {
        return this.scala$collection$mutable$OpenHashMap$$mask;
    }

    public Option<Value> scala$collection$mutable$OpenHashMap$$put(Key key, int i, Value value) {
        None$ none$;
        if ((size() + scala$collection$mutable$OpenHashMap$$deleted()) * 2 > scala$collection$mutable$OpenHashMap$$mask()) {
            growTable();
        }
        int findIndex = findIndex(key, i);
        OpenEntry<Key, Value> openEntry = scala$collection$mutable$OpenHashMap$$table()[findIndex];
        if (openEntry == null) {
            scala$collection$mutable$OpenHashMap$$table()[findIndex] = new OpenEntry<>(key, i, new Some(value));
            this.scala$collection$mutable$OpenHashMap$$modCount++;
            scala$collection$mutable$OpenHashMap$$size_$eq(size() + 1);
            none$ = None$.MODULE$;
        } else {
            none$ = openEntry.value();
            Option<Value> value2 = openEntry.value();
            None$ none$2 = None$.MODULE$;
            if (value2 != null && value2.equals(none$2)) {
                scala$collection$mutable$OpenHashMap$$size_$eq(size() + 1);
                this.scala$collection$mutable$OpenHashMap$$modCount++;
            }
            openEntry.value_$eq(new Some(value));
        }
        return none$;
    }

    public void scala$collection$mutable$OpenHashMap$$size_$eq(int i) {
        _size_$eq(i);
    }

    public OpenEntry<Key, Value>[] scala$collection$mutable$OpenHashMap$$table() {
        return this.scala$collection$mutable$OpenHashMap$$table;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return _size();
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "OpenHashMap";
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public OpenHashMap<Key, Value> transform(Function2<Key, Value, Value> function2) {
        foreachUndeletedEntry(new OpenHashMap$$anonfun$transform$1(this, function2));
        return this;
    }

    @Override // scala.collection.mutable.AbstractMap, scala.collection.mutable.MapLike
    public void update(Key key, Value value) {
        scala$collection$mutable$OpenHashMap$$put(key, hashOf(key), value);
    }
}
