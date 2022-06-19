package scala.reflect;

import java.lang.reflect.Array;
import scala.Equals;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Some;
import scala.StringContext;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\tmeaB\u0001\u0003!\u0003\r\ta\u0002\u0002\t\u00072\f7o\u001d+bO*\u00111\u0001B\u0001\be\u00164G.Z2u\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0003\u0011M\u0019R\u0001A\u0005\u000e9}\u0001\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\r\u0005s\u0017PU3g!\rqq\"E\u0007\u0002\u0005%\u0011\u0001C\u0001\u0002\u001c\u00072\f7o]'b]&4Wm\u001d;EKB\u0014XmY1uK\u0012\f\u0005/[:\u0011\u0005I\u0019B\u0002\u0001\u0003\u0006)\u0001\u0011\r!\u0006\u0002\u0002)F\u0011a#\u0007\t\u0003\u0015]I!\u0001\u0007\u0003\u0003\u000f9{G\u000f[5oOB\u0011!BG\u0005\u00037\u0011\u00111!\u00118z!\tQQ$\u0003\u0002\u001f\t\t1Q)];bYN\u0004\"A\u0003\u0011\n\u0005\u0005\"!\u0001D*fe&\fG.\u001b>bE2,\u0007\"B\u0012\u0001\t\u0003!\u0013A\u0002\u0013j]&$H\u0005F\u0001&!\tQa%\u0003\u0002(\t\t!QK\\5u\u0011\u0015I\u0003A\"\u0001+\u00031\u0011XO\u001c;j[\u0016\u001cE.Y:t+\u0005Y\u0003G\u0001\u00176!\ri#\u0007N\u0007\u0002])\u0011q\u0006M\u0001\u0005Y\u0006twMC\u00012\u0003\u0011Q\u0017M^1\n\u0005Mr#!B\"mCN\u001c\bC\u0001\n6\t%1\u0004&!A\u0001\u0002\u000b\u0005QCA\u0002`IEBQ\u0001\u000f\u0001\u0005\u0002e\nAa\u001e:baV\t!\bE\u0002\u000f\u0001m\u00022A\u0003\u001f\u0012\u0013\tiDAA\u0003BeJ\f\u0017\u0010C\u0003@\u0001\u0011\u0005\u0003)\u0001\u0005oK^\f%O]1z)\tY\u0014\tC\u0003C}\u0001\u00071)A\u0002mK:\u0004\"A\u0003#\n\u0005\u0015#!aA%oi\")q\t\u0001C\u0001\u0011\u00069QO\\1qa2LHCA%M!\rQ!*E\u0005\u0003\u0017\u0012\u0011aa\u00149uS>t\u0007\"B'G\u0001\u0004I\u0012!\u0001=\t\u000b\u001d\u0003A\u0011A(\u0015\u0005%\u0003\u0006\"B'O\u0001\u0004\t\u0006C\u0001\u0006S\u0013\t\u0019FA\u0001\u0003CsR,\u0007\"B$\u0001\t\u0003)FCA%W\u0011\u0015iE\u000b1\u0001X!\tQ\u0001,\u0003\u0002Z\t\t)1\u000b[8si\")q\t\u0001C\u00017R\u0011\u0011\n\u0018\u0005\u0006\u001bj\u0003\r!\u0018\t\u0003\u0015yK!a\u0018\u0003\u0003\t\rC\u0017M\u001d\u0005\u0006\u000f\u0002!\t!\u0019\u000b\u0003\u0013\nDQ!\u00141A\u0002\rCQa\u0012\u0001\u0005\u0002\u0011$\"!S3\t\u000b5\u001b\u0007\u0019\u00014\u0011\u0005)9\u0017B\u00015\u0005\u0005\u0011auN\\4\t\u000b\u001d\u0003A\u0011\u00016\u0015\u0005%[\u0007\"B'j\u0001\u0004a\u0007C\u0001\u0006n\u0013\tqGAA\u0003GY>\fG\u000fC\u0003H\u0001\u0011\u0005\u0001\u000f\u0006\u0002Jc\")Qj\u001ca\u0001eB\u0011!b]\u0005\u0003i\u0012\u0011a\u0001R8vE2,\u0007\"B$\u0001\t\u00031HCA%x\u0011\u0015iU\u000f1\u0001y!\tQ\u00110\u0003\u0002{\t\t9!i\\8mK\u0006t\u0007\"B$\u0001\t\u0003aHCA%~\u0011\u0015i5\u00101\u0001&\u0011\u001dy\b\u0001)C\u0005\u0003\u0003\t1\"\u001e8baBd\u00170S7qYR)\u0011*a\u0001\u0002\u0006!)QJ a\u00013!9\u0011q\u0001@A\u0002\u0005%\u0011\u0001\u00049sS6LG/\u001b<f\u00072\u001c\b\u0007BA\u0006\u0003\u001f\u0001B!\f\u001a\u0002\u000eA\u0019!#a\u0004\u0005\u0017\u0005E\u0011QAA\u0001\u0002\u0003\u0015\t!\u0006\u0002\u0004?\u0012\u0012\u0004bBA\u000b\u0001\u0011\u0005\u0013qC\u0001\tG\u0006tW)];bYR\u0019\u00010!\u0007\t\r5\u000b\u0019\u00021\u0001\u001a\u0011\u001d\ti\u0002\u0001C!\u0003?\ta!Z9vC2\u001cHc\u0001=\u0002\"!1Q*a\u0007A\u0002eAq!!\n\u0001\t\u0003\n9#\u0001\u0005iCND7i\u001c3f)\u0005\u0019\u0005bBA\u0016\u0001\u0011\u0005\u0013QF\u0001\ti>\u001cFO]5oOR\u0011\u0011q\u0006\t\u0005\u0003c\t9DD\u0002\u000b\u0003gI1!!\u000e\u0005\u0003\u0019\u0001&/\u001a3fM&!\u0011\u0011HA\u001e\u0005\u0019\u0019FO]5oO*\u0019\u0011Q\u0007\u0003)\u000b\u0001\ty$a\u0013\u0011\t\u0005\u0005\u0013qI\u0007\u0003\u0003\u0007R1!!\u0012\u0005\u0003)\tgN\\8uCRLwN\\\u0005\u0005\u0003\u0013\n\u0019E\u0001\tj[Bd\u0017nY5u\u001d>$hi\\;oI\u0006\u0012\u0011QJ\u0001\u001f\u001d>\u00043\t\\1tgR\u000bw\rI1wC&d\u0017M\u00197fA\u0019|'\u000f\t\u0013|)v<q!!\u0015\u0003\u0011\u0003\t\u0019&\u0001\u0005DY\u0006\u001c8\u000fV1h!\rq\u0011Q\u000b\u0004\u0007\u0003\tA\t!a\u0016\u0014\t\u0005U\u0013b\b\u0005\t\u00037\n)\u0006\"\u0001\u0002^\u00051A(\u001b8jiz\"\"!a\u0015\t\u0015\u0005\u0005\u0014Q\u000bb\u0001\n\u0013\t\u0019'\u0001\u0006PE*,7\r\u001e+Z!\u0016+\"!!\u001a\u0011\t5\u0012\u0014q\r\t\u0004[\u0005%\u0014bAA6]\t1qJ\u00196fGRD\u0011\"a\u001c\u0002V\u0001\u0006I!!\u001a\u0002\u0017=\u0013'.Z2u)f\u0003V\t\t\u0005\u000b\u0003g\n)F1A\u0005\n\u0005U\u0014a\u0003(pi\"Lgn\u001a+Z!\u0016+\"!a\u001e\u0011\t5\u0012\u0014\u0011\u0010\t\u0005\u0003w\n\t)\u0004\u0002\u0002~)\u0019\u0011q\u0010\u0003\u0002\u000fI,h\u000e^5nK&!\u00111QA?\u0005!qu\u000e\u001e5j]\u001e$\u0003\"CAD\u0003+\u0002\u000b\u0011BA<\u00031qu\u000e\u001e5j]\u001e$\u0016\fU#!\u0011)\tY)!\u0016C\u0002\u0013%\u0011QR\u0001\t\u001dVdG\u000eV-Q\u000bV\u0011\u0011q\u0012\t\u0005[I\n\t\n\u0005\u0003\u0002|\u0005M\u0015\u0002BAK\u0003{\u0012QAT;mY\u0012B\u0011\"!'\u0002V\u0001\u0006I!a$\u0002\u00139+H\u000e\u001c+Z!\u0016\u0003\u0003BCAO\u0003+\u0012\r\u0011\"\u0001\u0002 \u0006!!)\u001f;f+\t\t\t\u000bE\u0002\u000f\u0001EC\u0011\"!*\u0002V\u0001\u0006I!!)\u0002\u000b\tKH/\u001a\u0011\t\u0015\u0005%\u0016Q\u000bb\u0001\n\u0003\tY+A\u0003TQ>\u0014H/\u0006\u0002\u0002.B\u0019a\u0002A,\t\u0013\u0005E\u0016Q\u000bQ\u0001\n\u00055\u0016AB*i_J$\b\u0005\u0003\u0006\u00026\u0006U#\u0019!C\u0001\u0003o\u000bAa\u00115beV\u0011\u0011\u0011\u0018\t\u0004\u001d\u0001i\u0006\"CA_\u0003+\u0002\u000b\u0011BA]\u0003\u0015\u0019\u0005.\u0019:!\u0011)\t\t-!\u0016C\u0002\u0013\u0005\u00111Y\u0001\u0004\u0013:$XCAAc!\rq\u0001a\u0011\u0005\n\u0003\u0013\f)\u0006)A\u0005\u0003\u000b\fA!\u00138uA!Q\u0011QZA+\u0005\u0004%\t!a4\u0002\t1{gnZ\u000b\u0003\u0003#\u00042A\u0004\u0001g\u0011%\t).!\u0016!\u0002\u0013\t\t.A\u0003M_:<\u0007\u0005\u0003\u0006\u0002Z\u0006U#\u0019!C\u0001\u00037\fQA\u00127pCR,\"!!8\u0011\u00079\u0001A\u000eC\u0005\u0002b\u0006U\u0003\u0015!\u0003\u0002^\u00061a\t\\8bi\u0002B!\"!:\u0002V\t\u0007I\u0011AAt\u0003\u0019!u.\u001e2mKV\u0011\u0011\u0011\u001e\t\u0004\u001d\u0001\u0011\b\"CAw\u0003+\u0002\u000b\u0011BAu\u0003\u001d!u.\u001e2mK\u0002B!\"!=\u0002V\t\u0007I\u0011AAz\u0003\u001d\u0011un\u001c7fC:,\"!!>\u0011\u00079\u0001\u0001\u0010C\u0005\u0002z\u0006U\u0003\u0015!\u0003\u0002v\u0006A!i\\8mK\u0006t\u0007\u0005\u0003\u0006\u0002~\u0006U#\u0019!C\u0001\u0003\u007f\fA!\u00168jiV\u0011!\u0011\u0001\t\u0004\u001d\u0001)\u0003\"\u0003B\u0003\u0003+\u0002\u000b\u0011\u0002B\u0001\u0003\u0015)f.\u001b;!\u0011)\u0011I!!\u0016C\u0002\u0013\u0005!1B\u0001\u0004\u0003:LXC\u0001B\u0007!\rq\u0001!\u0007\u0005\n\u0005#\t)\u0006)A\u0005\u0005\u001b\tA!\u00118zA!Q!QCA+\u0005\u0004%\tAa\u0006\u0002\r=\u0013'.Z2u+\t\u0011I\u0002\u0005\u0003\u000f\u0001\u0005\u001d\u0004\"\u0003B\u000f\u0003+\u0002\u000b\u0011\u0002B\r\u0003\u001dy%M[3di\u0002B!B!\t\u0002V\t\u0007I\u0011\u0001B\u0012\u0003\u0019\te.\u001f,bYV\u0011!Q\u0005\t\u0005\u001d\u0001\u00119\u0003E\u0002\u000b\u0005SI1Aa\u000b\u0005\u0005\u0019\te.\u001f,bY\"I!qFA+A\u0003%!QE\u0001\b\u0003:Lh+\u00197!\u0011)\u0011\u0019$!\u0016C\u0002\u0013\u0005!QG\u0001\u0007\u0003:L(+\u001a4\u0016\u0005\t]\u0002c\u0001\b\u0001\u0013!I!1HA+A\u0003%!qG\u0001\b\u0003:L(+\u001a4!\u0011)\u0011y$!\u0016C\u0002\u0013\u0005!\u0011I\u0001\b\u001d>$\b.\u001b8h+\t\u0011\u0019\u0005E\u0002\u000f\u0001YA\u0011Ba\u0012\u0002V\u0001\u0006IAa\u0011\u0002\u00119{G\u000f[5oO\u0002B!Ba\u0013\u0002V\t\u0007I\u0011\u0001B'\u0003\u0011qU\u000f\u001c7\u0016\u0005\t=\u0003\u0003\u0002\b\u0001\u0005#\u00022A\u0003B*\u0013\r\u0011)\u0006\u0002\u0002\u0005\u001dVdG\u000eC\u0005\u0003Z\u0005U\u0003\u0015!\u0003\u0003P\u0005)a*\u001e7mA!A!QLA+\t\u0003\u0011y&A\u0003baBd\u00170\u0006\u0003\u0003b\t\u001dD\u0003\u0002B2\u0005S\u0002BA\u0004\u0001\u0003fA\u0019!Ca\u001a\u0005\rQ\u0011YF1\u0001\u0016\u0011!\u0011YGa\u0017A\u0002\t5\u0014!\u0004:v]RLW.Z\"mCN\u001c\u0018\u0007\r\u0003\u0003p\tM\u0004\u0003B\u00173\u0005c\u00022A\u0005B:\t-\u0011)H!\u001b\u0002\u0002\u0003\u0005)\u0011A\u000b\u0003\u0007}#s\u0007C\u0004H\u0003+\"\tA!\u001f\u0016\t\tm$1\u0013\u000b\u0005\u0005{\u0012Y\t\u0005\u0003\u000b\u0015\n}\u0004\u0007\u0002BA\u0005\u000f\u0003b!!\r\u0003\u0004\n\u0015\u0015bA\u001a\u0002<A\u0019!Ca\"\u0005\u0017\t%%qOA\u0001\u0002\u0003\u0015\t!\u0006\u0002\u0004?\u0012B\u0004\u0002\u0003BG\u0005o\u0002\rAa$\u0002\t\r$\u0018m\u001a\t\u0005\u001d\u0001\u0011\t\nE\u0002\u0013\u0005'#a\u0001\u0006B<\u0005\u0004)\u0002B\u0003BL\u0003+\n\t\u0011\"\u0003\u0003\u001a\u0006Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\t\t9\u0007")
/* loaded from: classes3-dex2jar.jar:scala/reflect/ClassTag.class */
public interface ClassTag<T> extends ClassManifestDeprecatedApis<T>, Equals {

    /* renamed from: scala.reflect.ClassTag$class */
    /* loaded from: classes3-dex2jar.jar:scala/reflect/ClassTag$class.class */
    public abstract class Cclass {
        public static void $init$(ClassTag classTag) {
        }

        public static boolean canEqual(ClassTag classTag, Object obj) {
            return obj instanceof ClassTag;
        }

        public static boolean equals(ClassTag classTag, Object obj) {
            boolean z;
            if (obj instanceof ClassTag) {
                Class<?> runtimeClass = classTag.runtimeClass();
                Class<?> runtimeClass2 = ((ClassTag) obj).runtimeClass();
                if (runtimeClass != null ? runtimeClass.equals(runtimeClass2) : runtimeClass2 == null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public static int hashCode(ClassTag classTag) {
            return ScalaRunTime$.MODULE$.hash(classTag.runtimeClass());
        }

        public static Object newArray(ClassTag classTag, int i) {
            byte[] bArr;
            Class<?> runtimeClass = classTag.runtimeClass();
            Class cls = Byte.TYPE;
            if (cls != null ? !cls.equals(runtimeClass) : runtimeClass != null) {
                Class cls2 = Short.TYPE;
                if (cls2 != null ? !cls2.equals(runtimeClass) : runtimeClass != null) {
                    Class cls3 = Character.TYPE;
                    if (cls3 != null ? !cls3.equals(runtimeClass) : runtimeClass != null) {
                        Class cls4 = Integer.TYPE;
                        if (cls4 != null ? !cls4.equals(runtimeClass) : runtimeClass != null) {
                            Class cls5 = Long.TYPE;
                            if (cls5 != null ? !cls5.equals(runtimeClass) : runtimeClass != null) {
                                Class cls6 = Float.TYPE;
                                if (cls6 != null ? !cls6.equals(runtimeClass) : runtimeClass != null) {
                                    Class cls7 = Double.TYPE;
                                    if (cls7 != null ? !cls7.equals(runtimeClass) : runtimeClass != null) {
                                        Class cls8 = Boolean.TYPE;
                                        if (cls8 != null ? !cls8.equals(runtimeClass) : runtimeClass != null) {
                                            Class cls9 = Void.TYPE;
                                            bArr = (cls9 != null ? !cls9.equals(runtimeClass) : runtimeClass != null) ? Array.newInstance(classTag.runtimeClass(), i) : new BoxedUnit[i];
                                        } else {
                                            bArr = new boolean[i];
                                        }
                                    } else {
                                        bArr = new double[i];
                                    }
                                } else {
                                    bArr = new float[i];
                                }
                            } else {
                                bArr = new long[i];
                            }
                        } else {
                            bArr = new int[i];
                        }
                    } else {
                        bArr = new char[i];
                    }
                } else {
                    bArr = new short[i];
                }
            } else {
                bArr = new byte[i];
            }
            return bArr;
        }

        private static final String prettyprint$1(ClassTag classTag, Class cls) {
            return cls.isArray() ? new StringContext(Predef$.MODULE$.wrapRefArray(new String[]{"Array[", "]"})).m361s(Predef$.MODULE$.genericWrapArray(new Object[]{prettyprint$1(classTag, ScalaRunTime$.MODULE$.arrayElementClass(cls))})) : cls.getName();
        }

        public static Option scala$reflect$ClassTag$$unapplyImpl(ClassTag classTag, Object obj, Class cls) {
            return (classTag.runtimeClass().isInstance(obj) || classTag.runtimeClass().isAssignableFrom(cls)) ? new Some(obj) : None$.MODULE$;
        }

        public static String toString(ClassTag classTag) {
            return prettyprint$1(classTag, classTag.runtimeClass());
        }

        public static Option unapply(ClassTag classTag, byte b) {
            return scala$reflect$ClassTag$$unapplyImpl(classTag, BoxesRunTime.boxToByte(b), Byte.TYPE);
        }

        public static Option unapply(ClassTag classTag, char c) {
            return scala$reflect$ClassTag$$unapplyImpl(classTag, BoxesRunTime.boxToCharacter(c), Character.TYPE);
        }

        public static Option unapply(ClassTag classTag, double d) {
            return scala$reflect$ClassTag$$unapplyImpl(classTag, BoxesRunTime.boxToDouble(d), Double.TYPE);
        }

        public static Option unapply(ClassTag classTag, float f) {
            return scala$reflect$ClassTag$$unapplyImpl(classTag, BoxesRunTime.boxToFloat(f), Float.TYPE);
        }

        public static Option unapply(ClassTag classTag, int i) {
            return scala$reflect$ClassTag$$unapplyImpl(classTag, BoxesRunTime.boxToInteger(i), Integer.TYPE);
        }

        public static Option unapply(ClassTag classTag, long j) {
            return scala$reflect$ClassTag$$unapplyImpl(classTag, BoxesRunTime.boxToLong(j), Long.TYPE);
        }

        public static Option unapply(ClassTag classTag, Object obj) {
            return (obj == null || (!classTag.runtimeClass().isInstance(obj) && ((!(obj instanceof Byte) || !classTag.runtimeClass().isAssignableFrom(Byte.TYPE)) && ((!(obj instanceof Short) || !classTag.runtimeClass().isAssignableFrom(Short.TYPE)) && ((!(obj instanceof Character) || !classTag.runtimeClass().isAssignableFrom(Character.TYPE)) && ((!(obj instanceof Integer) || !classTag.runtimeClass().isAssignableFrom(Integer.TYPE)) && ((!(obj instanceof Long) || !classTag.runtimeClass().isAssignableFrom(Long.TYPE)) && ((!(obj instanceof Float) || !classTag.runtimeClass().isAssignableFrom(Float.TYPE)) && ((!(obj instanceof Double) || !classTag.runtimeClass().isAssignableFrom(Double.TYPE)) && ((!(obj instanceof Boolean) || !classTag.runtimeClass().isAssignableFrom(Boolean.TYPE)) && (!(obj instanceof BoxedUnit) || !classTag.runtimeClass().isAssignableFrom(BoxedUnit.TYPE)))))))))))) ? None$.MODULE$ : new Some(obj);
        }

        public static Option unapply(ClassTag classTag, BoxedUnit boxedUnit) {
            return scala$reflect$ClassTag$$unapplyImpl(classTag, boxedUnit, BoxedUnit.TYPE);
        }

        public static Option unapply(ClassTag classTag, short s) {
            return scala$reflect$ClassTag$$unapplyImpl(classTag, BoxesRunTime.boxToShort(s), Short.TYPE);
        }

        public static Option unapply(ClassTag classTag, boolean z) {
            return scala$reflect$ClassTag$$unapplyImpl(classTag, BoxesRunTime.boxToBoolean(z), Boolean.TYPE);
        }

        public static ClassTag wrap(ClassTag classTag) {
            return ClassTag$.MODULE$.apply(classTag.arrayClass(classTag.runtimeClass()));
        }
    }

    @Override // scala.reflect.ClassManifestDeprecatedApis, scala.Equals
    boolean canEqual(Object obj);

    boolean equals(Object obj);

    int hashCode();

    @Override // scala.reflect.ClassManifestDeprecatedApis
    Object newArray(int i);

    Class<?> runtimeClass();

    String toString();

    Option<T> unapply(byte b);

    Option<T> unapply(char c);

    Option<T> unapply(double d);

    Option<T> unapply(float f);

    Option<T> unapply(int i);

    Option<T> unapply(long j);

    Option<T> unapply(Object obj);

    Option<T> unapply(BoxedUnit boxedUnit);

    Option<T> unapply(short s);

    Option<T> unapply(boolean z);

    ClassTag<Object> wrap();
}
