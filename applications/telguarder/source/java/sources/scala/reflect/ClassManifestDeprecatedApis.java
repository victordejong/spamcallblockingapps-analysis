package scala.reflect;

import java.lang.reflect.Array;
import scala.Option$;
import scala.Predef$;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Set;
import scala.collection.mutable.ArrayBuilder;
import scala.collection.mutable.StringBuilder;
import scala.collection.mutable.WrappedArray;
@ScalaSignature(bytes = "\u0006\u0001\u0005Uh!C\u0001\u0003!\u0003\r\taBAw\u0005m\u0019E.Y:t\u001b\u0006t\u0017NZ3ti\u0012+\u0007O]3dCR,G-\u00119jg*\u00111\u0001B\u0001\be\u00164G.Z2u\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0003\u0011M\u00192\u0001A\u0005\u000e!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\u0004\u001d=\tR\"\u0001\u0002\n\u0005A\u0011!aC(qi6\u000bg.\u001b4fgR\u0004\"AE\n\r\u0001\u0011)A\u0003\u0001b\u0001+\t\tA+\u0005\u0002\u00173A\u0011!bF\u0005\u00031\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u000b5%\u00111\u0004\u0002\u0002\u0004\u0003:L\b\"B\u000f\u0001\t\u0003q\u0012A\u0002\u0013j]&$H\u0005F\u0001 !\tQ\u0001%\u0003\u0002\"\t\t!QK\\5u\u0011\u0015\u0019\u0003\u0001\"\u0001%\u0003\u001d)'/Y:ve\u0016,\u0012!\n\u0019\u0003M=\u00022a\n\u0017/\u001b\u0005A#BA\u0015+\u0003\u0011a\u0017M\\4\u000b\u0003-\nAA[1wC&\u0011Q\u0006\u000b\u0002\u0006\u00072\f7o\u001d\t\u0003%=\"\u0011\u0002\r\u0012\u0002\u0002\u0003\u0005)\u0011A\u000b\u0003\u0007}#\u0013\u0007\u000b\u0003#eU:\u0004C\u0001\u00064\u0013\t!DA\u0001\u0006eKB\u0014XmY1uK\u0012\f\u0013AN\u0001\u0019+N,\u0007E];oi&lWm\u00117bgN\u0004\u0013N\\:uK\u0006$\u0017%\u0001\u001d\u0002\rIr\u0013\u0007\r\u00181\u0011\u0015Q\u0004\u0001\"\u0003<\u0003\u001d\u0019XO\u0019;za\u0016$2\u0001P G!\tQQ(\u0003\u0002?\t\t9!i\\8mK\u0006t\u0007\"\u0002!:\u0001\u0004\t\u0015aA:vEB\u0012!\t\u0012\t\u0004O1\u001a\u0005C\u0001\nE\t%)u(!A\u0001\u0002\u000b\u0005QCA\u0002`IIBQaR\u001dA\u0002!\u000b1a];qa\tI5\nE\u0002(Y)\u0003\"AE&\u0005\u001313\u0015\u0011!A\u0001\u0006\u0003)\"aA0%g!)a\n\u0001C\u0005\u001f\u000691/\u001e2be\u001e\u001cHc\u0001\u001fQ=\")\u0011+\u0014a\u0001%\u0006)\u0011M]4tcA\u00191KV-\u000f\u0005)!\u0016BA+\u0005\u0003\u001d\u0001\u0018mY6bO\u0016L!a\u0016-\u0003\t1K7\u000f\u001e\u0006\u0003+\u0012\u0001$A\u0017/\u0011\u00079y1\f\u0005\u0002\u00139\u0012IQ\fUA\u0001\u0002\u0003\u0015\t!\u0006\u0002\u0004?\u00122\u0004\"B0N\u0001\u0004\u0001\u0017!B1sON\u0014\u0004cA*WCB\u0012!\r\u001a\t\u0004\u001d=\u0019\u0007C\u0001\ne\t%)g,!A\u0001\u0002\u000b\u0005QCA\u0002`I]BQa\u001a\u0001\u0005\u0002!\f\u0001\u0003\n7fgN$3m\u001c7p]\u0012bWm]:\u0015\u0005qJ\u0007\"\u00026g\u0001\u0004Y\u0017\u0001\u0002;iCR\u0004$\u0001\\:\u0011\u00075|'O\u0004\u0002\u000f]&\u0011QKA\u0005\u0003aF\u0014Qb\u00117bgNl\u0015M\\5gKN$(BA+\u0003!\t\u00112\u000fB\u0005uS\u0006\u0005\t\u0011!B\u0001+\t\u0019q\f\n\u001d)\t\u0019\u0014doN\u0011\u0002o\u00069Uk]3!g\u000e\fG.\u0019\u0018sK\u001adWm\u0019;/eVtG/[7f]Ut\u0017N^3sg\u0016tC+\u001f9f)\u0006<\u0007EZ8sAM,(\r^=qK\u0002\u001a\u0007.Z2lS:<\u0007%\u001b8ti\u0016\fG\rC\u0003z\u0001\u0011\u0005!0\u0001\f%OJ,\u0017\r^3sI\r|Gn\u001c8%OJ,\u0017\r^3s)\ta4\u0010C\u0003kq\u0002\u0007A\u0010\r\u0002~\u007fB\u0019Qn\u001c@\u0011\u0005IyHACA\u0001w\u0006\u0005\t\u0011!B\u0001+\t!q\fJ\u00191Q\u0011A(G^\u001c\t\u000f\u0005\u001d\u0001\u0001\"\u0011\u0002\n\u0005A1-\u00198FcV\fG\u000eF\u0002=\u0003\u0017Aq!!\u0004\u0002\u0006\u0001\u0007\u0011$A\u0003pi\",'\u000fC\u0004\u0002\u0012\u0001!\t\"a\u0005\u0002\u0015\u0005\u0014(/Y=DY\u0006\u001c8/\u0006\u0003\u0002\u0016\u0005\u0005B\u0003BA\f\u0003G\u0001Ba\n\u0017\u0002\u001aA)!\"a\u0007\u0002 %\u0019\u0011Q\u0004\u0003\u0003\u000b\u0005\u0013(/Y=\u0011\u0007I\t\t\u0003\u0002\u0004\u0015\u0003\u001f\u0011\r!\u0006\u0005\t\u0003K\ty\u00011\u0001\u0002(\u0005\u0011A\u000f\u001d\u0019\u0005\u0003S\ti\u0003\u0005\u0003(Y\u0005-\u0002c\u0001\n\u0002.\u0011Y\u0011qFA\u0012\u0003\u0003\u0005\tQ!\u0001\u0016\u0005\u0011yF%M\u0019\t\u000f\u0005M\u0002\u0001\"\u0001\u00026\u0005i\u0011M\u001d:bs6\u000bg.\u001b4fgR,\"!a\u000e\u0011\t5|\u0017\u0011\b\t\u0005\u0015\u0005m\u0011\u0003\u000b\u0004\u00022I\nidN\u0011\u0003\u0003\u007f\t\u0001#V:fA]\u0014\u0018\r\u001d\u0011j]N$X-\u00193\t\u000f\u0005\r\u0003\u0001\"\u0011\u0002F\u0005Aa.Z<BeJ\f\u0017\u0010\u0006\u0003\u0002:\u0005\u001d\u0003\u0002CA%\u0003\u0003\u0002\r!a\u0013\u0002\u00071,g\u000eE\u0002\u000b\u0003\u001bJ1!a\u0014\u0005\u0005\rIe\u000e\u001e\u0005\b\u0003'\u0002A\u0011AA+\u0003%qWm^!se\u0006L(\u0007\u0006\u0003\u0002X\u0005e\u0003#\u0002\u0006\u0002\u001c\u0005e\u0002\u0002CA%\u0003#\u0002\r!a\u0013)\r\u0005E#'!\u00188C\t\ty&A\rVg\u0016\u0004sO]1q]9,w/\u0011:sCf\u0004\u0013N\\:uK\u0006$\u0007bBA2\u0001\u0011\u0005\u0011QM\u0001\n]\u0016<\u0018I\u001d:bsN\"B!a\u001a\u0002jA)!\"a\u0007\u0002X!A\u0011\u0011JA1\u0001\u0004\tY\u0005\u000b\u0004\u0002bI\nigN\u0011\u0003\u0003_\na$V:fA]\u0014\u0018\r\u001d\u0018xe\u0006\u0004hF\\3x\u0003J\u0014\u0018-\u001f\u0011j]N$X-\u00193\t\u000f\u0005M\u0004\u0001\"\u0001\u0002v\u0005Ia.Z<BeJ\f\u0017\u0010\u000e\u000b\u0005\u0003o\nI\bE\u0003\u000b\u00037\t9\u0007\u0003\u0005\u0002J\u0005E\u0004\u0019AA&Q\u0019\t\tHMA?o\u0005\u0012\u0011qP\u0001$+N,\u0007e\u001e:ba::(/\u00199/oJ\f\u0007O\f8fo\u0006\u0013(/Y=!S:\u001cH/Z1e\u0011\u001d\t\u0019\t\u0001C\u0001\u0003\u000b\u000b\u0011B\\3x\u0003J\u0014\u0018-_\u001b\u0015\t\u0005\u001d\u0015\u0011\u0012\t\u0006\u0015\u0005m\u0011q\u000f\u0005\t\u0003\u0013\n\t\t1\u0001\u0002L!2\u0011\u0011\u0011\u001a\u0002\u000e^\n#!a$\u0002QU\u001bX\rI<sCBtsO]1q]]\u0014\u0018\r\u001d\u0018xe\u0006\u0004hF\\3x\u0003J\u0014\u0018-\u001f\u0011j]N$X-\u00193\t\u000f\u0005M\u0005\u0001\"\u0001\u0002\u0016\u0006ya.Z<Xe\u0006\u0004\b/\u001a3BeJ\f\u0017\u0010\u0006\u0003\u0002\u0018\u0006\u001d\u0006#BAM\u0003G\u000bRBAAN\u0015\u0011\ti*a(\u0002\u000f5,H/\u00192mK*\u0019\u0011\u0011\u0015\u0003\u0002\u0015\r|G\u000e\\3di&|g.\u0003\u0003\u0002&\u0006m%\u0001D,sCB\u0004X\rZ!se\u0006L\b\u0002CA%\u0003#\u0003\r!a\u0013)\r\u0005E%'a+8C\t\ti+\u0001\u0013De\u0016\fG/\u001a\u0011Xe\u0006\u0004\b/\u001a3BeJ\f\u0017\u0010\t3je\u0016\u001cG\u000f\\=!S:\u001cH/Z1e\u0011\u001d\t\t\f\u0001C\u0001\u0003g\u000bqB\\3x\u0003J\u0014\u0018-\u001f\"vS2$WM\u001d\u000b\u0003\u0003k\u0003R!!'\u00028FIA!!/\u0002\u001c\na\u0011I\u001d:bs\n+\u0018\u000e\u001c3fe\"2\u0011q\u0016\u001a\u0002>^\n#!a0\u0002GU\u001bX\rI!se\u0006L()^5mI\u0016\u0014h&\\1lK\"\"\b.[:*A%t7\u000f^3bI\"9\u00111\u0019\u0001\u0005\u0002\u0005\u0015\u0017!\u0004;za\u0016\f%oZ;nK:$8/\u0006\u0002\u0002HB!1KVAea\u0011\tY-a4\u0011\t9y\u0011Q\u001a\t\u0004%\u0005=GaCAi\u0003\u0003\f\t\u0011!A\u0003\u0002U\u0011Aa\u0018\u00132e!2\u0011\u0011\u0019\u001a\u0002V^\n#!a6\u0002\u0019V\u001bX\rI:dC2\fgF]3gY\u0016\u001cGO\f:v]RLW.\u001a\u0018v]&4XM]:f]QK\b/\u001a+bO\u0002\"x\u000eI2baR,(/\u001a\u0011usB,\u0007e\u001d;sk\u000e$XO]3!S:\u001cH/Z1e\u0011\u001d\tY\u000e\u0001C\t\u0003;\f\u0011\"\u0019:h'R\u0014\u0018N\\4\u0016\u0005\u0005}\u0007\u0003BAq\u0003Ot1ACAr\u0013\r\t)\u000fB\u0001\u0007!J,G-\u001a4\n\t\u0005%\u00181\u001e\u0002\u0007'R\u0014\u0018N\\4\u000b\u0007\u0005\u0015H\u0001E\u0002n_FAS\u0001\u0001\u001a\u0002r^\n#!a=\u0002EU\u001bX\rI:dC2\fgF]3gY\u0016\u001cGOL\"mCN\u001cH+Y4!S:\u001cH/Z1e\u0001")
/* loaded from: classes3-dex2jar.jar:scala/reflect/ClassManifestDeprecatedApis.class */
public interface ClassManifestDeprecatedApis<T> extends OptManifest<T> {

    /* renamed from: scala.reflect.ClassManifestDeprecatedApis$class */
    /* loaded from: classes3-dex2jar.jar:scala/reflect/ClassManifestDeprecatedApis$class.class */
    public abstract class Cclass {
        public static void $init$(ClassTag classTag) {
        }

        public static boolean $less$colon$less(ClassTag classTag, ClassTag classTag2) {
            boolean z;
            if (!cannotMatch$1(classTag, classTag2)) {
                Class<?> runtimeClass = classTag.runtimeClass();
                Class<?> runtimeClass2 = classTag2.runtimeClass();
                if ((runtimeClass != null ? !runtimeClass.equals(runtimeClass2) : runtimeClass2 != null) ? classTag2.typeArguments().isEmpty() && subtype(classTag, classTag.runtimeClass(), classTag2.runtimeClass()) : subargs(classTag, classTag.typeArguments(), classTag2.typeArguments())) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public static String argString(ClassTag classTag) {
            return classTag.typeArguments().nonEmpty() ? classTag.typeArguments().mkString("[", ", ", "]") : classTag.runtimeClass().isArray() ? new StringBuilder().append((Object) "[").append(package$.MODULE$.ClassManifest().fromClass(classTag.runtimeClass().getComponentType())).append((Object) "]").toString() : "";
        }

        public static Class arrayClass(ClassTag classTag, Class cls) {
            return Array.newInstance(cls, 0).getClass();
        }

        public static ClassTag arrayManifest(ClassTag classTag) {
            return package$.MODULE$.ClassManifest().classType(classTag.arrayClass(classTag.runtimeClass()), classTag, Predef$.MODULE$.wrapRefArray(new OptManifest[0]));
        }

        public static boolean canEqual(ClassTag classTag, Object obj) {
            return obj instanceof ClassTag;
        }

        private static final boolean cannotMatch$1(ClassTag classTag, ClassTag classTag2) {
            return (classTag2 instanceof AnyValManifest) || classTag2 == package$.MODULE$.Manifest().AnyVal() || classTag2 == package$.MODULE$.Manifest().Nothing() || classTag2 == package$.MODULE$.Manifest().Null();
        }

        public static Class erasure(ClassTag classTag) {
            return classTag.runtimeClass();
        }

        private static final boolean loop$1(ClassTag classTag, Set set, Set set2, Class cls) {
            boolean z;
            while (true) {
                if (!set.nonEmpty()) {
                    z = false;
                    break;
                }
                Class cls2 = (Class) set.head();
                Set set3 = (Set) Predef$.MODULE$.refArrayOps(cls2.getInterfaces()).toSet().$plus$plus(Option$.MODULE$.option2Iterable(Option$.MODULE$.apply(cls2.getSuperclass())));
                if (set3.apply((Set) cls)) {
                    z = true;
                    break;
                }
                set = (Set) ((Set) set.$plus$plus(set3).filterNot(set2)).$minus((Set) cls2);
                set2 = (Set) set2.$plus((Set) cls2);
            }
            return z;
        }

        public static Object newArray(ClassTag classTag, int i) {
            return Array.newInstance(classTag.runtimeClass(), i);
        }

        public static Object[] newArray2(ClassTag classTag, int i) {
            return (Object[]) Array.newInstance(classTag.arrayClass(classTag.runtimeClass()), i);
        }

        public static Object[][] newArray3(ClassTag classTag, int i) {
            return (Object[][]) Array.newInstance(classTag.arrayClass(classTag.arrayClass(classTag.runtimeClass())), i);
        }

        public static Object[][][] newArray4(ClassTag classTag, int i) {
            return (Object[][][]) Array.newInstance(classTag.arrayClass(classTag.arrayClass(classTag.arrayClass(classTag.runtimeClass()))), i);
        }

        public static Object[][][][] newArray5(ClassTag classTag, int i) {
            return (Object[][][][]) Array.newInstance(classTag.arrayClass(classTag.arrayClass(classTag.arrayClass(classTag.arrayClass(classTag.runtimeClass())))), i);
        }

        public static ArrayBuilder newArrayBuilder(ClassTag classTag) {
            return new ArrayBuilder.ofRef(classTag);
        }

        public static WrappedArray newWrappedArray(ClassTag classTag, int i) {
            return new WrappedArray.ofRef((Object[]) classTag.newArray(i));
        }

        private static boolean subargs(ClassTag classTag, List list, List list2) {
            return list.corresponds(list2, new ClassManifestDeprecatedApis$$anonfun$subargs$1(classTag));
        }

        private static boolean subtype(ClassTag classTag, Class cls, Class cls2) {
            return loop$1(classTag, (Set) Predef$.MODULE$.Set().apply(Predef$.MODULE$.wrapRefArray(new Class[]{cls})), (Set) Predef$.MODULE$.Set().apply(Nil$.MODULE$), cls2);
        }

        public static List typeArguments(ClassTag classTag) {
            return Nil$.MODULE$;
        }
    }

    boolean $greater$colon$greater(ClassTag<?> classTag);

    boolean $less$colon$less(ClassTag<?> classTag);

    String argString();

    <T> Class<Object> arrayClass(Class<?> cls);

    ClassTag<Object> arrayManifest();

    boolean canEqual(Object obj);

    Class<?> erasure();

    Object newArray(int i);

    Object[] newArray2(int i);

    Object[][] newArray3(int i);

    Object[][][] newArray4(int i);

    Object[][][][] newArray5(int i);

    ArrayBuilder<T> newArrayBuilder();

    WrappedArray<T> newWrappedArray(int i);

    List<OptManifest<?>> typeArguments();
}
