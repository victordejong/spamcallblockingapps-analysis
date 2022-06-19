package scala.util.control;

import scala.Option;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001-:Q!\u0001\u0002\t\u0002%\t\u0001BT8o\r\u0006$\u0018\r\u001c\u0006\u0003\u0007\u0011\tqaY8oiJ|GN\u0003\u0002\u0006\r\u0005!Q\u000f^5m\u0015\u00059\u0011!B:dC2\f7\u0001\u0001\t\u0003\u0015-i\u0011A\u0001\u0004\u0006\u0019\tA\t!\u0004\u0002\t\u001d>tg)\u0019;bYN\u00111B\u0004\t\u0003\u001fAi\u0011AB\u0005\u0003#\u0019\u0011a!\u00118z%\u00164\u0007\"B\n\f\t\u0003!\u0012A\u0002\u001fj]&$h\bF\u0001\n\u0011\u001512\u0002\"\u0001\u0018\u0003\u0015\t\u0007\u000f\u001d7z)\tA2\u0004\u0005\u0002\u00103%\u0011!D\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015aR\u00031\u0001\u001e\u0003\u0005!\bC\u0001\u0010\"\u001d\tyq$\u0003\u0002!\r\u00059\u0001/Y2lC\u001e,\u0017B\u0001\u0012$\u0005%!\u0006N]8xC\ndWM\u0003\u0002!\r!)Qe\u0003C\u0001M\u00059QO\\1qa2LHCA\u0014+!\ry\u0001&H\u0005\u0003S\u0019\u0011aa\u00149uS>t\u0007\"\u0002\u000f%\u0001\u0004i\u0002")
/* loaded from: classes3-dex2jar.jar:scala/util/control/NonFatal.class */
public final class NonFatal {
    public static boolean apply(Throwable th) {
        return NonFatal$.MODULE$.apply(th);
    }

    public static Option<Throwable> unapply(Throwable th) {
        return NonFatal$.MODULE$.unapply(th);
    }
}
