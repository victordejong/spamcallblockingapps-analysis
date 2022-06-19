package scala.runtime;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00152q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u000bTG\u0006d\u0017m\u00165pY\u0016tU/\u001c2feB\u0013x\u000e_=\u000b\u0005\r!\u0011a\u0002:v]RLW.\u001a\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0014'\r\u0001\u0011\"\u0004\t\u0003\u0015-i\u0011\u0001B\u0005\u0003\u0019\u0011\u00111!\u00118z!\rqq\"E\u0007\u0002\u0005%\u0011\u0001C\u0001\u0002\u0011'\u000e\fG.\u0019(v[\n,'\u000f\u0015:pqf\u0004\"AE\n\r\u0001\u0011)A\u0003\u0001b\u0001+\t\tA+\u0005\u0002\u0017\u0013A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\rC\u0003\u001b\u0001\u0011\u00051$\u0001\u0004%S:LG\u000f\n\u000b\u00029A\u0011!\"H\u0005\u0003=\u0011\u0011A!\u00168ji\")\u0001\u0005\u0001C\u0001C\u00059\u0011n],i_2,G#\u0001\u0012\u0011\u0005)\u0019\u0013B\u0001\u0013\u0005\u0005\u001d\u0011un\u001c7fC:\u0004")
/* loaded from: classes3-dex2jar.jar:scala/runtime/ScalaWholeNumberProxy.class */
public interface ScalaWholeNumberProxy<T> extends ScalaNumberProxy<T> {

    /* renamed from: scala.runtime.ScalaWholeNumberProxy$class */
    /* loaded from: classes3-dex2jar.jar:scala/runtime/ScalaWholeNumberProxy$class.class */
    public abstract class Cclass {
        public static void $init$(ScalaWholeNumberProxy scalaWholeNumberProxy) {
        }

        public static boolean isWhole(ScalaWholeNumberProxy scalaWholeNumberProxy) {
            return true;
        }
    }

    @Override // scala.math.ScalaNumericAnyConversions
    boolean isWhole();
}
