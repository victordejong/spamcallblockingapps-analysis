package scala;

import scala.collection.Iterator;
import scala.collection.immutable.List;
import scala.reflect.ScalaSignature;
import scala.runtime.Nothing$;
import scala.runtime.Null$;
import scala.util.Either;
@ScalaSignature(bytes = "\u0006\u0001m;Q!\u0001\u0002\t\u0002\u0016\tAAT8oK*\t1!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005\u00199Q\"\u0001\u0002\u0007\u000b!\u0011\u0001\u0012Q\u0005\u0003\t9{g.Z\n\u0005\u000f)\u00012\u0003E\u0002\u0007\u00175I!\u0001\u0004\u0002\u0003\r=\u0003H/[8o!\t1a\"\u0003\u0002\u0010\u0005\t9aj\u001c;iS:<\u0007C\u0001\u0004\u0012\u0013\t\u0011\"AA\u0004Qe>$Wo\u0019;\u0011\u0005\u0019!\u0012BA\u000b\u0003\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011\u00159r\u0001\"\u0001\u0019\u0003\u0019a\u0014N\\5u}Q\tQ\u0001C\u0003\u001b\u000f\u0011\u00051$A\u0004jg\u0016k\u0007\u000f^=\u0016\u0003q\u0001\"AB\u000f\n\u0005y\u0011!a\u0002\"p_2,\u0017M\u001c\u0005\u0006A\u001d!\t!I\u0001\u0004O\u0016$X#A\u0007\t\u000f\r:\u0011\u0011!C!I\u0005i\u0001O]8ek\u000e$\bK]3gSb,\u0012!\n\t\u0003M-j\u0011a\n\u0006\u0003Q%\nA\u0001\\1oO*\t!&\u0001\u0003kCZ\f\u0017B\u0001\u0017(\u0005\u0019\u0019FO]5oO\"9afBA\u0001\n\u0003y\u0013\u0001\u00049s_\u0012,8\r^!sSRLX#\u0001\u0019\u0011\u0005\u0019\t\u0014B\u0001\u001a\u0003\u0005\rIe\u000e\u001e\u0005\bi\u001d\t\t\u0011\"\u00016\u00039\u0001(o\u001c3vGR,E.Z7f]R$\"AN\u001d\u0011\u0005\u00199\u0014B\u0001\u001d\u0003\u0005\r\te.\u001f\u0005\buM\n\t\u00111\u00011\u0003\rAH%\r\u0005\by\u001d\t\t\u0011\"\u0011>\u0003=\u0001(o\u001c3vGRLE/\u001a:bi>\u0014X#\u0001 \u0011\u0007}\u0012e'D\u0001A\u0015\t\t%!\u0001\u0006d_2dWm\u0019;j_:L!a\u0011!\u0003\u0011%#XM]1u_JDq!R\u0004\u0002\u0002\u0013\u0005a)\u0001\u0005dC:,\u0015/^1m)\tar\tC\u0004;\t\u0006\u0005\t\u0019\u0001\u001c\t\u000f%;\u0011\u0011!C!\u0015\u0006A\u0001.Y:i\u0007>$W\rF\u00011\u0011\u001dau!!A\u0005B5\u000b\u0001\u0002^8TiJLgn\u001a\u000b\u0002K!9qjBA\u0001\n\u0013\u0001\u0016a\u0003:fC\u0012\u0014Vm]8mm\u0016$\u0012!\u0015\t\u0003MIK!aU\u0014\u0003\r=\u0013'.Z2uQ\u00119Q\u000bW-\u0011\u0005\u00191\u0016BA,\u0003\u0005A\u0019VM]5bYZ+'o]5p]VKE)A\u0003wC2,XM\b\u0005G!\u00122@K3K-R\u0011\u0001Q\u000bW-")
/* loaded from: classes3-dex2jar.jar:scala/None.class */
public final class None {
    public static boolean canEqual(Object obj) {
        return None$.MODULE$.canEqual(obj);
    }

    public static <B> Option<B> collect(PartialFunction<Nothing$, B> partialFunction) {
        return None$.MODULE$.collect(partialFunction);
    }

    public static <A1> boolean contains(A1 a1) {
        return None$.MODULE$.contains(a1);
    }

    public static boolean exists(Function1<Nothing$, Object> function1) {
        return None$.MODULE$.exists(function1);
    }

    public static Option<Nothing$> filter(Function1<Nothing$, Object> function1) {
        return None$.MODULE$.filter(function1);
    }

    public static Option<Nothing$> filterNot(Function1<Nothing$, Object> function1) {
        return None$.MODULE$.filterNot(function1);
    }

    public static <B> Option<B> flatMap(Function1<Nothing$, Option<B>> function1) {
        return None$.MODULE$.flatMap(function1);
    }

    public static <B> Option<B> flatten(Predef$$less$colon$less<Nothing$, Option<B>> predef$$less$colon$less) {
        return None$.MODULE$.flatten(predef$$less$colon$less);
    }

    public static <B> B fold(Function0<B> function0, Function1<Nothing$, B> function1) {
        return (B) None$.MODULE$.fold(function0, function1);
    }

    public static boolean forall(Function1<Nothing$, Object> function1) {
        return None$.MODULE$.forall(function1);
    }

    public static <U> void foreach(Function1<Nothing$, U> function1) {
        None$.MODULE$.foreach(function1);
    }

    public static Nothing$ get() {
        return None$.MODULE$.get2();
    }

    public static <B> B getOrElse(Function0<B> function0) {
        return (B) None$.MODULE$.getOrElse(function0);
    }

    public static int hashCode() {
        return None$.MODULE$.hashCode();
    }

    public static boolean isDefined() {
        return None$.MODULE$.isDefined();
    }

    public static boolean isEmpty() {
        return None$.MODULE$.isEmpty();
    }

    public static Iterator<Nothing$> iterator() {
        return None$.MODULE$.iterator();
    }

    public static <B> Option<B> map(Function1<Nothing$, B> function1) {
        return None$.MODULE$.map(function1);
    }

    public static boolean nonEmpty() {
        return None$.MODULE$.nonEmpty();
    }

    public static <B> Option<B> orElse(Function0<Option<B>> function0) {
        return None$.MODULE$.orElse(function0);
    }

    public static <A1> A1 orNull(Predef$$less$colon$less<Null$, A1> predef$$less$colon$less) {
        return (A1) None$.MODULE$.orNull(predef$$less$colon$less);
    }

    public static int productArity() {
        return None$.MODULE$.productArity();
    }

    public static Object productElement(int i) {
        return None$.MODULE$.productElement(i);
    }

    public static Iterator<Object> productIterator() {
        return None$.MODULE$.productIterator();
    }

    public static String productPrefix() {
        return None$.MODULE$.productPrefix();
    }

    public static Either toLeft(Function0 function0) {
        return None$.MODULE$.toLeft(function0);
    }

    public static List<Nothing$> toList() {
        return None$.MODULE$.toList();
    }

    public static Either toRight(Function0 function0) {
        return None$.MODULE$.toRight(function0);
    }

    public static String toString() {
        return None$.MODULE$.toString();
    }

    public static Option<Nothing$>.WithFilter withFilter(Function1<Nothing$, Object> function1) {
        return None$.MODULE$.withFilter(function1);
    }
}
