package scala.math;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001!2\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005q!\n\u0002\u0011\u0019><\bK]5pe&$\u00180R9vSZT!a\u0001\u0003\u0002\t5\fG\u000f\u001b\u0006\u0002\u000b\u0005)1oY1mC\u000e\u00011C\u0001\u0001\t!\tI!\"D\u0001\u0005\u0013\tYAA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u001b\u0001!\tAD\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003=\u0001\"!\u0003\t\n\u0005E!!\u0001B+oSRDQa\u0005\u0001\u0005\u0004Q\ta\"\u001e8jm\u0016\u00148/\u00197FcVLg/\u0006\u0002\u00169U\ta\u0003E\u0002\u00181ii\u0011AA\u0005\u00033\t\u0011Q!R9vSZ\u0004\"a\u0007\u000f\r\u0001\u0011)QD\u0005b\u0001=\t\tA+\u0005\u0002 EA\u0011\u0011\u0002I\u0005\u0003C\u0011\u0011qAT8uQ&tw\r\u0005\u0002\nG%\u0011A\u0005\u0002\u0002\u0004\u0003:LhBA\f'\u0013\t9#!A\u0003FcVLg\u000f")
/* loaded from: classes3-dex2jar.jar:scala/math/LowPriorityEquiv.class */
public interface LowPriorityEquiv {

    /* renamed from: scala.math.LowPriorityEquiv$class */
    /* loaded from: classes3-dex2jar.jar:scala/math/LowPriorityEquiv$class.class */
    public abstract class Cclass {
        public static void $init$(Equiv$ equiv$) {
        }

        public static Equiv universalEquiv(Equiv$ equiv$) {
            return equiv$.universal();
        }
    }

    <T> Equiv<T> universalEquiv();
}
