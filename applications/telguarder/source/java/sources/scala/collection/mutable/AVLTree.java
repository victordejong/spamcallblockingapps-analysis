package scala.collection.mutable;

import java.util.NoSuchElementException;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
import scala.sys.package$;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0015c\u0001C\u0001\u0003!\u0003\r\tC\u0001\u0005\u0003\u000f\u00053F\n\u0016:fK*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u000b\u0003\u00139\u001a2\u0001\u0001\u0006\u000f!\tYA\"D\u0001\u0007\u0013\tiaA\u0001\u0004B]f\u0014VM\u001a\t\u0003\u0017=I!\u0001\u0005\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u000bI\u0001A\u0011\u0001\u000b\u0002\r\u0011Jg.\u001b;%\u0007\u0001!\u0012!\u0006\t\u0003\u0017YI!a\u0006\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u00063\u00011\tAG\u0001\bE\u0006d\u0017M\\2f+\u0005Y\u0002CA\u0006\u001d\u0013\tibAA\u0002J]RDQa\b\u0001\u0007\u0002i\tQ\u0001Z3qi\"DQ!\t\u0001\u0005\u0002\t\n\u0001\"\u001b;fe\u0006$xN]\u000b\u0003G)*\u0012\u0001\n\t\u0004K\u0019BS\"\u0001\u0003\n\u0005\u001d\"!\u0001C%uKJ\fGo\u001c:\u0011\u0005%RC\u0002\u0001\u0003\u0006W\u0001\u0012\r\u0001\f\u0002\u0002\u0005F\u0011Q\u0006\u000e\t\u0003S9\"aa\f\u0001\u0005\u0006\u0004\u0001$!A!\u0012\u0005E\"\u0004CA\u00063\u0013\t\u0019dAA\u0004O_RD\u0017N\\4\u0011\u0005-)\u0014B\u0001\u001c\u0007\u0005\r\te.\u001f\u0005\u0006q\u0001!\t!O\u0001\tG>tG/Y5ogV\u0011!(\u0011\u000b\u0004wy\u0012\u0005CA\u0006=\u0013\tidAA\u0004C_>dW-\u00198\t\u000b}:\u0004\u0019\u0001!\u0002\u000bY\fG.^3\u0011\u0005%\nE!B\u00168\u0005\u0004a\u0003\"B\"8\u0001\u0004!\u0015\u0001C8sI\u0016\u0014\u0018N\\4\u0011\u0007\u0015C\u0005I\u0004\u0002\f\r&\u0011qIB\u0001\ba\u0006\u001c7.Y4f\u0013\tI%J\u0001\u0005Pe\u0012,'/\u001b8h\u0015\t9e\u0001C\u0003M\u0001\u0011\u0005Q*\u0001\u0004j]N,'\u000f^\u000b\u0003\u001dJ#2aT*U!\r\u0001\u0006!U\u0007\u0002\u0005A\u0011\u0011F\u0015\u0003\u0006W-\u0013\r\u0001\f\u0005\u0006\u007f-\u0003\r!\u0015\u0005\u0006\u0007.\u0003\r!\u0016\t\u0004\u000b\"\u000b\u0006\"B,\u0001\t\u0003A\u0016A\u0002:f[>4X-\u0006\u0002Z;R\u0019!l\u00170\u0011\u0007A\u0003Q\u0006C\u0003@-\u0002\u0007A\f\u0005\u0002*;\u0012)1F\u0016b\u0001Y!)1I\u0016a\u0001?B\u0019Q\t\u0013/\t\u000b\u0005\u0004A\u0011\u00012\u0002\u0013I,Wn\u001c<f\u001b&tWCA2i+\u0005!\u0007\u0003B\u0006fO&L!A\u001a\u0004\u0003\rQ+\b\u000f\\33!\tI\u0003\u000eB\u0003,A\n\u0007A\u0006E\u0002Q\u0001\u001dDQa\u001b\u0001\u0005\u00021\f\u0011B]3n_Z,W*\u0019=\u0016\u00055\u0004X#\u00018\u0011\t-)w.\u001d\t\u0003SA$Qa\u000b6C\u00021\u00022\u0001\u0015\u0001p\u0011\u0015\u0019\b\u0001\"\u0001u\u0003%\u0011XMY1mC:\u001cW-\u0006\u0002vqV\ta\u000fE\u0002Q\u0001]\u0004\"!\u000b=\u0005\u000b-\u0012(\u0019\u0001\u0017\t\u000bi\u0004A\u0011A>\u0002\u00191,g\r\u001e*pi\u0006$\u0018n\u001c8\u0016\u0007q\f\u0019!F\u0001~!\u0011\u0001f0!\u0001\n\u0005}\u0014!\u0001\u0002(pI\u0016\u00042!KA\u0002\t\u0015Y\u0013P1\u0001-\u0011\u001d\t9\u0001\u0001C\u0001\u0003\u0013\tQB]5hQR\u0014v\u000e^1uS>tW\u0003BA\u0006\u0003#)\"!!\u0004\u0011\tAs\u0018q\u0002\t\u0004S\u0005EAAB\u0016\u0002\u0006\t\u0007A\u0006C\u0004\u0002\u0016\u0001!\t!a\u0006\u0002%\u0011|WO\u00197f\u0019\u00164GOU8uCRLwN\\\u000b\u0005\u00033\ty\"\u0006\u0002\u0002\u001cA!\u0001K`A\u000f!\rI\u0013q\u0004\u0003\u0007W\u0005M!\u0019\u0001\u0017\t\u000f\u0005\r\u0002\u0001\"\u0001\u0002&\u0005\u0019Bm\\;cY\u0016\u0014\u0016n\u001a5u%>$\u0018\r^5p]V!\u0011qEA\u0017+\t\tI\u0003\u0005\u0003Q}\u0006-\u0002cA\u0015\u0002.\u001111&!\tC\u00021JC\u0001AA\u0019}*\u0019\u00111\u0007\u0002\u0002\t1+\u0017M\u001a\u0015\b\u0001\u0005]\u0012QHA!!\rY\u0011\u0011H\u0005\u0004\u0003w1!A\u00033faJ,7-\u0019;fI\u0006\u0012\u0011qH\u0001\u00024\u00053F\n\u0016:fK\u0002\ng\u000e\u001a\u0011jiN\u0004#/\u001a7bi\u0016$\u0007e\u00197bgN,7\u000fI1sK\u0002\u0012W-\u001b8hAI,Wn\u001c<fI\u00022'o\\7!i\",\u0007e\u001d;b]\u0012\f'\u000f\u001a\u0011mS\n\u0014\u0018M]=!g&t7-\u001a\u0011uQ\u0016LxE]3!]>$\b\u0005Z5gM\u0016\u0014XM\u001c;!K:|Wo\u001a5!MJ|W\u000e\t*fI\nc\u0017mY6Ue\u0016,\u0007\u0005^8!UV\u001cH/\u001b4zA-,W\r]5oO\u0002\"\b.Z7/C\t\t\u0019%\u0001\u00043]E\ndF\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AVLTree.class */
public interface AVLTree<A> extends Serializable {

    /* renamed from: scala.collection.mutable.AVLTree$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AVLTree$class.class */
    public abstract class Cclass {
        public static void $init$(AVLTree aVLTree) {
        }

        public static boolean contains(AVLTree aVLTree, Object obj, Ordering ordering) {
            return false;
        }

        public static Node doubleLeftRotation(AVLTree aVLTree) {
            throw package$.MODULE$.error("Should not happen.");
        }

        public static Node doubleRightRotation(AVLTree aVLTree) {
            throw package$.MODULE$.error("Should not happen.");
        }

        public static AVLTree insert(AVLTree aVLTree, Object obj, Ordering ordering) {
            return new Node(obj, Leaf$.MODULE$, Leaf$.MODULE$);
        }

        public static Iterator iterator(AVLTree aVLTree) {
            return Iterator$.MODULE$.empty();
        }

        public static Node leftRotation(AVLTree aVLTree) {
            throw package$.MODULE$.error("Should not happen.");
        }

        public static AVLTree rebalance(AVLTree aVLTree) {
            return aVLTree;
        }

        public static AVLTree remove(AVLTree aVLTree, Object obj, Ordering ordering) {
            throw new NoSuchElementException(String.valueOf(obj));
        }

        public static Tuple2 removeMax(AVLTree aVLTree) {
            throw package$.MODULE$.error("Should not happen.");
        }

        public static Tuple2 removeMin(AVLTree aVLTree) {
            throw package$.MODULE$.error("Should not happen.");
        }

        public static Node rightRotation(AVLTree aVLTree) {
            throw package$.MODULE$.error("Should not happen.");
        }
    }

    int balance();

    <B> boolean contains(B b, Ordering<B> ordering);

    int depth();

    <B> Node<B> doubleLeftRotation();

    <B> Node<B> doubleRightRotation();

    <B> AVLTree<B> insert(B b, Ordering<B> ordering);

    <B> Iterator<B> iterator();

    <B> Node<B> leftRotation();

    <B> AVLTree<B> rebalance();

    <B> AVLTree<A> remove(B b, Ordering<B> ordering);

    <B> Tuple2<B, AVLTree<B>> removeMax();

    <B> Tuple2<B, AVLTree<B>> removeMin();

    <B> Node<B> rightRotation();
}
