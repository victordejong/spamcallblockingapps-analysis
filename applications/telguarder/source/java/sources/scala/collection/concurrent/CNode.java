package scala.collection.concurrent;

import scala.Array$;
import scala.MatchError;
import scala.Predef$;
import scala.Predef$DummyImplicit$;
import scala.Tuple2;
import scala.collection.Seq;
import scala.collection.immutable.StringOps;
import scala.concurrent.forkjoin.ThreadLocalRandom;
import scala.math.Ordering$String$;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005ed!B\u0001\u0003\u0005\u0011A!!B\"O_\u0012,'BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\fWcA\u0005\u00119M\u0011\u0001A\u0003\t\u0005\u00171q1$D\u0001\u0003\u0013\ti!AA\u0005D\u001d>$WMQ1tKB\u0011q\u0002\u0005\u0007\u0001\t\u0015\t\u0002A1\u0001\u0014\u0005\u0005Y5\u0001A\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\tyA\u0004B\u0003\u001e\u0001\t\u00071CA\u0001W\u0011!y\u0002A!b\u0001\n\u0003\u0001\u0013A\u00022ji6\f\u0007/F\u0001\"!\t)\"%\u0003\u0002$\r\t\u0019\u0011J\u001c;\t\u0011\u0015\u0002!\u0011!Q\u0001\n\u0005\nqAY5u[\u0006\u0004\b\u0005\u0003\u0005(\u0001\t\u0015\r\u0011\"\u0001)\u0003\u0015\t'O]1z+\u0005I\u0003cA\u000b+Y%\u00111F\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\t\u0003\u00175J!A\f\u0002\u0003\u0013\t\u000b7/[2O_\u0012,\u0007\u0002\u0003\u0019\u0001\u0005\u0003\u0005\u000b\u0011B\u0015\u0002\r\u0005\u0014(/Y=!\u0011!\u0011\u0004A!b\u0001\n\u0003\u0019\u0014aA4f]V\tA\u0007\u0005\u0002\fk%\u0011aG\u0001\u0002\u0004\u000f\u0016t\u0007\u0002\u0003\u001d\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u001b\u0002\t\u001d,g\u000e\t\u0005\u0006u\u0001!\taO\u0001\u0007y%t\u0017\u000e\u001e \u0015\tqjdh\u0010\t\u0005\u0017\u0001q1\u0004C\u0003 s\u0001\u0007\u0011\u0005C\u0003(s\u0001\u0007\u0011\u0006C\u00033s\u0001\u0007A\u0007C\u0003B\u0001\u0011\u0005!)\u0001\u0006dC\u000eDW\rZ*ju\u0016$\"!I\"\t\u000b\u0011\u0003\u0005\u0019A#\u0002\u0005\r$\bCA\u000bG\u0013\t9eA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u0013\u0002!IAS\u0001\fG>l\u0007/\u001e;f'&TX\r\u0006\u0002\"\u0017\")A\t\u0013a\u0001\u0019B!1\"\u0014\b\u001c\u0013\tq%AA\u0004Ue&,W*\u00199\t\u000bA\u0003A\u0011A)\u0002\u0013U\u0004H-\u0019;fI\u0006#H\u0003\u0002\u001fS)ZCQaU(A\u0002\u0005\n1\u0001]8t\u0011\u0015)v\n1\u0001-\u0003\tqg\u000eC\u00033\u001f\u0002\u0007A\u0007C\u0003Y\u0001\u0011\u0005\u0011,A\u0005sK6|g/\u001a3BiR!AHW.^\u0011\u0015\u0019v\u000b1\u0001\"\u0011\u0015av\u000b1\u0001\"\u0003\u00111G.Y4\t\u000bI:\u0006\u0019\u0001\u001b\t\u000b}\u0003A\u0011\u00011\u0002\u0015%t7/\u001a:uK\u0012\fE\u000fF\u0003=C\n\u001cG\rC\u0003T=\u0002\u0007\u0011\u0005C\u0003]=\u0002\u0007\u0011\u0005C\u0003V=\u0002\u0007A\u0006C\u00033=\u0002\u0007A\u0007C\u0003g\u0001\u0011\u0005q-A\u0004sK:,w/\u001a3\u0015\u0007qB'\u000eC\u0003jK\u0002\u0007A'\u0001\u0003oO\u0016t\u0007\"\u0002#f\u0001\u0004a\u0005\"\u00027\u0001\t\u0013i\u0017!\u0003:fgV\u0014(/Z2u)\racn\u001d\u0005\u0006_.\u0004\r\u0001]\u0001\u0006S:|G-\u001a\t\u0005\u0017Et1$\u0003\u0002s\u0005\t)\u0011JT8eK\")Ao\u001ba\u0001\u000b\u0006I\u0011N\\8eK6\f\u0017N\u001c\u0005\u0006m\u0002!\ta^\u0001\ri>\u001cuN\u001c;sC\u000e$X\r\u001a\u000b\u0003qn\u0004BaC=\u000f7%\u0011!P\u0001\u0002\t\u001b\u0006LgNT8eK\")A0\u001ea\u0001C\u0005\u0019A.\u001a<\t\u000by\u0004A\u0011A@\u0002\u0019Q|7i\\7qe\u0016\u001c8/\u001a3\u0015\u000fa\f\t!a\u0001\u0002\u0006!)A) a\u0001\u0019\")A0 a\u0001C!)!' a\u0001i!A\u0011\u0011\u0002\u0001\u0005\u0002\t\tY!\u0001\u0004tiJLgn\u001a\u000b\u0005\u0003\u001b\tY\u0002\u0005\u0003\u0002\u0010\u0005UabA\u000b\u0002\u0012%\u0019\u00111\u0003\u0004\u0002\rA\u0013X\rZ3g\u0013\u0011\t9\"!\u0007\u0003\rM#(/\u001b8h\u0015\r\t\u0019B\u0002\u0005\u0007y\u0006\u001d\u0001\u0019A\u0011\t\u000f\u0005}\u0001\u0001\"\u0003\u0002\"\u0005a1m\u001c7mK\u000e$X\t\\3ngV\u0011\u00111\u0005\t\u0007\u0003K\t9#a\u000b\u000e\u0003\u0011I1!!\u000b\u0005\u0005\r\u0019V-\u001d\t\u0006+\u00055bbG\u0005\u0004\u0003_1!A\u0002+va2,'\u0007C\u0004\u00024\u0001!I!!\u000e\u0002#\r|G\u000e\\3di2{7-\u00197FY\u0016l7/\u0006\u0002\u00028A1\u0011QEA\u0014\u0003\u001bAq!a\u000f\u0001\t\u0003\ni$\u0001\u0005u_N#(/\u001b8h)\t\tia\u0002\u0005\u0002B\tA\tAAA\"\u0003\u0015\u0019ej\u001c3f!\rY\u0011Q\t\u0004\b\u0003\tA\tAAA$'\r\t)%\u0012\u0005\bu\u0005\u0015C\u0011AA&)\t\t\u0019\u0005\u0003\u0005\u0002P\u0005\u0015C\u0011AA)\u0003\u0011!W/\u00197\u0016\r\u0005M\u0013\u0011LA/)9\t)&a\u0018\u0002j\u00055\u0014\u0011OA;\u0003o\u0002baC=\u0002X\u0005m\u0003cA\b\u0002Z\u00111\u0011#!\u0014C\u0002M\u00012aDA/\t\u0019i\u0012Q\nb\u0001'!A\u0011\u0011MA'\u0001\u0004\t\u0019'A\u0001y!\u001dY\u0011QMA,\u00037J1!a\u001a\u0003\u0005\u0015\u0019fj\u001c3f\u0011\u001d\tY'!\u0014A\u0002\u0005\n1\u0001\u001f5d\u0011!\ty'!\u0014A\u0002\u0005\r\u0014!A=\t\u000f\u0005M\u0014Q\na\u0001C\u0005\u0019\u0011\u0010[2\t\rq\fi\u00051\u0001\"\u0011\u0019\u0011\u0014Q\na\u0001i\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/CNode.class */
public final class CNode<K, V> extends CNodeBase<K, V> {
    private final BasicNode[] array;
    private final int bitmap;
    private final Gen gen;

    public CNode(int i, BasicNode[] basicNodeArr, Gen gen) {
        this.bitmap = i;
        this.array = basicNodeArr;
        this.gen = gen;
    }

    private Seq<String> collectLocalElems() {
        return (Seq) Predef$.MODULE$.refArrayOps(array()).flatMap(new CNode$$anonfun$collectLocalElems$1(this), Array$.MODULE$.fallbackCanBuildFrom(Predef$DummyImplicit$.MODULE$.dummyImplicit()));
    }

    private int computeSize(TrieMap<K, V> trieMap) {
        BoxedUnit boxedUnit;
        int nextInt = array().length > 0 ? ThreadLocalRandom.current().nextInt(0, array().length) : 0;
        int i = 0;
        for (int i2 = 0; i2 < array().length; i2++) {
            BasicNode basicNode = array()[(i2 + nextInt) % array().length];
            if (basicNode instanceof SNode) {
                i++;
                boxedUnit = BoxedUnit.UNIT;
            } else if (!(basicNode instanceof INode)) {
                throw new MatchError(basicNode);
            } else {
                i += ((INode) basicNode).cachedSize(trieMap);
                boxedUnit = BoxedUnit.UNIT;
            }
        }
        return i;
    }

    public static <K, V> MainNode<K, V> dual(SNode<K, V> sNode, int i, SNode<K, V> sNode2, int i2, int i3, Gen gen) {
        return CNode$.MODULE$.dual(sNode, i, sNode2, i2, i3, gen);
    }

    private BasicNode resurrect(INode<K, V> iNode, Object obj) {
        if (obj instanceof TNode) {
            iNode = ((TNode) obj).copyUntombed();
        }
        return iNode;
    }

    public BasicNode[] array() {
        return this.array;
    }

    public int bitmap() {
        return this.bitmap;
    }

    @Override // scala.collection.concurrent.MainNode
    public int cachedSize(Object obj) {
        int READ_SIZE = READ_SIZE();
        if (READ_SIZE == -1) {
            int computeSize = computeSize((TrieMap) obj);
            while (READ_SIZE() == -1) {
                CAS_SIZE(-1, computeSize);
            }
            READ_SIZE = READ_SIZE();
        }
        return READ_SIZE;
    }

    public Gen gen() {
        return this.gen;
    }

    public CNode<K, V> insertedAt(int i, int i2, BasicNode basicNode, Gen gen) {
        int length = array().length;
        int bitmap = bitmap();
        BasicNode[] basicNodeArr = new BasicNode[length + 1];
        Array$.MODULE$.copy(array(), 0, basicNodeArr, 0, i);
        basicNodeArr[i] = basicNode;
        Array$.MODULE$.copy(array(), i, basicNodeArr, i + 1, length - i);
        return new CNode<>(i2 | bitmap, basicNodeArr, gen);
    }

    public CNode<K, V> removedAt(int i, int i2, Gen gen) {
        BasicNode[] array = array();
        int length = array.length;
        BasicNode[] basicNodeArr = new BasicNode[length - 1];
        Array$.MODULE$.copy(array, 0, basicNodeArr, 0, i);
        Array$.MODULE$.copy(array, i + 1, basicNodeArr, i, (length - i) - 1);
        return new CNode<>(i2 ^ bitmap(), basicNodeArr, gen);
    }

    public CNode<K, V> renewed(Gen gen, TrieMap<K, V> trieMap) {
        BoxedUnit boxedUnit;
        BasicNode[] array = array();
        int length = array.length;
        BasicNode[] basicNodeArr = new BasicNode[length];
        for (int i = 0; i < length; i++) {
            BasicNode basicNode = array[i];
            if (basicNode instanceof INode) {
                basicNodeArr[i] = ((INode) basicNode).copyToGen(gen, trieMap);
                boxedUnit = BoxedUnit.UNIT;
            } else if (basicNode == null) {
                throw new MatchError(basicNode);
            } else {
                basicNodeArr[i] = basicNode;
                boxedUnit = BoxedUnit.UNIT;
            }
        }
        return new CNode<>(bitmap(), basicNodeArr, gen);
    }

    public Seq<Tuple2<K, V>> scala$collection$concurrent$CNode$$collectElems() {
        return (Seq) Predef$.MODULE$.refArrayOps(array()).flatMap(new CNode$$anonfun$scala$collection$concurrent$CNode$$collectElems$1(this), Array$.MODULE$.fallbackCanBuildFrom(Predef$DummyImplicit$.MODULE$.dummyImplicit()));
    }

    @Override // scala.collection.concurrent.BasicNode
    public String string(int i) {
        Predef$ predef$ = Predef$.MODULE$;
        return new StringOps("CNode %x\n%s").format(Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(bitmap()), Predef$.MODULE$.refArrayOps((Object[]) Predef$.MODULE$.refArrayOps(array()).map(new CNode$$anonfun$string$1(this, i), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.apply(String.class)))).mkString("\n")}));
    }

    public MainNode<K, V> toCompressed(TrieMap<K, V> trieMap, int i, Gen gen) {
        BoxedUnit boxedUnit;
        int bitmap = bitmap();
        BasicNode[] array = array();
        BasicNode[] basicNodeArr = new BasicNode[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            BasicNode basicNode = array[i2];
            if (basicNode instanceof INode) {
                INode<K, V> iNode = (INode) basicNode;
                MainNode<K, V> gcasRead = iNode.gcasRead(trieMap);
                Predef$.MODULE$.m5971assert(gcasRead != null);
                basicNodeArr[i2] = resurrect(iNode, gcasRead);
                boxedUnit = BoxedUnit.UNIT;
            } else if (!(basicNode instanceof SNode)) {
                throw new MatchError(basicNode);
            } else {
                basicNodeArr[i2] = (SNode) basicNode;
                boxedUnit = BoxedUnit.UNIT;
            }
        }
        return new CNode(bitmap, basicNodeArr, gen).toContracted(i);
    }

    public MainNode<K, V> toContracted(int i) {
        TNode<K, V> tNode;
        if (array().length == 1 && i > 0) {
            BasicNode basicNode = array()[0];
            if (basicNode instanceof SNode) {
                tNode = ((SNode) basicNode).copyTombed();
                return tNode;
            }
        }
        tNode = this;
        return tNode;
    }

    public String toString() {
        Seq<String> collectLocalElems = collectLocalElems();
        Predef$ predef$ = Predef$.MODULE$;
        return new StringOps("CNode(sz: %d; %s)").format(Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(collectLocalElems.size()), collectLocalElems.sorted(Ordering$String$.MODULE$).mkString(", ")}));
    }

    public CNode<K, V> updatedAt(int i, BasicNode basicNode, Gen gen) {
        int length = array().length;
        BasicNode[] basicNodeArr = new BasicNode[length];
        Array$.MODULE$.copy(array(), 0, basicNodeArr, 0, length);
        basicNodeArr[i] = basicNode;
        return new CNode<>(bitmap(), basicNodeArr, gen);
    }
}
