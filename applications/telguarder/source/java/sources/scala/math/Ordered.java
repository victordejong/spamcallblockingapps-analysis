package scala.math;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001y3q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u0004Pe\u0012,'/\u001a3\u000b\u0005\r!\u0011\u0001B7bi\"T\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tAqcE\u0002\u0001\u00135\u0001\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\u0007\u0005s\u0017\u0010E\u0002\u000f'Ui\u0011a\u0004\u0006\u0003!E\tA\u0001\\1oO*\t!#\u0001\u0003kCZ\f\u0017B\u0001\u000b\u0010\u0005)\u0019u.\u001c9be\u0006\u0014G.\u001a\t\u0003-]a\u0001\u0001B\u0003\u0019\u0001\t\u0007\u0011DA\u0001B#\tQ\u0012\u0002\u0005\u0002\u000b7%\u0011A\u0004\u0002\u0002\b\u001d>$\b.\u001b8h\u0011\u0015q\u0002\u0001\"\u0001 \u0003\u0019!\u0013N\\5uIQ\t\u0001\u0005\u0005\u0002\u000bC%\u0011!\u0005\u0002\u0002\u0005+:LG\u000fC\u0003%\u0001\u0019\u0005Q%A\u0004d_6\u0004\u0018M]3\u0015\u0005\u0019J\u0003C\u0001\u0006(\u0013\tACAA\u0002J]RDQAK\u0012A\u0002U\tA\u0001\u001e5bi\")A\u0006\u0001C\u0001[\u0005)A\u0005\\3tgR\u0011a&\r\t\u0003\u0015=J!\u0001\r\u0003\u0003\u000f\t{w\u000e\\3b]\")!f\u000ba\u0001+!)1\u0007\u0001C\u0001i\u0005AAe\u001a:fCR,'\u000f\u0006\u0002/k!)!F\ra\u0001+!)q\u0007\u0001C\u0001q\u0005AA\u0005\\3tg\u0012*\u0017\u000f\u0006\u0002/s!)!F\u000ea\u0001+!)1\b\u0001C\u0001y\u0005YAe\u001a:fCR,'\u000fJ3r)\tqS\bC\u0003+u\u0001\u0007Q\u0003C\u0003@\u0001\u0011\u0005\u0001)A\u0005d_6\u0004\u0018M]3U_R\u0011a%\u0011\u0005\u0006Uy\u0002\r!F\u0004\u0006\u0007\nA\t\u0001R\u0001\b\u001fJ$WM]3e!\t)e)D\u0001\u0003\r\u0015\t!\u0001#\u0001H'\t1\u0005\n\u0005\u0002\u000b\u0013&\u0011!\n\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000b13E\u0011A'\u0002\rqJg.\u001b;?)\u0005!\u0005\"B(G\t\u0007\u0001\u0016!E8sI\u0016\u0014\u0018N\\4U_>\u0013H-\u001a:fIV\u0011\u0011+\u0016\u000b\u0003%r#\"aU,\u0011\u0007\u0015\u0003A\u000b\u0005\u0002\u0017+\u0012)aK\u0014b\u00013\t\tA\u000bC\u0003Y\u001d\u0002\u000f\u0011,A\u0002pe\u0012\u00042!\u0012.U\u0013\tY&A\u0001\u0005Pe\u0012,'/\u001b8h\u0011\u0015if\n1\u0001U\u0003\u0005A\b")
/* loaded from: classes3-dex2jar.jar:scala/math/Ordered.class */
public interface Ordered<A> extends Comparable<A> {

    /* renamed from: scala.math.Ordered$class */
    /* loaded from: classes3-dex2jar.jar:scala/math/Ordered$class.class */
    public abstract class Cclass {
        public static boolean $greater(Ordered ordered, Object obj) {
            return ordered.compare(obj) > 0;
        }

        public static boolean $greater$eq(Ordered ordered, Object obj) {
            return ordered.compare(obj) >= 0;
        }

        public static void $init$(Ordered ordered) {
        }

        public static boolean $less(Ordered ordered, Object obj) {
            return ordered.compare(obj) < 0;
        }

        public static boolean $less$eq(Ordered ordered, Object obj) {
            return ordered.compare(obj) <= 0;
        }

        public static int compareTo(Ordered ordered, Object obj) {
            return ordered.compare(obj);
        }
    }

    boolean $greater(A a);

    boolean $greater$eq(A a);

    boolean $less(A a);

    boolean $less$eq(A a);

    int compare(A a);

    @Override // java.lang.Comparable
    int compareTo(A a);
}
