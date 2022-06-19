package scala.p029io;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001y1\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005qa\u0007\u0002\u001a\u0019><\bK]5pe&$\u0018pQ8eK\u000eLU\u000e\u001d7jG&$8O\u0003\u0002\u0004\t\u0005\u0011\u0011n\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u00011C\u0001\u0001\t!\tI!\"D\u0001\u0005\u0013\tYAA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u001b\u0001!\tAD\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003=\u0001\"!\u0003\t\n\u0005E!!\u0001B+oSRD\u0001b\u0005\u0001\t\u0006\u0004%\u0019\u0001F\u0001\u0014M\u0006dGNY1dWNK8\u000f^3n\u0007>$WmY\u000b\u0002+A\u0011acF\u0007\u0002\u0005%\u0011\u0001D\u0001\u0002\u0006\u0007>$Wm\u0019\u0005\t5\u0001A\t\u0011)Q\u0005+\u0005!b-\u00197mE\u0006\u001c7nU=ti\u0016l7i\u001c3fG\u0002r!A\u0006\u000f\n\u0005u\u0011\u0011!B\"pI\u0016\u001c\u0007")
/* renamed from: scala.io.LowPriorityCodecImplicits */
/* loaded from: classes3-dex2jar.jar:scala/io/LowPriorityCodecImplicits.class */
public interface LowPriorityCodecImplicits {

    /* renamed from: scala.io.LowPriorityCodecImplicits$class */
    /* loaded from: classes3-dex2jar.jar:scala/io/LowPriorityCodecImplicits$class.class */
    public abstract class Cclass {
        public static void $init$(Codec$ codec$) {
        }

        public static Codec fallbackSystemCodec(Codec$ codec$) {
            return codec$.defaultCharsetCodec();
        }
    }

    Codec fallbackSystemCodec();
}
