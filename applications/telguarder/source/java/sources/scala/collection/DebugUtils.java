package scala.collection;

import scala.Function1;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001M;a!\u0001\u0002\t\u0002\t1\u0011A\u0003#fEV<W\u000b^5mg*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0011\u0005\u001dAQ\"\u0001\u0002\u0007\r%\u0011\u0001\u0012\u0001\u0002\u000b\u0005)!UMY;h+RLGn]\n\u0003\u0011-\u0001\"\u0001D\u0007\u000e\u0003\u0011I!A\u0004\u0003\u0003\r\u0005s\u0017PU3g\u0011\u0015\u0001\u0002\u0002\"\u0001\u0013\u0003\u0019a\u0014N\\5u}\r\u0001A#\u0001\u0004\t\u000bQAA\u0011A\u000b\u0002\u0017Ut7/\u001e9q_J$X\r\u001a\u000b\u0003-e\u0001\"\u0001D\f\n\u0005a!!a\u0002(pi\"Lgn\u001a\u0005\u00065M\u0001\raG\u0001\u0004[N<\u0007C\u0001\u000f \u001d\taQ$\u0003\u0002\u001f\t\u00051\u0001K]3eK\u001aL!\u0001I\u0011\u0003\rM#(/\u001b8h\u0015\tqB\u0001C\u0003$\u0011\u0011\u0005A%A\u0007o_N+8\r[#mK6,g\u000e\u001e\u000b\u0003-\u0015BQA\u0007\u0012A\u0002mAQa\n\u0005\u0005\u0002!\n\u0001#\u001b8eKb|U\u000f^(g\u0005>,h\u000eZ:\u0015\u0005YI\u0003\"\u0002\u0016'\u0001\u0004Y\u0013!B5oI\u0016D\bC\u0001\u0007-\u0013\tiCAA\u0002J]RDQa\f\u0005\u0005\u0002A\nq\"\u001b7mK\u001e\fG.\u0011:hk6,g\u000e\u001e\u000b\u0003-EBQA\u0007\u0018A\u0002mAQa\r\u0005\u0005\u0002Q\n1BY;jY\u0012\u001cFO]5oOR\u00111$\u000e\u0005\u0006mI\u0002\raN\u0001\bG2|7/\u001e:f!\u0011a\u0001H\u000f \n\u0005e\"!!\u0003$v]\u000e$\u0018n\u001c82!\u0011a\u0001h\u000f \u0011\u00051a\u0014BA\u001f\u0005\u0005\r\te.\u001f\t\u0003\u0019}J!\u0001\u0011\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006\u0005\"!\taQ\u0001\fCJ\u0014\u0018-_*ue&tw-\u0006\u0002E\u0019R!1$R(R\u0011\u00151\u0015\t1\u0001H\u0003\u0015\t'O]1z!\ra\u0001JS\u0005\u0003\u0013\u0012\u0011Q!\u0011:sCf\u0004\"a\u0013'\r\u0001\u0011)Q*\u0011b\u0001\u001d\n\tA+\u0005\u0002\u0017w!)\u0001+\u0011a\u0001W\u0005!aM]8n\u0011\u0015\u0011\u0016\t1\u0001,\u0003\u0015)h\u000e^5m\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/DebugUtils.class */
public final class DebugUtils {
    public static <T> String arrayString(Object obj, int i, int i2) {
        return DebugUtils$.MODULE$.arrayString(obj, i, i2);
    }

    public static String buildString(Function1<Function1<Object, BoxedUnit>, BoxedUnit> function1) {
        return DebugUtils$.MODULE$.buildString(function1);
    }

    public static Nothing$ illegalArgument(String str) {
        return DebugUtils$.MODULE$.illegalArgument(str);
    }

    public static Nothing$ indexOutOfBounds(int i) {
        return DebugUtils$.MODULE$.indexOutOfBounds(i);
    }

    public static Nothing$ noSuchElement(String str) {
        return DebugUtils$.MODULE$.noSuchElement(str);
    }

    public static Nothing$ unsupported(String str) {
        return DebugUtils$.MODULE$.unsupported(str);
    }
}
