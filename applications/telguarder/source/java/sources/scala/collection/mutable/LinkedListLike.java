package scala.collection.mutable;

import java.util.NoSuchElementException;
import scala.Function1;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.collection.AbstractIterator;
import scala.collection.Iterator;
import scala.collection.mutable.LinkedListLike;
import scala.collection.mutable.Seq;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005=c\u0001C\u0001\u0003!\u0003\r\t!\u0003\u0015\u0003\u001d1Kgn[3e\u0019&\u001cH\u000fT5lK*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQQcH\n\u0004\u0001-y\u0001C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB!\u0001#E\n\u001f\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\u001d\u0019V-\u001d'jW\u0016\u0004\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\bC\u0001\u000b \t\u0015\u0001\u0003A1\u0001\"\u0005\u0011!\u0006.[:\u0012\u0005a\u0011#cA\u0012&Q\u0019!A\u0005\u0001\u0001#\u00051a$/\u001a4j]\u0016lWM\u001c;?!\r\u0001beE\u0005\u0003O\t\u00111aU3r!\u0011\u0001\u0002a\u0005\u0010\t\u000b)\u0002A\u0011A\u0016\u0002\r\u0011Jg.\u001b;%)\u0005a\u0003C\u0001\u0007.\u0013\tqcA\u0001\u0003V]&$\b\"\u0003\u0019\u0001\u0001\u0004\u0005\r\u0011\"\u00012\u0003\u0011)G.Z7\u0016\u0003MA\u0011b\r\u0001A\u0002\u0003\u0007I\u0011\u0001\u001b\u0002\u0011\u0015dW-\\0%KF$\"\u0001L\u001b\t\u000fY\u0012\u0014\u0011!a\u0001'\u0005\u0019\u0001\u0010J\u0019\t\ra\u0002\u0001\u0015)\u0003\u0014\u0003\u0015)G.Z7!\u0011%Q\u0004\u00011AA\u0002\u0013\u00051(\u0001\u0003oKb$X#\u0001\u0010\t\u0013u\u0002\u0001\u0019!a\u0001\n\u0003q\u0014\u0001\u00038fqR|F%Z9\u0015\u00051z\u0004b\u0002\u001c=\u0003\u0003\u0005\rA\b\u0005\u0007\u0003\u0002\u0001\u000b\u0015\u0002\u0010\u0002\u000b9,\u0007\u0010\u001e\u0011\t\u000b\r\u0003A\u0011\t#\u0002\u000f%\u001cX)\u001c9usV\tQ\t\u0005\u0002\r\r&\u0011qI\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015I\u0005\u0001\"\u0011K\u0003\u0019aWM\\4uQV\t1\n\u0005\u0002\r\u0019&\u0011QJ\u0002\u0002\u0004\u0013:$\b\"B(\u0001\t\u0013\u0001\u0016a\u00027f]\u001e$\b\u000e\r\u000b\u0004\u0017F\u0013\u0006\"\u0002\u0019O\u0001\u0004q\u0002\"B*O\u0001\u0004Y\u0015aA1dG\"\u0012a*\u0016\t\u0003-fk\u0011a\u0016\u0006\u00031\u001a\t!\"\u00198o_R\fG/[8o\u0013\tQvKA\u0004uC&d'/Z2\t\u000bq\u0003A\u0011I\u0019\u0002\t!,\u0017\r\u001a\u0005\u0006=\u0002!\teO\u0001\u0005i\u0006LG\u000eC\u0003a\u0001\u0011\u0005\u0011-\u0001\u0004baB,g\u000e\u001a\u000b\u0003=\tDQaY0A\u0002y\tA\u0001\u001e5bi\")Q\r\u0001C\u0001M\u00061\u0011N\\:feR$\"\u0001L4\t\u000b\r$\u0007\u0019\u0001\u0010\t\u000b%\u0004A\u0011\t6\u0002\t\u0011\u0014x\u000e\u001d\u000b\u0003=-DQ\u0001\u001c5A\u0002-\u000b\u0011A\u001c\u0005\u0006]\u0002!Ia\\\u0001\u000bCRdunY1uS>tWC\u00019t)\t\t(\u0010\u0006\u0002skB\u0011Ac\u001d\u0003\u0006i6\u0014\ra\u0006\u0002\u0002)\")a/\u001ca\u0001o\u0006\ta\r\u0005\u0003\rqz\u0011\u0018BA=\u0007\u0005%1UO\\2uS>t\u0017\u0007C\u0003m[\u0002\u00071\nC\u0003}\u0001\u0011\u0005S0A\u0003baBd\u0017\u0010\u0006\u0002\u0014}\")An\u001fa\u0001\u0017\"9\u0011\u0011\u0001\u0001\u0005\u0002\u0005\r\u0011AB;qI\u0006$X\rF\u0003-\u0003\u000b\t9\u0001C\u0003m\u007f\u0002\u00071\n\u0003\u0004\u0002\n}\u0004\raE\u0001\u0002q\"9\u0011Q\u0002\u0001\u0005\u0002\u0005=\u0011aA4fiR!\u0011\u0011CA\f!\u0011a\u00111C\n\n\u0007\u0005UaA\u0001\u0004PaRLwN\u001c\u0005\u0007Y\u0006-\u0001\u0019A&\t\u000f\u0005m\u0001\u0001\"\u0011\u0002\u001e\u0005A\u0011\u000e^3sCR|'/\u0006\u0002\u0002 A)\u0011\u0011EA\u0012'5\tA!C\u0002\u0002&\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\b\u0003S\u0001A\u0011IA\u0016\u0003\u001d1wN]3bG\",B!!\f\u00026Q\u0019A&a\f\t\u000fY\f9\u00031\u0001\u00022A)A\u0002_\n\u00024A\u0019A#!\u000e\u0005\u000f\u0005]\u0012q\u0005b\u0001/\t\t!\tC\u0004\u0002<\u0001!\t%!\u0010\u0002\u000b\rdwN\\3\u0015\u0003yAs\u0001AA!\u0003\u000f\nY\u0005E\u0002\r\u0003\u0007J1!!\u0012\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0003\u0003\u0013\n\u0011\rT8x[1,g/\u001a7!Y&t7.\u001a3!Y&\u001cHo\u001d\u0011be\u0016\u0004C-\u001a9sK\u000e\fG/\u001a3!IV,\u0007\u0005^8!S\u0012Lwn]=oGJ\f7/[3tA%t\u0007%\u001b8uKJ4\u0017mY3!C:$\u0007%\u001b8d_6\u0004H.\u001a;fA\u0019,\u0017\r^;sKNt\u0013EAA'\u0003\u0019\u0011d&M\u0019/a\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedListLike.class */
public interface LinkedListLike<A, This extends Seq<A> & LinkedListLike<A, This>> extends SeqLike<A, This> {

    /* renamed from: scala.collection.mutable.LinkedListLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedListLike$class.class */
    public abstract class Cclass {
        public static void $init$(LinkedListLike linkedListLike) {
        }

        public static Seq append(LinkedListLike linkedListLike, Seq seq) {
            if (!linkedListLike.isEmpty()) {
                loop$1(linkedListLike, (Seq) linkedListLike.repr(), seq);
                seq = (Seq) linkedListLike.repr();
            }
            return seq;
        }

        public static Object apply(LinkedListLike linkedListLike, int i) {
            return atLocation(linkedListLike, i, new LinkedListLike$$anonfun$apply$1(linkedListLike));
        }

        private static Object atLocation(LinkedListLike linkedListLike, int i, Function1 function1) {
            Seq drop = linkedListLike.drop(i);
            if (drop.nonEmpty()) {
                return function1.apply(drop);
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        public static Seq clone(LinkedListLike linkedListLike) {
            Builder<A, This> newBuilder = linkedListLike.newBuilder();
            newBuilder.$plus$plus$eq(linkedListLike);
            return (Seq) newBuilder.result();
        }

        public static Seq drop(LinkedListLike linkedListLike, int i) {
            Seq seq = (Seq) linkedListLike.repr();
            for (int i2 = 0; i2 < i; i2++) {
                LinkedListLike linkedListLike2 = (LinkedListLike) seq;
                if (linkedListLike2.isEmpty()) {
                    break;
                }
                seq = linkedListLike2.next();
            }
            return seq;
        }

        public static void foreach(LinkedListLike linkedListLike, Function1 function1) {
            while (linkedListLike.nonEmpty()) {
                function1.apply(linkedListLike.elem());
                linkedListLike = (LinkedListLike) linkedListLike.next();
            }
        }

        public static Option get(LinkedListLike linkedListLike, int i) {
            Seq drop = linkedListLike.drop(i);
            return drop.nonEmpty() ? new Some(((LinkedListLike) drop).elem()) : None$.MODULE$;
        }

        public static Object head(LinkedListLike linkedListLike) {
            if (!linkedListLike.isEmpty()) {
                return linkedListLike.elem();
            }
            throw new NoSuchElementException();
        }

        public static void insert(LinkedListLike linkedListLike, Seq seq) {
            Predef$ predef$ = Predef$.MODULE$;
            if (linkedListLike.nonEmpty()) {
                if (!seq.nonEmpty()) {
                    return;
                }
                ((LinkedListLike) seq).append(linkedListLike.next());
                linkedListLike.next_$eq(seq);
                return;
            }
            throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) "insert into empty list").toString());
        }

        public static boolean isEmpty(LinkedListLike linkedListLike) {
            return linkedListLike.next() == linkedListLike;
        }

        public static Iterator iterator(LinkedListLike linkedListLike) {
            return new AbstractIterator<A>(linkedListLike) { // from class: scala.collection.mutable.LinkedListLike$$anon$1
                private LinkedListLike<A, This> elems;

                {
                    this.elems = linkedListLike;
                }

                private LinkedListLike<A, This> elems() {
                    return this.elems;
                }

                private void elems_$eq(LinkedListLike<A, This> linkedListLike2) {
                    this.elems = linkedListLike2;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return elems().nonEmpty();
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [A, java.lang.Object] */
                @Override // scala.collection.Iterator
                public A next() {
                    ?? elem = elems().elem();
                    elems_$eq((LinkedListLike) elems().next());
                    return elem;
                }
            };
        }

        public static int length(LinkedListLike linkedListLike) {
            return length0(linkedListLike, (Seq) linkedListLike.repr(), 0);
        }

        private static int length0(LinkedListLike linkedListLike, Seq seq, int i) {
            while (true) {
                LinkedListLike linkedListLike2 = (LinkedListLike) seq;
                if (linkedListLike2.isEmpty()) {
                    return i;
                }
                seq = linkedListLike2.next();
                i++;
            }
        }

        private static final void loop$1(LinkedListLike linkedListLike, Seq seq, Seq seq2) {
            while (true) {
                LinkedListLike linkedListLike2 = (LinkedListLike) seq;
                if (((LinkedListLike) linkedListLike2.next()).isEmpty()) {
                    linkedListLike2.next_$eq(seq2);
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    return;
                }
                seq = linkedListLike2.next();
            }
        }

        public static Seq tail(LinkedListLike linkedListLike) {
            Predef$ predef$ = Predef$.MODULE$;
            if (linkedListLike.nonEmpty()) {
                return linkedListLike.next();
            }
            throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) "tail of empty list").toString());
        }

        public static void update(LinkedListLike linkedListLike, int i, Object obj) {
            atLocation(linkedListLike, i, new LinkedListLike$$anonfun$update$1(linkedListLike, obj));
        }
    }

    Seq append(Seq seq);

    @Override // scala.collection.SeqLike, scala.collection.GenSeqLike
    A apply(int i);

    @Override // scala.collection.mutable.Cloneable
    Seq clone();

    @Override // scala.collection.IterableLike
    Seq drop(int i);

    A elem();

    @TraitSetter
    void elem_$eq(A a);

    @Override // scala.collection.IterableLike
    <B> void foreach(Function1<A, B> function1);

    Option<A> get(int i);

    @Override // scala.collection.IterableLike
    A head();

    void insert(Seq seq);

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<A> iterator();

    @Override // scala.collection.SeqLike, scala.collection.GenSeqLike
    int length();

    Seq next();

    @TraitSetter
    void next_$eq(Seq seq);

    Seq tail();

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    void update(int i, A a);
}
