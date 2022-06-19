package scala.collection;

import scala.Tuple2;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.generic.CanBuildFrom;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0005daB\u0001\u0003!\u0003\r\ta\u0002\u0002\u0012\u0013R,'/\u00192mKB\u0013x\u000e_=MS.,'BA\u0002\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001Qc\u0001\u0005\u0014;M!\u0001!C\u0007'!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\u0005\u001d=\tB$D\u0001\u0003\u0013\t\u0001\"A\u0001\u0007Ji\u0016\u0014\u0018M\u00197f\u0019&\\W\r\u0005\u0002\u0013'1\u0001AA\u0002\u000b\u0001\t\u000b\u0007QCA\u0001B#\t1\u0012\u0004\u0005\u0002\u000b/%\u0011\u0001\u0004\u0002\u0002\b\u001d>$\b.\u001b8h!\tQ!$\u0003\u0002\u001c\t\t\u0019\u0011I\\=\u0011\u0005IiBA\u0002\u0010\u0001\t\u000b\u0007qD\u0001\u0003SKB\u0014\u0018C\u0001\f!%\r\tSb\t\u0004\u0005E\u0001\u0001\u0001E\u0001\u0007=e\u00164\u0017N\\3nK:$h\bE\u0002\u000fIEI!!\n\u0002\u0003\u0011%#XM]1cY\u0016\u0004BAD\u0014\u00129%\u0011\u0001F\u0001\u0002\u0015)J\fg/\u001a:tC\ndW\r\u0015:pqfd\u0015n[3\t\u000b)\u0002A\u0011A\u0016\u0002\r\u0011Jg.\u001b;%)\u0005a\u0003C\u0001\u0006.\u0013\tqCA\u0001\u0003V]&$\b\"\u0002\u0019\u0001\t\u0003\n\u0014\u0001C5uKJ\fGo\u001c:\u0016\u0003I\u00022AD\u001a\u0012\u0013\t!$A\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u00151\u0004\u0001\"\u00118\u0003\u001d9'o\\;qK\u0012$\"\u0001O\u001d\u0011\u00079\u0019D\u0004C\u0003;k\u0001\u00071(\u0001\u0003tSj,\u0007C\u0001\u0006=\u0013\tiDAA\u0002J]RDQa\u0010\u0001\u0005B\u0001\u000bqa\u001d7jI&tw\r\u0006\u00029\u0003\")!H\u0010a\u0001w!)q\b\u0001C!\u0007R\u0019\u0001\bR#\t\u000bi\u0012\u0005\u0019A\u001e\t\u000b\u0019\u0013\u0005\u0019A\u001e\u0002\tM$X\r\u001d\u0005\u0006\u0011\u0002!\t%S\u0001\ni\u0006\\WMU5hQR$\"\u0001\b&\t\u000b-;\u0005\u0019A\u001e\u0002\u00039DQ!\u0014\u0001\u0005B9\u000b\u0011\u0002\u001a:paJKw\r\u001b;\u0015\u0005qy\u0005\"B&M\u0001\u0004Y\u0004\"B)\u0001\t\u0003\u0012\u0016a\u0001>jaV!1\u000b\u001a5W)\t!&\u000e\u0006\u0002V1B\u0011!C\u0016\u0003\u0006/B\u0013\r!\u0006\u0002\u0005)\"\fG\u000fC\u0003Z!\u0002\u000f!,\u0001\u0002cMB)1L\u0018\u000fa+6\tAL\u0003\u0002^\u0005\u00059q-\u001a8fe&\u001c\u0017BA0]\u00051\u0019\u0015M\u001c\"vS2$gI]8n!\u0011Q\u0011mY4\n\u0005\t$!A\u0002+va2,'\u0007\u0005\u0002\u0013I\u0012)Q\r\u0015b\u0001M\n\u0011\u0011)M\t\u0003#e\u0001\"A\u00055\u0005\u000b%\u0004&\u0019A\u000b\u0003\u0003\tCQa\u001b)A\u00021\fA\u0001\u001e5biB\u0019a\"\\4\n\u00059\u0014!aC$f]&#XM]1cY\u0016DQ\u0001\u001d\u0001\u0005BE\faA_5q\u00032dW\u0003\u0002:}uV$Ra]?��\u0003\u0007!\"\u0001\u001e<\u0011\u0005I)H!B,p\u0005\u0004)\u0002\"B-p\u0001\b9\b#B._9a$\b\u0003\u0002\u0006bsn\u0004\"A\u0005>\u0005\u000b\u0015|'\u0019\u00014\u0011\u0005IaH!B5p\u0005\u0004)\u0002\"B6p\u0001\u0004q\bc\u0001\bnw\"1\u0011\u0011A8A\u0002e\f\u0001\u0002\u001e5jg\u0016cW-\u001c\u0005\u0007\u0003\u000by\u0007\u0019A>\u0002\u0011QD\u0017\r^#mK6Dq!!\u0003\u0001\t\u0003\nY!\u0001\u0007{SB<\u0016\u000e\u001e5J]\u0012,\u00070\u0006\u0004\u0002\u000e\u0005m\u0011\u0011\u0003\u000b\u0005\u0003\u001f\t\u0019\u0002E\u0002\u0013\u0003#!aaVA\u0004\u0005\u0004)\u0002bB-\u0002\b\u0001\u000f\u0011Q\u0003\t\b7zc\u0012qCA\b!\u0015Q\u0011-!\u0007<!\r\u0011\u00121\u0004\u0003\u0007K\u0006\u001d!\u0019\u00014\t\u000f\u0005}\u0001\u0001\"\u0011\u0002\"\u0005a1/Y7f\u000b2,W.\u001a8ugV!\u00111EA\u0019)\u0011\t)#a\u000b\u0011\u0007)\t9#C\u0002\u0002*\u0011\u0011qAQ8pY\u0016\fg\u000eC\u0004l\u0003;\u0001\r!!\f\u0011\t9i\u0017q\u0006\t\u0004%\u0005EBAB5\u0002\u001e\t\u0007a\rC\u0004\u00026\u0001!\t%a\u000e\u0002\tYLWm^\u000b\u0003\u0003s\u0011R!a\u000f\n\u0003\u007f1QA\t\u0001\u0001\u0003sI1!!\u000e\u0010!\u0015q\u0011\u0011I\t\u001d\u0013\r\t\u0019E\u0001\u0002\r\u0013R,'/\u00192mKZKWm\u001e\u0005\b\u0003k\u0001A\u0011IA$)\u0019\ty$!\u0013\u0002N!9\u00111JA#\u0001\u0004Y\u0014\u0001\u00024s_6Dq!a\u0014\u0002F\u0001\u00071(A\u0003v]RLG\u000eK\u0004\u0001\u0003'\nI&!\u0018\u0011\u0007)\t)&C\u0002\u0002X\u0011\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\t\tY&A#Qe>D\u00180\u001b8hA%\u001c\b\u0005Z3qe\u0016\u001c\u0017\r^3eA\u0011,X\r\t;pA1\f7m\u001b\u0011pM\u0002*8/\u001a\u0011b]\u0012\u00043m\\7qS2,'/\f7fm\u0016d\u0007e];qa>\u0014HOL\u0011\u0003\u0003?\naA\r\u00182c9\u0002\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/IterableProxyLike.class */
public interface IterableProxyLike<A, Repr extends IterableLike<A, Repr> & Iterable<A>> extends IterableLike<A, Repr>, TraversableProxyLike<A, Repr> {

    /* renamed from: scala.collection.IterableProxyLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/IterableProxyLike$class.class */
    public abstract class Cclass {
        public static void $init$(IterableProxyLike iterableProxyLike) {
        }

        public static Iterable dropRight(IterableProxyLike iterableProxyLike, int i) {
            return (Iterable) ((IterableLike) iterableProxyLike.self()).dropRight(i);
        }

        public static Iterator grouped(IterableProxyLike iterableProxyLike, int i) {
            return ((IterableLike) iterableProxyLike.self()).grouped(i);
        }

        public static Iterator iterator(IterableProxyLike iterableProxyLike) {
            return ((IterableLike) iterableProxyLike.self()).iterator();
        }

        public static boolean sameElements(IterableProxyLike iterableProxyLike, GenIterable genIterable) {
            return ((IterableLike) iterableProxyLike.self()).sameElements(genIterable);
        }

        public static Iterator sliding(IterableProxyLike iterableProxyLike, int i) {
            return ((IterableLike) iterableProxyLike.self()).sliding(i);
        }

        public static Iterator sliding(IterableProxyLike iterableProxyLike, int i, int i2) {
            return ((IterableLike) iterableProxyLike.self()).sliding(i, i2);
        }

        public static Iterable takeRight(IterableProxyLike iterableProxyLike, int i) {
            return (Iterable) ((IterableLike) iterableProxyLike.self()).takeRight(i);
        }

        public static IterableView view(IterableProxyLike iterableProxyLike) {
            return ((IterableLike) iterableProxyLike.self()).view();
        }

        public static IterableView view(IterableProxyLike iterableProxyLike, int i, int i2) {
            return ((IterableLike) iterableProxyLike.self()).view(i, i2);
        }

        public static Object zip(IterableProxyLike iterableProxyLike, GenIterable genIterable, CanBuildFrom canBuildFrom) {
            return ((IterableLike) iterableProxyLike.self()).zip(genIterable, canBuildFrom);
        }

        public static Object zipAll(IterableProxyLike iterableProxyLike, GenIterable genIterable, Object obj, Object obj2, CanBuildFrom canBuildFrom) {
            return ((IterableLike) iterableProxyLike.self()).zipAll(genIterable, obj, obj2, canBuildFrom);
        }

        public static Object zipWithIndex(IterableProxyLike iterableProxyLike, CanBuildFrom canBuildFrom) {
            return ((IterableLike) iterableProxyLike.self()).zipWithIndex(canBuildFrom);
        }
    }

    @Override // scala.collection.IterableLike
    Repr dropRight(int i);

    @Override // scala.collection.IterableLike
    Iterator<Repr> grouped(int i);

    @Override // scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<A> iterator();

    @Override // scala.collection.IterableLike
    <B> boolean sameElements(GenIterable<B> genIterable);

    @Override // scala.collection.IterableLike
    Iterator<Repr> sliding(int i);

    @Override // scala.collection.IterableLike
    Iterator<Repr> sliding(int i, int i2);

    @Override // scala.collection.IterableLike
    Repr takeRight(int i);

    @Override // scala.collection.IterableLike
    Object view();

    @Override // scala.collection.IterableLike
    IterableView<A, Repr> view(int i, int i2);

    @Override // scala.collection.IterableLike
    <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Repr, Tuple2<A1, B>, That> canBuildFrom);

    @Override // scala.collection.IterableLike
    <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<Repr, Tuple2<A1, B>, That> canBuildFrom);

    @Override // scala.collection.IterableLike
    <A1, That> That zipWithIndex(CanBuildFrom<Repr, Tuple2<A1, Object>, That> canBuildFrom);
}
