package scala.p029io;

import com.facebook.internal.ServerProtocol;
import java.io.EOFException;
import java.text.MessageFormat;
import scala.Console$;
import scala.Predef$;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.IterableLike;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.StringOps;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005Ea\u0001C\u0001\u0003!\u0003\r\t\u0001\u0002\u0004\u0003\u000bM#H-\u00138\u000b\u0005\r!\u0011AA5p\u0015\u0005)\u0011!B:dC2\f7C\u0001\u0001\b!\tA\u0011\"D\u0001\u0005\u0013\tQAA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006\u0019\u0001!\tAD\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0004\u0001Q\tq\u0002\u0005\u0002\t!%\u0011\u0011\u0003\u0002\u0002\u0005+:LG\u000fC\u0003\u0014\u0001\u0011\u0005A#\u0001\u0005sK\u0006$G*\u001b8f)\u0005)\u0002C\u0001\f\u001a\u001d\tAq#\u0003\u0002\u0019\t\u00051\u0001K]3eK\u001aL!AG\u000e\u0003\rM#(/\u001b8h\u0015\tAB\u0001C\u0003\u0014\u0001\u0011\u0005Q\u0004F\u0002\u0016=\u0001BQa\b\u000fA\u0002U\tA\u0001^3yi\")\u0011\u0005\ba\u0001E\u0005!\u0011M]4t!\rA1%J\u0005\u0003I\u0011\u0011!\u0002\u0010:fa\u0016\fG/\u001a3?!\tAa%\u0003\u0002(\t\t\u0019\u0011I\\=\t\u000b%\u0002A\u0011\u0001\u0016\u0002\u0017I,\u0017\r\u001a\"p_2,\u0017M\u001c\u000b\u0002WA\u0011\u0001\u0002L\u0005\u0003[\u0011\u0011qAQ8pY\u0016\fg\u000eC\u00030\u0001\u0011\u0005\u0001'\u0001\u0005sK\u0006$')\u001f;f)\u0005\t\u0004C\u0001\u00053\u0013\t\u0019DA\u0001\u0003CsR,\u0007\"B\u001b\u0001\t\u00031\u0014!\u0003:fC\u0012\u001c\u0006n\u001c:u)\u00059\u0004C\u0001\u00059\u0013\tIDAA\u0003TQ>\u0014H\u000fC\u0003<\u0001\u0011\u0005A(\u0001\u0005sK\u0006$7\t[1s)\u0005i\u0004C\u0001\u0005?\u0013\tyDA\u0001\u0003DQ\u0006\u0014\b\"B!\u0001\t\u0003\u0011\u0015a\u0002:fC\u0012Le\u000e\u001e\u000b\u0002\u0007B\u0011\u0001\u0002R\u0005\u0003\u000b\u0012\u00111!\u00138u\u0011\u00159\u0005\u0001\"\u0001I\u0003!\u0011X-\u00193M_:<G#A%\u0011\u0005!Q\u0015BA&\u0005\u0005\u0011auN\\4\t\u000b5\u0003A\u0011\u0001(\u0002\u0013I,\u0017\r\u001a$m_\u0006$H#A(\u0011\u0005!\u0001\u0016BA)\u0005\u0005\u00151En\\1u\u0011\u0015\u0019\u0006\u0001\"\u0001U\u0003)\u0011X-\u00193E_V\u0014G.\u001a\u000b\u0002+B\u0011\u0001BV\u0005\u0003/\u0012\u0011a\u0001R8vE2,\u0007\"B-\u0001\t\u0003Q\u0016!\u0002:fC\u00124GCA.c!\rav,\n\b\u0003\u0011uK!A\u0018\u0003\u0002\u000fA\f7m[1hK&\u0011\u0001-\u0019\u0002\u0005\u0019&\u001cHO\u0003\u0002_\t!)1\r\u0017a\u0001+\u00051am\u001c:nCRDQ!\u001a\u0001\u0005\u0002\u0019\faA]3bI\u001a\fDCA\u0013h\u0011\u0015\u0019G\r1\u0001\u0016\u0011\u0015I\u0007\u0001\"\u0001k\u0003\u0019\u0011X-\u00193geQ\u00111N\u001c\t\u0005\u00111,S%\u0003\u0002n\t\t1A+\u001e9mKJBQa\u00195A\u0002UAQ\u0001\u001d\u0001\u0005\u0002E\faA]3bI\u001a\u001cDC\u0001:v!\u0015A1/J\u0013&\u0013\t!HA\u0001\u0004UkBdWm\r\u0005\u0006G>\u0004\r!\u0006\u0005\u0006o\u0002!I\u0001_\u0001\u000fi\u0016DHoQ8na>tWM\u001c;t)\tY\u0016\u0010C\u0003{m\u0002\u000710A\u0001b!\rAApB\u0005\u0003{\u0012\u0011Q!\u0011:sCf<aa \u0002\t\u0002\u0005\u0005\u0011!B*uI&s\u0007\u0003BA\u0002\u0003\u000bi\u0011A\u0001\u0004\u0007\u0003\tA\t!a\u0002\u0014\u000b\u0005\u0015q!!\u0003\u0011\u0007\u0005\r\u0001\u0001\u0003\u0005\u0002\u000e\u0005\u0015A\u0011AA\b\u0003\u0019a\u0014N\\5u}Q\u0011\u0011\u0011\u0001")
/* renamed from: scala.io.StdIn */
/* loaded from: classes3-dex2jar.jar:scala/io/StdIn.class */
public interface StdIn {

    /* renamed from: scala.io.StdIn$class */
    /* loaded from: classes3-dex2jar.jar:scala/io/StdIn$class.class */
    public abstract class Cclass {
        public static void $init$(StdIn stdIn) {
        }

        public static boolean readBoolean(StdIn stdIn) {
            String readLine = stdIn.readLine();
            if (readLine != null) {
                String lowerCase = readLine.toLowerCase();
                boolean z = true;
                if (!ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(lowerCase) && !"t".equals(lowerCase) && !"yes".equals(lowerCase) && !"y".equals(lowerCase)) {
                    z = false;
                }
                return z;
            }
            throw new EOFException("Console has reached end of input");
        }

        public static byte readByte(StdIn stdIn) {
            String readLine = stdIn.readLine();
            if (readLine != null) {
                Predef$ predef$ = Predef$.MODULE$;
                return new StringOps(readLine).toByte();
            }
            throw new EOFException("Console has reached end of input");
        }

        public static char readChar(StdIn stdIn) {
            String readLine = stdIn.readLine();
            if (readLine != null) {
                return readLine.charAt(0);
            }
            throw new EOFException("Console has reached end of input");
        }

        public static double readDouble(StdIn stdIn) {
            String readLine = stdIn.readLine();
            if (readLine != null) {
                Predef$ predef$ = Predef$.MODULE$;
                return new StringOps(readLine).toDouble();
            }
            throw new EOFException("Console has reached end of input");
        }

        public static float readFloat(StdIn stdIn) {
            String readLine = stdIn.readLine();
            if (readLine != null) {
                Predef$ predef$ = Predef$.MODULE$;
                return new StringOps(readLine).toFloat();
            }
            throw new EOFException("Console has reached end of input");
        }

        public static int readInt(StdIn stdIn) {
            String readLine = stdIn.readLine();
            if (readLine != null) {
                Predef$ predef$ = Predef$.MODULE$;
                return new StringOps(readLine).toInt();
            }
            throw new EOFException("Console has reached end of input");
        }

        public static String readLine(StdIn stdIn) {
            return Console$.MODULE$.m366in().readLine();
        }

        public static String readLine(StdIn stdIn, String str, Seq seq) {
            Console$.MODULE$.printf(str, seq);
            Console$.MODULE$.out().flush();
            return stdIn.readLine();
        }

        public static long readLong(StdIn stdIn) {
            String readLine = stdIn.readLine();
            if (readLine != null) {
                Predef$ predef$ = Predef$.MODULE$;
                return new StringOps(readLine).toLong();
            }
            throw new EOFException("Console has reached end of input");
        }

        public static short readShort(StdIn stdIn) {
            String readLine = stdIn.readLine();
            if (readLine != null) {
                Predef$ predef$ = Predef$.MODULE$;
                return new StringOps(readLine).toShort();
            }
            throw new EOFException("Console has reached end of input");
        }

        public static List readf(StdIn stdIn, String str) {
            String readLine = stdIn.readLine();
            if (readLine != null) {
                return textComponents(stdIn, new MessageFormat(str).parse(readLine));
            }
            throw new EOFException("Console has reached end of input");
        }

        public static Object readf1(StdIn stdIn, String str) {
            return stdIn.readf(str).head();
        }

        public static Tuple2 readf2(StdIn stdIn, String str) {
            List<Object> readf = stdIn.readf(str);
            return new Tuple2(readf.head(), ((IterableLike) readf.tail()).head());
        }

        public static Tuple3 readf3(StdIn stdIn, String str) {
            List<Object> readf = stdIn.readf(str);
            return new Tuple3(readf.head(), ((IterableLike) readf.tail()).head(), ((IterableLike) ((TraversableLike) readf.tail()).tail()).head());
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static List textComponents(StdIn stdIn, Object[] objArr) {
            Boolean bool;
            List list = Nil$.MODULE$;
            for (int length = objArr.length - 1; length >= 0; length--) {
                Object obj = objArr[length];
                if (obj instanceof Boolean) {
                    bool = BoxesRunTime.boxToBoolean(((Boolean) obj).booleanValue());
                } else if (obj instanceof Byte) {
                    bool = BoxesRunTime.boxToByte(((Byte) obj).byteValue());
                } else if (obj instanceof Short) {
                    bool = BoxesRunTime.boxToShort(((Short) obj).shortValue());
                } else if (obj instanceof Character) {
                    bool = BoxesRunTime.boxToCharacter(((Character) obj).charValue());
                } else if (obj instanceof Integer) {
                    bool = BoxesRunTime.boxToInteger(((Integer) obj).intValue());
                } else if (obj instanceof Long) {
                    bool = BoxesRunTime.boxToLong(((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    bool = BoxesRunTime.boxToFloat(((Float) obj).floatValue());
                } else {
                    bool = obj;
                    if (obj instanceof Double) {
                        bool = BoxesRunTime.boxToDouble(((Double) obj).doubleValue());
                    }
                }
                list = list.$colon$colon(bool);
            }
            return list;
        }
    }

    boolean readBoolean();

    byte readByte();

    char readChar();

    double readDouble();

    float readFloat();

    int readInt();

    String readLine();

    String readLine(String str, Seq<Object> seq);

    long readLong();

    short readShort();

    List<Object> readf(String str);

    Object readf1(String str);

    Tuple2<Object, Object> readf2(String str);

    Tuple3<Object, Object, Object> readf3(String str);
}
