package scala.math;

import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u001d4q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u000eTG\u0006d\u0017MT;nKJL7-\u00118z\u0007>tg/\u001a:tS>t7O\u0003\u0002\u0004\t\u0005!Q.\u0019;i\u0015\u0005)\u0011!B:dC2\f7\u0001A\n\u0003\u0001!\u0001\"!\u0003\u0006\u000e\u0003\u0011I!a\u0003\u0003\u0003\u0007\u0005s\u0017\u0010C\u0003\u000e\u0001\u0011\u0005a\"\u0001\u0004%S:LG\u000f\n\u000b\u0002\u001fA\u0011\u0011\u0002E\u0005\u0003#\u0011\u0011A!\u00168ji\")1\u0003\u0001D\u0001)\u00059\u0011n],i_2,G#A\u000b\u0011\u0005%1\u0012BA\f\u0005\u0005\u001d\u0011un\u001c7fC:DQ!\u0007\u0001\u0007\u0002i\t!\"\u001e8eKJd\u00170\u001b8h)\u0005A\u0001\"\u0002\u000f\u0001\r\u0003i\u0012!\u00032zi\u00164\u0016\r\\;f)\u0005q\u0002CA\u0005 \u0013\t\u0001CA\u0001\u0003CsR,\u0007\"\u0002\u0012\u0001\r\u0003\u0019\u0013AC:i_J$h+\u00197vKR\tA\u0005\u0005\u0002\nK%\u0011a\u0005\u0002\u0002\u0006'\"|'\u000f\u001e\u0005\u0006Q\u00011\t!K\u0001\tS:$h+\u00197vKR\t!\u0006\u0005\u0002\nW%\u0011A\u0006\u0002\u0002\u0004\u0013:$\b\"\u0002\u0018\u0001\r\u0003y\u0013!\u00037p]\u001e4\u0016\r\\;f)\u0005\u0001\u0004CA\u00052\u0013\t\u0011DA\u0001\u0003M_:<\u0007\"\u0002\u001b\u0001\r\u0003)\u0014A\u00034m_\u0006$h+\u00197vKR\ta\u0007\u0005\u0002\no%\u0011\u0001\b\u0002\u0002\u0006\r2|\u0017\r\u001e\u0005\u0006u\u00011\taO\u0001\fI>,(\r\\3WC2,X\rF\u0001=!\tIQ(\u0003\u0002?\t\t1Ai\\;cY\u0016DQ\u0001\u0011\u0001\u0005\u0002\u0005\u000ba\u0001^8DQ\u0006\u0014X#\u0001\"\u0011\u0005%\u0019\u0015B\u0001#\u0005\u0005\u0011\u0019\u0005.\u0019:\t\u000b\u0019\u0003A\u0011A$\u0002\rQ|')\u001f;f+\u0005q\u0002\"B%\u0001\t\u0003Q\u0015a\u0002;p'\"|'\u000f^\u000b\u0002I!)A\n\u0001C\u0001\u001b\u0006)Ao\\%oiV\t!\u0006C\u0003P\u0001\u0011\u0005\u0001+\u0001\u0004u_2{gnZ\u000b\u0002a!)!\u000b\u0001C\u0001'\u00069Ao\u001c$m_\u0006$X#\u0001\u001c\t\u000bU\u0003A\u0011\u0001,\u0002\u0011Q|Gi\\;cY\u0016,\u0012\u0001\u0010\u0005\u00061\u0002!\t!W\u0001\fSN4\u0016\r\\5e\u0005f$X-F\u0001\u0016\u0011\u0015Y\u0006\u0001\"\u0001Z\u00031I7OV1mS\u0012\u001c\u0006n\u001c:u\u0011\u0015i\u0006\u0001\"\u0001Z\u0003)I7OV1mS\u0012Le\u000e\u001e\u0005\u0006?\u0002!\t!W\u0001\fSN4\u0016\r\\5e\u0007\"\f'\u000fC\u0003b\u0001\u0011E\u0011&\u0001\rv]&4\u0017.\u001a3Qe&l\u0017\u000e^5wK\"\u000b7\u000f[2pI\u0016DQa\u0019\u0001\u0005\u0012\u0011\fa#\u001e8jM&,G\r\u0015:j[&$\u0018N^3FcV\fGn\u001d\u000b\u0003+\u0015DQA\u001a2A\u0002!\t\u0011\u0001\u001f")
/* loaded from: classes3-dex2jar.jar:scala/math/ScalaNumericAnyConversions.class */
public interface ScalaNumericAnyConversions {

    /* renamed from: scala.math.ScalaNumericAnyConversions$class */
    /* loaded from: classes3-dex2jar.jar:scala/math/ScalaNumericAnyConversions$class.class */
    public abstract class Cclass {
        public static void $init$(ScalaNumericAnyConversions scalaNumericAnyConversions) {
        }

        public static boolean isValidByte(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.isWhole() && scalaNumericAnyConversions.toInt() == scalaNumericAnyConversions.toByte();
        }

        public static boolean isValidChar(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.isWhole() && scalaNumericAnyConversions.toInt() >= 0 && scalaNumericAnyConversions.toInt() <= 65535;
        }

        public static boolean isValidInt(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.isWhole() && scalaNumericAnyConversions.toLong() == ((long) scalaNumericAnyConversions.toInt());
        }

        public static boolean isValidShort(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.isWhole() && scalaNumericAnyConversions.toInt() == scalaNumericAnyConversions.toShort();
        }

        public static byte toByte(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.byteValue();
        }

        public static char toChar(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return (char) scalaNumericAnyConversions.intValue();
        }

        public static double toDouble(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.doubleValue();
        }

        public static float toFloat(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.floatValue();
        }

        public static int toInt(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.intValue();
        }

        public static long toLong(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.longValue();
        }

        public static short toShort(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            return scalaNumericAnyConversions.shortValue();
        }

        public static boolean unifiedPrimitiveEquals(ScalaNumericAnyConversions scalaNumericAnyConversions, Object obj) {
            boolean z = false;
            if (obj instanceof Character) {
                char unboxToChar = BoxesRunTime.unboxToChar(obj);
                if (scalaNumericAnyConversions.isValidChar() && scalaNumericAnyConversions.toInt() == unboxToChar) {
                    z = true;
                }
                z = false;
            } else if (obj instanceof Byte) {
                byte unboxToByte = BoxesRunTime.unboxToByte(obj);
                if (scalaNumericAnyConversions.isValidByte() && scalaNumericAnyConversions.toByte() == unboxToByte) {
                    z = true;
                }
                z = false;
            } else if (obj instanceof Short) {
                short unboxToShort = BoxesRunTime.unboxToShort(obj);
                if (scalaNumericAnyConversions.isValidShort() && scalaNumericAnyConversions.toShort() == unboxToShort) {
                    z = true;
                }
                z = false;
            } else if (obj instanceof Integer) {
                int unboxToInt = BoxesRunTime.unboxToInt(obj);
                if (scalaNumericAnyConversions.isValidInt() && scalaNumericAnyConversions.toInt() == unboxToInt) {
                    z = true;
                }
                z = false;
            } else if (obj instanceof Long) {
                if (scalaNumericAnyConversions.toLong() == BoxesRunTime.unboxToLong(obj)) {
                    z = true;
                }
                z = false;
            } else if (obj instanceof Float) {
                if (scalaNumericAnyConversions.toFloat() == BoxesRunTime.unboxToFloat(obj)) {
                    z = true;
                }
                z = false;
            } else if (obj instanceof Double) {
                if (scalaNumericAnyConversions.toDouble() == BoxesRunTime.unboxToDouble(obj)) {
                    z = true;
                }
                z = false;
            }
            return z;
        }

        public static int unifiedPrimitiveHashcode(ScalaNumericAnyConversions scalaNumericAnyConversions) {
            long j = scalaNumericAnyConversions.toLong();
            return (j < -2147483648L || j > 2147483647L) ? ScalaRunTime$.MODULE$.hash((Object) BoxesRunTime.boxToLong(j)) : (int) j;
        }
    }

    byte byteValue();

    double doubleValue();

    float floatValue();

    int intValue();

    boolean isValidByte();

    boolean isValidChar();

    boolean isValidInt();

    boolean isValidShort();

    boolean isWhole();

    long longValue();

    short shortValue();

    byte toByte();

    char toChar();

    double toDouble();

    float toFloat();

    int toInt();

    long toLong();

    short toShort();

    Object underlying();

    boolean unifiedPrimitiveEquals(Object obj);

    int unifiedPrimitiveHashcode();
}
