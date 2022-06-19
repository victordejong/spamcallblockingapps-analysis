package scala.collection.mutable;

import scala.Tuple2;
import scala.collection.Iterator;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001q;Q!\u0001\u0002\t\n&\tA\u0001T3bM*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001!\tQ1\"D\u0001\u0003\r\u0015a!\u0001##\u000e\u0005\u0011aU-\u00194\u0014\u000b-q!\u0003G\u000e\u0011\u0005=\u0001R\"\u0001\u0004\n\u0005E1!AB!osJ+g\rE\u0002\u000b'UI!\u0001\u0006\u0002\u0003\u000f\u00053F\n\u0016:fKB\u0011qBF\u0005\u0003/\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u00103%\u0011!D\u0002\u0002\b!J|G-^2u!\tyA$\u0003\u0002\u001e\r\ta1+\u001a:jC2L'0\u00192mK\")qd\u0003C\u0001A\u00051A(\u001b8jiz\"\u0012!\u0003\u0005\bE-\u0011\r\u0011\"\u0011$\u0003\u001d\u0011\u0017\r\\1oG\u0016,\u0012\u0001\n\t\u0003\u001f\u0015J!A\n\u0004\u0003\u0007%sG\u000f\u0003\u0004)\u0017\u0001\u0006I\u0001J\u0001\tE\u0006d\u0017M\\2fA!9!f\u0003b\u0001\n\u0003\u001a\u0013!\u00023faRD\u0007B\u0002\u0017\fA\u0003%A%\u0001\u0004eKB$\b\u000e\t\u0005\b]-\t\t\u0011\"\u00110\u00035\u0001(o\u001c3vGR\u0004&/\u001a4jqV\t\u0001\u0007\u0005\u00022m5\t!G\u0003\u00024i\u0005!A.\u00198h\u0015\u0005)\u0014\u0001\u00026bm\u0006L!a\u000e\u001a\u0003\rM#(/\u001b8h\u0011\u001dI4\"!A\u0005\u0002\r\nA\u0002\u001d:pIV\u001cG/\u0011:jifDqaO\u0006\u0002\u0002\u0013\u0005A(\u0001\bqe>$Wo\u0019;FY\u0016lWM\u001c;\u0015\u0005u\u0002\u0005CA\b?\u0013\tydAA\u0002B]fDq!\u0011\u001e\u0002\u0002\u0003\u0007A%A\u0002yIEBqaQ\u0006\u0002\u0002\u0013\u0005C)A\bqe>$Wo\u0019;Ji\u0016\u0014\u0018\r^8s+\u0005)\u0005c\u0001$H{5\tA!\u0003\u0002I\t\tA\u0011\n^3sCR|'\u000fC\u0004K\u0017\u0005\u0005I\u0011A&\u0002\u0011\r\fg.R9vC2$\"\u0001T(\u0011\u0005=i\u0015B\u0001(\u0007\u0005\u001d\u0011un\u001c7fC:Dq!Q%\u0002\u0002\u0003\u0007Q\bC\u0004R\u0017\u0005\u0005I\u0011\t*\u0002\u0011!\f7\u000f[\"pI\u0016$\u0012\u0001\n\u0005\b).\t\t\u0011\"\u0011V\u0003!!xn\u0015;sS:<G#\u0001\u0019\t\u000f][\u0011\u0011!C\u00051\u0006Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\u0005I\u0006CA\u0019[\u0013\tY&G\u0001\u0004PE*,7\r\u001e")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Leaf.class */
public final class Leaf {
    public static int balance() {
        return Leaf$.MODULE$.balance();
    }

    public static boolean canEqual(Object obj) {
        return Leaf$.MODULE$.canEqual(obj);
    }

    public static <B> boolean contains(B b, Ordering<B> ordering) {
        return Leaf$.MODULE$.contains(b, ordering);
    }

    public static int depth() {
        return Leaf$.MODULE$.depth();
    }

    public static <B> Node<B> doubleLeftRotation() {
        return Leaf$.MODULE$.doubleLeftRotation();
    }

    public static <B> Node<B> doubleRightRotation() {
        return Leaf$.MODULE$.doubleRightRotation();
    }

    public static int hashCode() {
        return Leaf$.MODULE$.hashCode();
    }

    public static <B> AVLTree<B> insert(B b, Ordering<B> ordering) {
        return Leaf$.MODULE$.insert(b, ordering);
    }

    public static <B> Iterator<B> iterator() {
        return Leaf$.MODULE$.iterator();
    }

    public static <B> Node<B> leftRotation() {
        return Leaf$.MODULE$.leftRotation();
    }

    public static int productArity() {
        return Leaf$.MODULE$.productArity();
    }

    public static Object productElement(int i) {
        return Leaf$.MODULE$.productElement(i);
    }

    public static Iterator<Object> productIterator() {
        return Leaf$.MODULE$.productIterator();
    }

    public static String productPrefix() {
        return Leaf$.MODULE$.productPrefix();
    }

    public static <B> AVLTree<B> rebalance() {
        return Leaf$.MODULE$.rebalance();
    }

    public static <B> AVLTree<Nothing$> remove(B b, Ordering<B> ordering) {
        return Leaf$.MODULE$.remove(b, ordering);
    }

    public static <B> Tuple2<B, AVLTree<B>> removeMax() {
        return Leaf$.MODULE$.removeMax();
    }

    public static <B> Tuple2<B, AVLTree<B>> removeMin() {
        return Leaf$.MODULE$.removeMin();
    }

    public static <B> Node<B> rightRotation() {
        return Leaf$.MODULE$.rightRotation();
    }

    public static String toString() {
        return Leaf$.MODULE$.toString();
    }
}
