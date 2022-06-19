package scala.collection.mutable;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.NoSuchElementException;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.Option;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Some;
import scala.StringContext;
import scala.Tuple2;
import scala.collection.AbstractIterator;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Growable;
import scala.collection.generic.IterableForwarder;
import scala.collection.generic.SeqForwarder;
import scala.collection.generic.Subtractable;
import scala.collection.generic.TraversableForwarder;
import scala.collection.immutable.C$colon$colon;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.ListSerializeEnd$;
import scala.collection.immutable.Map;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Range;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.mutable.Builder;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\t-d\u0001B\u0001\u0003\u0005%\u0011!\u0002T5ti\n+hMZ3s\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2\u0003\u0003\u0001\f7y)\u0013FM\u001b\u0011\u00071iq\"D\u0001\u0003\u0013\tq!A\u0001\bBEN$(/Y2u\u0005V4g-\u001a:\u0011\u0005A\tB\u0002\u0001\u0003\u0006%\u0001\u0011\ra\u0005\u0002\u0002\u0003F\u0011A\u0003\u0007\t\u0003+Yi\u0011AB\u0005\u0003/\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u00163%\u0011!D\u0002\u0002\u0004\u0003:L\bc\u0001\u0007\u001d\u001f%\u0011QD\u0001\u0002\u0007\u0005V4g-\u001a:\u0011\t}\u0011s\u0002J\u0007\u0002A)\u0011\u0011\u0005B\u0001\bO\u0016tWM]5d\u0013\t\u0019\u0003E\u0001\u000eHK:,'/[2Ue\u00064XM]:bE2,G+Z7qY\u0006$X\r\u0005\u0002\r\u0001A!ABJ\b)\u0013\t9#A\u0001\u0006Ck\u001a4WM\u001d'jW\u0016\u00042\u0001\u0004\u0001\u0010!\u0011a!f\u0004\u0017\n\u0005-\u0012!a\u0002\"vS2$WM\u001d\t\u0004[AzQ\"\u0001\u0018\u000b\u0005=\"\u0011!C5n[V$\u0018M\u00197f\u0013\t\tdF\u0001\u0003MSN$\bcA\u00104\u001f%\u0011A\u0007\t\u0002\r'\u0016\fhi\u001c:xCJ$WM\u001d\t\u0003mmj\u0011a\u000e\u0006\u0003qe\n!![8\u000b\u0003i\nAA[1wC&\u0011Ah\u000e\u0002\r'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\u0006}\u0001!\taP\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003!BQ!\u0011\u0001\u0005B\t\u000b\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003\r\u00032a\b#%\u0013\t)\u0005E\u0001\tHK:,'/[2D_6\u0004\u0018M\\5p]\"9q\t\u0001a\u0001\n\u0013A\u0015!B:uCJ$X#\u0001\u0017\t\u000f)\u0003\u0001\u0019!C\u0005\u0017\u0006I1\u000f^1si~#S-\u001d\u000b\u0003\u0019>\u0003\"!F'\n\u000593!\u0001B+oSRDq\u0001U%\u0002\u0002\u0003\u0007A&A\u0002yIEBaA\u0015\u0001!B\u0013a\u0013AB:uCJ$\b\u0005C\u0005U\u0001\u0001\u0007\t\u0019!C\u0005+\u0006)A.Y:uaU\ta\u000bE\u0002./>I!\u0001\u0017\u0018\u0003\u0019\u0011\u001aw\u000e\\8oI\r|Gn\u001c8\t\u0013i\u0003\u0001\u0019!a\u0001\n\u0013Y\u0016!\u00037bgR\u0004t\fJ3r)\taE\fC\u0004Q3\u0006\u0005\t\u0019\u0001,\t\ry\u0003\u0001\u0015)\u0003W\u0003\u0019a\u0017m\u001d;1A!9\u0001\r\u0001a\u0001\n\u0013\t\u0017\u0001C3ya>\u0014H/\u001a3\u0016\u0003\t\u0004\"!F2\n\u0005\u00114!a\u0002\"p_2,\u0017M\u001c\u0005\bM\u0002\u0001\r\u0011\"\u0003h\u00031)\u0007\u0010]8si\u0016$w\fJ3r)\ta\u0005\u000eC\u0004QK\u0006\u0005\t\u0019\u00012\t\r)\u0004\u0001\u0015)\u0003c\u0003%)\u0007\u0010]8si\u0016$\u0007\u0005C\u0004m\u0001\u0001\u0007I\u0011B7\u0002\u00071,g.F\u0001o!\t)r.\u0003\u0002q\r\t\u0019\u0011J\u001c;\t\u000fI\u0004\u0001\u0019!C\u0005g\u00069A.\u001a8`I\u0015\fHC\u0001'u\u0011\u001d\u0001\u0016/!AA\u00029DaA\u001e\u0001!B\u0013q\u0017\u0001\u00027f]\u0002BQ\u0001\u001f\u0001\u0005\u0012!\u000b!\"\u001e8eKJd\u00170\u001b8h\u0011\u0015Q\b\u0001\"\u0003|\u0003-9(/\u001b;f\u001f\nTWm\u0019;\u0015\u00051c\b\"B?z\u0001\u0004q\u0018aA8viB\u0011ag`\u0005\u0004\u0003\u00039$AE(cU\u0016\u001cGoT;uaV$8\u000b\u001e:fC6Dq!!\u0002\u0001\t\u0013\t9!\u0001\u0006sK\u0006$wJ\u00196fGR$2\u0001TA\u0005\u0011!\tY!a\u0001A\u0002\u00055\u0011AA5o!\r1\u0014qB\u0005\u0004\u0003#9$!E(cU\u0016\u001cG/\u00138qkR\u001cFO]3b[\"1\u0011Q\u0003\u0001\u0005B5\fa\u0001\\3oORD\u0007BBA\r\u0001\u0011\u0005S.\u0001\u0003tSj,\u0007bBA\u000f\u0001\u0011\u0005\u0013qD\u0001\u0006CB\u0004H.\u001f\u000b\u0004\u001f\u0005\u0005\u0002bBA\u0012\u00037\u0001\rA\\\u0001\u0002]\"9\u0011q\u0005\u0001\u0005\u0002\u0005%\u0012AB;qI\u0006$X\rF\u0003M\u0003W\ti\u0003C\u0004\u0002$\u0005\u0015\u0002\u0019\u00018\t\u000f\u0005=\u0012Q\u0005a\u0001\u001f\u0005\t\u0001\u0010C\u0004\u00024\u0001!\t!!\u000e\u0002\u0011\u0011\u0002H.^:%KF$B!a\u000e\u0002:5\t\u0001\u0001C\u0004\u00020\u0005E\u0002\u0019A\b\t\u000f\u0005u\u0002\u0001\"\u0011\u0002@\u0005iA\u0005\u001d7vg\u0012\u0002H.^:%KF$B!a\u000e\u0002B!A\u00111IA\u001e\u0001\u0004\t)%\u0001\u0002ygB)\u0011qIA%\u001f5\tA!C\u0002\u0002L\u0011\u0011q\u0002\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\u0005\b\u0003\u001f\u0002A\u0011IA)\u0003M!\u0003\u000f\\;tIAdWo\u001d\u0013fc\u0012\u001aw\u000e\\8o)\u0011\t9$a\u0015\t\u0011\u0005\r\u0013Q\na\u0001\u0003\u000bBq!a\u0016\u0001\t\u0003\tI&A\u0003dY\u0016\f'\u000fF\u0001M\u0011\u001d\ti\u0006\u0001C\u0001\u0003?\na\u0002\n9mkN$S-\u001d\u0013d_2|g\u000e\u0006\u0003\u00028\u0005\u0005\u0004bBA\u0018\u00037\u0002\ra\u0004\u0005\b\u0003K\u0002A\u0011AA4\u0003%Ign]3si\u0006cG\u000eF\u0003M\u0003S\nY\u0007C\u0004\u0002$\u0005\r\u0004\u0019\u00018\t\u0011\u00055\u00141\ra\u0001\u0003_\n1a]3r!\u0015\t9%!\u001d\u0010\u0013\r\t\u0019\b\u0002\u0002\f)J\fg/\u001a:tC\ndW\rC\u0004\u0002x\u0001!I!!\u001f\u0002\u001dI,G-^2f\u0019\u0016tw\r\u001e5CsR\u0019A*a\u001f\t\u000f\u0005u\u0014Q\u000fa\u0001]\u0006\u0019a.^7\t\u000f\u0005\u0005\u0005\u0001\"\u0011\u0002\u0004\u00061!/Z7pm\u0016$R\u0001TAC\u0003\u000fCq!a\t\u0002��\u0001\u0007a\u000eC\u0004\u0002\n\u0006}\u0004\u0019\u00018\u0002\u000b\r|WO\u001c;)\u0011\u0005}\u0014QRAM\u0003;\u0003B!a$\u0002\u00166\u0011\u0011\u0011\u0013\u0006\u0004\u0003'3\u0011AC1o]>$\u0018\r^5p]&!\u0011qSAI\u0005%i\u0017n\u001a:bi&|g.\t\u0002\u0002\u001c\u0006I\u0014J\u001c<bY&$\u0007%\u001b8qkR\u0004c/\u00197vKN\u0004s/\u001b7mA\t,\u0007E]3kK\u000e$X\r\u001a\u0011j]\u00022W\u000f^;sK\u0002\u0012X\r\\3bg\u0016\u001ch&\t\u0002\u0002 \u0006!!GL\u00192\u0011\u001d\t\u0019\u000b\u0001C\u0001\u0003K\u000baA]3tk2$H#\u0001\u0017\t\r\u0005%\u0006\u0001\"\u0011I\u0003\u0019!x\u000eT5ti\"9\u0011Q\u0016\u0001\u0005\u0002\u0005=\u0016!\u00049sKB,g\u000e\u001a+p\u0019&\u001cH\u000fF\u0002-\u0003cCq!a\u0011\u0002,\u0002\u0007A\u0006C\u0004\u0002\u0002\u0002!\t!!.\u0015\u0007=\t9\fC\u0004\u0002$\u0005M\u0006\u0019\u00018\t\u000f\u0005m\u0006\u0001\"\u0011\u0002>\u0006IA%\\5okN$S-\u001d\u000b\u0005\u0003o\ty\fC\u0004\u0002B\u0006e\u0006\u0019A\b\u0002\t\u0015dW-\u001c\u0005\b\u0003\u000b\u0004A\u0011IAd\u0003!IG/\u001a:bi>\u0014XCAAe!\u0015\t9%a3\u0010\u0013\r\ti\r\u0002\u0002\t\u0013R,'/\u0019;pe\"1\u0011\u0011\u001b\u0001\u0005B!\u000b\u0001B]3bI>sG.\u001f\u0015\t\u0003\u001f\f).a7\u0002`B\u0019Q#a6\n\u0007\u0005egA\u0001\u0006eKB\u0014XmY1uK\u0012\f#!!8\u0002CRCW\r\t:fgVdG\u000fI8gAQD\u0017n\u001d\u0011nKRDw\u000e\u001a\u0011xS2d\u0007e\u00195b]\u001e,\u0007%\u00197p]\u001e\u0004s/\u001b;iAQD\u0017n\u001d\u0011ck\u001a4WM\u001d\u0017!o\"L7\r\u001b\u0011jg\u0002zg\r^3oA9|G\u000fI<iCR<3\u000fI3ya\u0016\u001cG/\u001a3/C\t\t\t/\u0001\u00043]E\nd\u0006\r\u0005\b\u0003K\u0004A\u0011BA-\u0003\u0011\u0019w\u000e]=\t\u000f\u0005%\b\u0001\"\u0011\u0002l\u00061Q-];bYN$2AYAw\u0011\u001d\ty/a:A\u0002a\tA\u0001\u001e5bi\"1\u00111\u001f\u0001\u0005B}\nQa\u00197p]\u0016Dq!a>\u0001\t\u0003\nI0\u0001\u0007tiJLgn\u001a)sK\u001aL\u00070\u0006\u0002\u0002|B!\u0011Q B\u0002\u001d\r)\u0012q`\u0005\u0004\u0005\u00031\u0011A\u0002)sK\u0012,g-\u0003\u0003\u0003\u0006\t\u001d!AB*ue&twMC\u0002\u0003\u0002\u0019As\u0001\u0001B\u0006\u0005#\u0011\u0019\u0002E\u0002\u0016\u0005\u001bI1Aa\u0004\u0007\u0005A\u0019VM]5bYZ+'o]5p]VKE)A\u0003wC2,XM\b\u00050eRx\t;37G\u0010\u001d\u00119B\u0001E\u0001\u00053\t!\u0002T5ti\n+hMZ3s!\ra!1\u0004\u0004\u0007\u0003\tA\tA!\b\u0014\r\tm!q\u0004B\u0013!\u0011y\"\u0011\u0005\u0013\n\u0007\t\r\u0002E\u0001\u0006TKF4\u0015m\u0019;pef\u00042!\u0006B\u0014\u0013\tad\u0001C\u0004?\u00057!\tAa\u000b\u0015\u0005\te\u0001\u0002\u0003B\u0018\u00057!\u0019A!\r\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\t\tM\"QI\u000b\u0003\u0005k\u0001\u0012b\bB\u001c\u0005w\u0011\u0019Ea\u0012\n\u0007\te\u0002E\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0003\u0003>\t}RB\u0001B\u000e\u0013\r\u0011\t\u0005\u0012\u0002\u0005\u0007>dG\u000eE\u0002\u0011\u0005\u000b\"aA\u0005B\u0017\u0005\u0004\u0019\u0002\u0003\u0002\u0007\u0001\u0005\u0007B\u0001Ba\u0013\u0003\u001c\u0011\u0005!QJ\u0001\u000b]\u0016<()^5mI\u0016\u0014X\u0003\u0002B(\u0005+*\"A!\u0015\u0011\r1Q#1\u000bB,!\r\u0001\"Q\u000b\u0003\u0007%\t%#\u0019A\n\u0011\t1\u0001!1\u000b\u0005\u000b\u00057\u0012Y\"!A\u0005\n\tu\u0013a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"Aa\u0018\u0011\t\t\u0005$qM\u0007\u0003\u0005GR1A!\u001a:\u0003\u0011a\u0017M\\4\n\t\t%$1\r\u0002\u0007\u001f\nTWm\u0019;")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ListBuffer.class */
public final class ListBuffer<A> extends AbstractBuffer<A> implements Builder<A, List<A>>, SeqForwarder<A>, Serializable {
    public static final long serialVersionUID = 3419063961353022662L;
    private C$colon$colon<A> last0;
    private List<A> scala$collection$mutable$ListBuffer$$start = Nil$.MODULE$;
    private boolean exported = false;
    private int len = 0;

    public ListBuffer() {
        Builder.Cclass.$init$(this);
        TraversableForwarder.Cclass.$init$(this);
        IterableForwarder.Cclass.$init$(this);
        SeqForwarder.Cclass.$init$(this);
    }

    public static GenTraversableFactory<ListBuffer>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) ListBuffer$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<ListBuffer<?>, A, ListBuffer<A>> canBuildFrom() {
        return ListBuffer$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(Seq seq) {
        return ListBuffer$.MODULE$.concat(seq);
    }

    private void copy() {
        if (isEmpty()) {
            return;
        }
        List<A> tail = last0().tail();
        clear();
        for (List<A> scala$collection$mutable$ListBuffer$$start = scala$collection$mutable$ListBuffer$$start(); scala$collection$mutable$ListBuffer$$start != tail; scala$collection$mutable$ListBuffer$$start = (List) scala$collection$mutable$ListBuffer$$start.tail()) {
            $plus$eq((ListBuffer<A>) scala$collection$mutable$ListBuffer$$start.head());
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable empty() {
        return ListBuffer$.MODULE$.empty();
    }

    private boolean exported() {
        return this.exported;
    }

    private void exported_$eq(boolean z) {
        this.exported = z;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return ListBuffer$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return ListBuffer$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return ListBuffer$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return ListBuffer$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return ListBuffer$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return ListBuffer$.MODULE$.iterate(obj, i, function1);
    }

    private C$colon$colon<A> last0() {
        return this.last0;
    }

    private void last0_$eq(C$colon$colon<A> c$colon$colon) {
        this.last0 = c$colon$colon;
    }

    private int len() {
        return this.len;
    }

    private void len_$eq(int i) {
        this.len = i;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return ListBuffer$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return ListBuffer$.MODULE$.range(obj, obj2, integral);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        Object readObject = objectInputStream.readObject();
        ListSerializeEnd$ listSerializeEnd$ = ListSerializeEnd$.MODULE$;
        if (readObject != null && readObject.equals(listSerializeEnd$)) {
            scala$collection$mutable$ListBuffer$$start_$eq(Nil$.MODULE$);
            last0_$eq(null);
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else {
            C$colon$colon<A> c$colon$colon = new C$colon$colon<>(readObject, Nil$.MODULE$);
            scala$collection$mutable$ListBuffer$$start_$eq(c$colon$colon);
            Object readObject2 = objectInputStream.readObject();
            while (true) {
                Object obj = readObject2;
                ListSerializeEnd$ listSerializeEnd$2 = ListSerializeEnd$.MODULE$;
                if (obj != null && obj.equals(listSerializeEnd$2)) {
                    break;
                }
                C$colon$colon<A> c$colon$colon2 = new C$colon$colon<>(obj, Nil$.MODULE$);
                c$colon$colon.tl_$eq(c$colon$colon2);
                c$colon$colon = c$colon$colon2;
                readObject2 = objectInputStream.readObject();
            }
            last0_$eq(c$colon$colon);
            scala$collection$mutable$ListBuffer$$start();
        }
        exported_$eq(objectInputStream.readBoolean());
        len_$eq(objectInputStream.readInt());
    }

    private void reduceLengthBy(int i) {
        len_$eq(len() - i);
        if (len() <= 0) {
            last0_$eq(null);
        }
    }

    private void scala$collection$mutable$ListBuffer$$start_$eq(List<A> list) {
        this.scala$collection$mutable$ListBuffer$$start = list;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return ListBuffer$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return ListBuffer$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return ListBuffer$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return ListBuffer$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return ListBuffer$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(Seq seq) {
        return ListBuffer$.MODULE$.unapplySeq(seq);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        List<A> scala$collection$mutable$ListBuffer$$start = scala$collection$mutable$ListBuffer$$start();
        while (true) {
            List<A> list = scala$collection$mutable$ListBuffer$$start;
            if (list.isEmpty()) {
                objectOutputStream.writeObject(ListSerializeEnd$.MODULE$);
                objectOutputStream.writeBoolean(exported());
                objectOutputStream.writeInt(len());
                return;
            }
            objectOutputStream.writeObject(list.head());
            scala$collection$mutable$ListBuffer$$start = (List) list.tail();
        }
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $colon$bslash(B b, Function2<A, B, B> function2) {
        Object $colon$bslash;
        $colon$bslash = underlying().$colon$bslash(b, function2);
        return (B) $colon$bslash;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $div$colon(B b, Function2<B, A, B> function2) {
        Object $div$colon;
        $div$colon = underlying().$div$colon(b, function2);
        return (B) $div$colon;
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.BufferLike, scala.collection.generic.Shrinkable
    public ListBuffer<A> $minus$eq(A a) {
        List<A> list;
        if (exported()) {
            copy();
        }
        if (!isEmpty()) {
            A head = scala$collection$mutable$ListBuffer$$start().head();
            if (head == a ? true : head == null ? false : head instanceof Number ? BoxesRunTime.equalsNumObject((Number) head, a) : head instanceof Character ? BoxesRunTime.equalsCharObject((Character) head, a) : head.equals(a)) {
                scala$collection$mutable$ListBuffer$$start_$eq((List) scala$collection$mutable$ListBuffer$$start().tail());
                reduceLengthBy(1);
            } else {
                List<A> scala$collection$mutable$ListBuffer$$start = scala$collection$mutable$ListBuffer$$start();
                while (true) {
                    list = scala$collection$mutable$ListBuffer$$start;
                    if (((SeqLike) list.tail()).isEmpty()) {
                        break;
                    }
                    Object head2 = ((IterableLike) list.tail()).head();
                    if (head2 == a ? true : head2 == null ? false : head2 instanceof Number ? BoxesRunTime.equalsNumObject((Number) head2, a) : head2 instanceof Character ? BoxesRunTime.equalsCharObject((Character) head2, a) : head2.equals(a)) {
                        break;
                    }
                    scala$collection$mutable$ListBuffer$$start = (List) list.tail();
                }
                if (!((SeqLike) list.tail()).isEmpty()) {
                    C$colon$colon<A> c$colon$colon = (C$colon$colon) list;
                    List<A> m160tl = c$colon$colon.m160tl();
                    C$colon$colon<A> last0 = last0();
                    if (m160tl != null ? m160tl.equals(last0) : last0 == null) {
                        last0_$eq(c$colon$colon);
                    }
                    c$colon$colon.tl_$eq((List) ((TraversableLike) list.tail()).tail());
                    reduceLengthBy(1);
                }
            }
        }
        return this;
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Growable
    public ListBuffer<A> $plus$eq(A a) {
        if (exported()) {
            copy();
        }
        if (isEmpty()) {
            last0_$eq(new C$colon$colon<>(a, Nil$.MODULE$));
            scala$collection$mutable$ListBuffer$$start_$eq(last0());
        } else {
            C$colon$colon<A> last0 = last0();
            last0_$eq(new C$colon$colon<>(a, Nil$.MODULE$));
            last0.tl_$eq(last0());
        }
        len_$eq(len() + 1);
        return this;
    }

    @Override // scala.collection.mutable.BufferLike
    public ListBuffer<A> $plus$eq$colon(A a) {
        if (exported()) {
            copy();
        }
        C$colon$colon<A> c$colon$colon = new C$colon$colon<>(a, scala$collection$mutable$ListBuffer$$start());
        if (isEmpty()) {
            last0_$eq(c$colon$colon);
        }
        scala$collection$mutable$ListBuffer$$start_$eq(c$colon$colon);
        len_$eq(len() + 1);
        return this;
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.generic.Growable
    public ListBuffer<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        while ((traversableOnce instanceof Object) && traversableOnce == this) {
            traversableOnce = (TraversableOnce) take(size());
        }
        return (ListBuffer) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.BufferLike
    public ListBuffer<A> $plus$plus$eq$colon(TraversableOnce<A> traversableOnce) {
        while (traversableOnce == this) {
            traversableOnce = (TraversableOnce) take(size());
        }
        return (ListBuffer) insertAll(0, traversableOnce.toTraversable());
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder) {
        return TraversableForwarder.Cclass.addString(this, stringBuilder);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str) {
        return TraversableForwarder.Cclass.addString(this, stringBuilder, str);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
        return TraversableForwarder.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.collection.GenSeqLike
    public A apply(int i) {
        if (i < 0 || i >= len()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        return (A) SeqForwarder.Cclass.apply(this, i);
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        scala$collection$mutable$ListBuffer$$start_$eq(Nil$.MODULE$);
        last0_$eq(null);
        exported_$eq(false);
        len_$eq(0);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public ListBuffer<A> clone() {
        return new ListBuffer().$plus$plus$eq((TraversableOnce) this);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<ListBuffer> companion() {
        return ListBuffer$.MODULE$;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public <A1> boolean contains(A1 a1) {
        return SeqForwarder.Cclass.contains(this, a1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public <B> boolean containsSlice(GenSeq<B> genSeq) {
        return SeqForwarder.Cclass.containsSlice(this, genSeq);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj) {
        TraversableForwarder.Cclass.copyToArray(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj, int i) {
        TraversableForwarder.Cclass.copyToArray(this, obj, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> void copyToArray(Object obj, int i, int i2) {
        TraversableForwarder.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> void copyToBuffer(Buffer<B> buffer) {
        TraversableForwarder.Cclass.copyToBuffer(this, buffer);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
        return SeqForwarder.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<A, Object> function1) {
        return TraversableForwarder.Cclass.count(this, function1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean endsWith(GenSeq<B> genSeq) {
        return SeqForwarder.Cclass.endsWith(this, genSeq);
    }

    @Override // scala.collection.AbstractSeq, scala.Equals
    public boolean equals(Object obj) {
        return obj instanceof ListBuffer ? readOnly().equals(((ListBuffer) obj).readOnly()) : GenSeqLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return TraversableForwarder.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<A> find(Function1<A, Object> function1) {
        return TraversableForwarder.Cclass.find(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, A, B> function2) {
        return (B) TraversableForwarder.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<A, B, B> function2) {
        return (B) TraversableForwarder.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<A, Object> function1) {
        return TraversableForwarder.Cclass.forall(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <B> void foreach(Function1<A, B> function1) {
        TraversableForwarder.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return TraversableForwarder.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        return (A) TraversableForwarder.Cclass.head(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<A> headOption() {
        return TraversableForwarder.Cclass.headOption(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public <B> int indexOf(B b) {
        return SeqForwarder.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public <B> int indexOf(B b, int i) {
        return SeqForwarder.Cclass.indexOf(this, b, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public <B> int indexOfSlice(GenSeq<B> genSeq) {
        return SeqForwarder.Cclass.indexOfSlice(this, genSeq);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public <B> int indexOfSlice(GenSeq<B> genSeq, int i) {
        return SeqForwarder.Cclass.indexOfSlice(this, genSeq, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int indexWhere(Function1<A, Object> function1) {
        return SeqForwarder.Cclass.indexWhere(this, function1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<A, Object> function1, int i) {
        return SeqForwarder.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public Range indices() {
        return SeqForwarder.Cclass.indices(this);
    }

    @Override // scala.collection.mutable.BufferLike
    public void insertAll(int i, Traversable<A> traversable) {
        List<A> list;
        if (i < 0 || i > len()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        if (exported()) {
            copy();
        }
        List<A> reverse = traversable.toList().reverse();
        len_$eq(len() + reverse.length());
        if (i == 0) {
            while (!reverse.isEmpty()) {
                C$colon$colon<A> c$colon$colon = new C$colon$colon<>(reverse.head(), scala$collection$mutable$ListBuffer$$start());
                if (scala$collection$mutable$ListBuffer$$start().isEmpty()) {
                    last0_$eq(c$colon$colon);
                }
                scala$collection$mutable$ListBuffer$$start_$eq(c$colon$colon);
                reverse = (List) reverse.tail();
            }
            return;
        }
        List<A> scala$collection$mutable$ListBuffer$$start = scala$collection$mutable$ListBuffer$$start();
        int i2 = 1;
        while (true) {
            if (i2 < i) {
                scala$collection$mutable$ListBuffer$$start = (List) scala$collection$mutable$ListBuffer$$start.tail();
                i2++;
            }
        }
        for (list = reverse; !list.isEmpty(); list = (List) list.tail()) {
            C$colon$colon<A> c$colon$colon2 = new C$colon$colon<>(list.head(), (List) scala$collection$mutable$ListBuffer$$start.tail());
            if (((SeqLike) scala$collection$mutable$ListBuffer$$start.tail()).isEmpty()) {
                last0_$eq(c$colon$colon2);
            }
            ((C$colon$colon) scala$collection$mutable$ListBuffer$$start).tl_$eq(c$colon$colon2);
        }
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return SeqForwarder.Cclass.isDefinedAt(this, i);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return TraversableForwarder.Cclass.isEmpty(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return new AbstractIterator<A>(this) { // from class: scala.collection.mutable.ListBuffer$$anon$1
            private List<A> cursor;

            {
                this.cursor = this.isEmpty() ? Nil$.MODULE$ : this.scala$collection$mutable$ListBuffer$$start();
            }

            private List<A> cursor() {
                return this.cursor;
            }

            private void cursor_$eq(List<A> list) {
                this.cursor = list;
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return cursor() != Nil$.MODULE$;
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [A, java.lang.Object] */
            @Override // scala.collection.Iterator
            public A next() {
                if (hasNext()) {
                    ?? head = cursor().head();
                    cursor_$eq((List) cursor().tail());
                    return head;
                }
                throw new NoSuchElementException("next on empty Iterator");
            }
        };
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public A last() {
        return (A) TraversableForwarder.Cclass.last(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b) {
        return SeqForwarder.Cclass.lastIndexOf(this, b);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b, int i) {
        return SeqForwarder.Cclass.lastIndexOf(this, b, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public <B> int lastIndexOfSlice(GenSeq<B> genSeq) {
        return SeqForwarder.Cclass.lastIndexOfSlice(this, genSeq);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public <B> int lastIndexOfSlice(GenSeq<B> genSeq, int i) {
        return SeqForwarder.Cclass.lastIndexOfSlice(this, genSeq, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int lastIndexWhere(Function1<A, Object> function1) {
        return SeqForwarder.Cclass.lastIndexWhere(this, function1);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<A, Object> function1, int i) {
        return SeqForwarder.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<A> lastOption() {
        return TraversableForwarder.Cclass.lastOption(this);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return len();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public int lengthCompare(int i) {
        return SeqForwarder.Cclass.lengthCompare(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<A, NewTo> mapResult(Function1<List<A>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A max(Ordering<B> ordering) {
        return (A) TraversableForwarder.Cclass.max(this, ordering);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A min(Ordering<B> ordering) {
        return (A) TraversableForwarder.Cclass.min(this, ordering);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString() {
        return TraversableForwarder.Cclass.mkString(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str) {
        return TraversableForwarder.Cclass.mkString(this, str);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str, String str2, String str3) {
        return TraversableForwarder.Cclass.mkString(this, str, str2, str3);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return TraversableForwarder.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public int prefixLength(Function1<A, Object> function1) {
        return SeqForwarder.Cclass.prefixLength(this, function1);
    }

    public List<A> prependToList(List<A> list) {
        if (!isEmpty()) {
            if (exported()) {
                copy();
            }
            last0().tl_$eq(list);
            list = toList();
        }
        return list;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B product(Numeric<B> numeric) {
        return (B) TraversableForwarder.Cclass.product(this, numeric);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.BufferLike
    public List<A> readOnly() {
        return scala$collection$mutable$ListBuffer$$start();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, A, B> function2) {
        return (B) TraversableForwarder.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceLeftOption(Function2<B, A, B> function2) {
        return TraversableForwarder.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<A, B, B> function2) {
        return (B) TraversableForwarder.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
        return TraversableForwarder.Cclass.reduceRightOption(this, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.collection.mutable.BufferLike
    public A remove(int i) {
        if (i < 0 || i >= len()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        if (exported()) {
            copy();
        }
        A head = scala$collection$mutable$ListBuffer$$start().head();
        if (i == 0) {
            scala$collection$mutable$ListBuffer$$start_$eq((List) scala$collection$mutable$ListBuffer$$start().tail());
        } else {
            List<A> scala$collection$mutable$ListBuffer$$start = scala$collection$mutable$ListBuffer$$start();
            for (int i2 = 1; i2 < i; i2++) {
                scala$collection$mutable$ListBuffer$$start = (List) scala$collection$mutable$ListBuffer$$start.tail();
            }
            Object head2 = ((IterableLike) scala$collection$mutable$ListBuffer$$start.tail()).head();
            if (last0() == scala$collection$mutable$ListBuffer$$start.tail()) {
                last0_$eq((C$colon$colon) scala$collection$mutable$ListBuffer$$start);
            }
            ((C$colon$colon) scala$collection$mutable$ListBuffer$$start).tl_$eq((List) ((TraversableLike) scala$collection$mutable$ListBuffer$$start.tail()).tail());
            head = head2;
        }
        reduceLengthBy(1);
        return head;
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.BufferLike
    public void remove(int i, int i2) {
        if (i >= len()) {
            return;
        }
        if (i2 < 0) {
            throw new IllegalArgumentException(new StringContext(Predef$.MODULE$.wrapRefArray(new String[]{"removing negative number (", ") of elements"})).m361s(Predef$.MODULE$.genericWrapArray(new Object[]{BoxesRunTime.boxToInteger(i2)})));
        }
        if (exported()) {
            copy();
        }
        RichInt$ richInt$ = RichInt$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        int max$extension = richInt$.max$extension(i, 0);
        RichInt$ richInt$2 = RichInt$.MODULE$;
        Predef$ predef$2 = Predef$.MODULE$;
        int min$extension = richInt$2.min$extension(i2, len() - max$extension);
        if (max$extension == 0) {
            for (int i3 = min$extension; i3 > 0; i3--) {
                scala$collection$mutable$ListBuffer$$start_$eq((List) scala$collection$mutable$ListBuffer$$start().tail());
            }
        } else {
            List<A> scala$collection$mutable$ListBuffer$$start = scala$collection$mutable$ListBuffer$$start();
            for (int i4 = 1; i4 < max$extension; i4++) {
                scala$collection$mutable$ListBuffer$$start = (List) scala$collection$mutable$ListBuffer$$start.tail();
            }
            for (int i5 = min$extension; i5 > 0; i5--) {
                if (last0() == scala$collection$mutable$ListBuffer$$start.tail()) {
                    last0_$eq((C$colon$colon) scala$collection$mutable$ListBuffer$$start);
                }
                ((C$colon$colon) scala$collection$mutable$ListBuffer$$start).tl_$eq((List) ((TraversableLike) scala$collection$mutable$ListBuffer$$start.tail()).tail());
            }
        }
        reduceLengthBy(min$extension);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.mutable.Builder
    public List<A> result() {
        return toList();
    }

    @Override // scala.collection.AbstractSeq, scala.collection.SeqLike
    public Iterator<A> reverseIterator() {
        return SeqForwarder.Cclass.reverseIterator(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return IterableForwarder.Cclass.sameElements(this, genIterable);
    }

    public List<A> scala$collection$mutable$ListBuffer$$start() {
        return this.scala$collection$mutable$ListBuffer$$start;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<A, Object> function1, int i) {
        return SeqForwarder.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return length();
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

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq) {
        return SeqForwarder.Cclass.startsWith(this, genSeq);
    }

    @Override // scala.collection.AbstractSeq, scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
        return SeqForwarder.Cclass.startsWith(this, genSeq, i);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return "ListBuffer";
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B sum(Numeric<B> numeric) {
        return (B) TraversableForwarder.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object toArray(ClassTag<B> classTag) {
        return TraversableForwarder.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Buffer<B> toBuffer() {
        return TraversableForwarder.Cclass.toBuffer(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<A> toIndexedSeq() {
        return TraversableForwarder.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterable<A> toIterable() {
        return TraversableForwarder.Cclass.toIterable(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<A> toList() {
        exported_$eq(!isEmpty());
        return scala$collection$mutable$ListBuffer$$start();
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <T, U> Map<T, U> toMap(Predef$$less$colon$less<A, Tuple2<T, U>> predef$$less$colon$less) {
        return TraversableForwarder.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.mutable.AbstractBuffer, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<A> toSeq() {
        return TraversableForwarder.Cclass.toSeq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return TraversableForwarder.Cclass.toSet(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<A> toStream() {
        return TraversableForwarder.Cclass.toStream(this);
    }

    @Override // scala.collection.generic.SeqForwarder, scala.collection.generic.IterableForwarder, scala.collection.generic.TraversableForwarder
    public List<A> underlying() {
        return scala$collection$mutable$ListBuffer$$start();
    }

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    public void update(int i, A a) {
        if (i < 0 || i >= len()) {
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }
        if (exported()) {
            copy();
        }
        if (i == 0) {
            C$colon$colon<A> c$colon$colon = new C$colon$colon<>(a, (List) scala$collection$mutable$ListBuffer$$start().tail());
            if (last0() == scala$collection$mutable$ListBuffer$$start()) {
                last0_$eq(c$colon$colon);
            }
            scala$collection$mutable$ListBuffer$$start_$eq(c$colon$colon);
            return;
        }
        List<A> scala$collection$mutable$ListBuffer$$start = scala$collection$mutable$ListBuffer$$start();
        for (int i2 = 1; i2 < i; i2++) {
            scala$collection$mutable$ListBuffer$$start = (List) scala$collection$mutable$ListBuffer$$start.tail();
        }
        C$colon$colon<A> c$colon$colon2 = new C$colon$colon<>(a, (List) ((TraversableLike) scala$collection$mutable$ListBuffer$$start.tail()).tail());
        if (last0() == scala$collection$mutable$ListBuffer$$start.tail()) {
            last0_$eq(c$colon$colon2);
        }
        ((C$colon$colon) scala$collection$mutable$ListBuffer$$start).tl_$eq(c$colon$colon2);
    }
}
