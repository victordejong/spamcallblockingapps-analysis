package scala.reflect;

import scala.Predef$;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001e3q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0005NC:Lg-Z:u\u0015\t\u0019A!A\u0004sK\u001adWm\u0019;\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\t/M!\u0001!C\u0007!!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\u0004\u001dI)bBA\b\u0011\u001b\u0005\u0011\u0011BA\t\u0003\u0003\u001d\u0001\u0018mY6bO\u0016L!a\u0005\u000b\u0003\u001b\rc\u0017m]:NC:Lg-Z:u\u0015\t\t\"\u0001\u0005\u0002\u0017/1\u0001A!\u0002\r\u0001\u0005\u0004I\"!\u0001+\u0012\u0005ii\u0002C\u0001\u0006\u001c\u0013\taBAA\u0004O_RD\u0017N\\4\u0011\u0005)q\u0012BA\u0010\u0005\u0005\r\te.\u001f\t\u0003\u0015\u0005J!A\t\u0003\u0003\r\u0015\u000bX/\u00197t\u0011\u0015!\u0003\u0001\"\u0001&\u0003\u0019!\u0013N\\5uIQ\ta\u0005\u0005\u0002\u000bO%\u0011\u0001\u0006\u0002\u0002\u0005+:LG\u000fC\u0003+\u0001\u0011\u00053&A\u0007usB,\u0017I]4v[\u0016tGo]\u000b\u0002YA\u0019Qf\f\u001a\u000f\u0005)q\u0013BA\t\u0005\u0013\t\u0001\u0014G\u0001\u0003MSN$(BA\t\u0005a\t\u0019T\u0007E\u0002\u0010\u0001Q\u0002\"AF\u001b\u0005\u0013YJ\u0013\u0011!A\u0001\u0006\u0003I\"aA0%c!)\u0001\b\u0001C!s\u0005i\u0011M\u001d:bs6\u000bg.\u001b4fgR,\u0012A\u000f\t\u0004\u001f\u0001Y\u0004c\u0001\u0006=+%\u0011Q\b\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\u0006\u007f\u0001!\t\u0005Q\u0001\tG\u0006tW)];bYR\u0011\u0011\t\u0012\t\u0003\u0015\tK!a\u0011\u0003\u0003\u000f\t{w\u000e\\3b]\")QI\u0010a\u0001;\u0005!A\u000f[1u\u0011\u00159\u0005\u0001\"\u0011I\u0003\u0019)\u0017/^1mgR\u0011\u0011)\u0013\u0005\u0006\u000b\u001a\u0003\r!\b\u0005\u0006\u0017\u0002!\t\u0005T\u0001\tQ\u0006\u001c\bnQ8eKR\tQ\n\u0005\u0002\u000b\u001d&\u0011q\n\u0002\u0002\u0004\u0013:$\bf\u0001\u0001R/B\u0011!+V\u0007\u0002'*\u0011A\u000bB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u0001,T\u0005AIW\u000e\u001d7jG&$hj\u001c;G_VtG-I\u0001Y\u0003}qu\u000eI'b]&4Wm\u001d;!CZ\f\u0017\u000e\\1cY\u0016\u0004cm\u001c:!Im$VP\f")
/* loaded from: classes3-dex2jar.jar:scala/reflect/Manifest.class */
public interface Manifest<T> extends ClassTag<T> {

    /* renamed from: scala.reflect.Manifest$class */
    /* loaded from: classes3-dex2jar.jar:scala/reflect/Manifest$class.class */
    public abstract class Cclass {
        public static void $init$(Manifest manifest) {
        }

        public static Manifest arrayManifest(Manifest manifest) {
            return package$.MODULE$.Manifest().classType(manifest.arrayClass(manifest.runtimeClass()), manifest, Predef$.MODULE$.wrapRefArray(new Manifest[0]));
        }

        public static boolean canEqual(Manifest manifest, Object obj) {
            return obj instanceof Manifest;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x004a, code lost:
            if (r0.equals(r0) != false) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean equals(scala.reflect.Manifest r3, java.lang.Object r4) {
            /*
                r0 = r4
                boolean r0 = r0 instanceof scala.reflect.Manifest
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L6c
                r0 = r4
                scala.reflect.Manifest r0 = (scala.reflect.Manifest) r0
                r8 = r0
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r3
                boolean r0 = r0.canEqual(r1)
                if (r0 == 0) goto L6c
                r0 = r3
                java.lang.Class r0 = r0.runtimeClass()
                r9 = r0
                r0 = r8
                java.lang.Class r0 = r0.runtimeClass()
                r4 = r0
                r0 = r9
                if (r0 != 0) goto L41
                r0 = r4
                if (r0 == 0) goto L4d
                r0 = r6
                r7 = r0
                goto L6c
            L41:
                r0 = r6
                r7 = r0
                r0 = r9
                r1 = r4
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L6c
            L4d:
                r0 = r6
                r7 = r0
                r0 = r3
                r1 = r8
                boolean r0 = r0.$less$colon$less(r1)
                if (r0 == 0) goto L6c
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r3
                boolean r0 = r0.$less$colon$less(r1)
                if (r0 == 0) goto L6c
                r0 = 1
                r7 = r0
            L6c:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.reflect.Manifest.Cclass.equals(scala.reflect.Manifest, java.lang.Object):boolean");
        }

        public static int hashCode(Manifest manifest) {
            return ScalaRunTime$.MODULE$.hash(manifest.runtimeClass());
        }

        public static List typeArguments(Manifest manifest) {
            return Nil$.MODULE$;
        }
    }

    @Override // scala.reflect.ClassManifestDeprecatedApis
    Manifest<Object> arrayManifest();

    @Override // scala.reflect.ClassTag, scala.reflect.ClassManifestDeprecatedApis, scala.Equals
    boolean canEqual(Object obj);

    @Override // scala.reflect.ClassTag, scala.Equals
    boolean equals(Object obj);

    @Override // scala.reflect.ClassTag
    int hashCode();

    @Override // scala.reflect.ClassManifestDeprecatedApis
    List<Manifest<?>> typeArguments();
}
