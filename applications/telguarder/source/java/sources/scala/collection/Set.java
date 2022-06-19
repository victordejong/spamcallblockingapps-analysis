package scala.collection;

import scala.collection.generic.GenericCompanion;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001A4q!\u0001\u0002\u0011\u0002\u0007\u0005qAA\u0002TKRT!a\u0001\u0003\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001\u0003\n\u0014\u000f\u0001IQB\b\u0012&YA\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\t)q\u0001cG\u0005\u0003\u001f\u0011\u0011\u0011BR;oGRLwN\\\u0019\u0011\u0005E\u0011B\u0002\u0001\u0003\u0006'\u0001\u0011\r\u0001\u0006\u0002\u0002\u0003F\u0011Q\u0003\u0007\t\u0003\u0015YI!a\u0006\u0003\u0003\u000f9{G\u000f[5oOB\u0011!\"G\u0005\u00035\u0011\u00111!\u00118z!\tQA$\u0003\u0002\u001e\t\t9!i\\8mK\u0006t\u0007cA\u0010!!5\t!!\u0003\u0002\"\u0005\tA\u0011\n^3sC\ndW\rE\u0002 GAI!\u0001\n\u0002\u0003\r\u001d+gnU3u!\u00111\u0013\u0006E\u0016\u000e\u0003\u001dR!\u0001\u000b\u0002\u0002\u000f\u001d,g.\u001a:jG&\u0011!f\n\u0002\u0013\u000f\u0016tWM]5d'\u0016$H+Z7qY\u0006$X\r\u0005\u0002 \u0001A!q$\f\t0\u0013\tq#AA\u0004TKRd\u0015n[3\u0011\u0007}\u0001\u0001\u0003C\u00032\u0001\u0011\u0005!'\u0001\u0004%S:LG\u000f\n\u000b\u0002gA\u0011!\u0002N\u0005\u0003k\u0011\u0011A!\u00168ji\")q\u0007\u0001C!q\u0005I1m\\7qC:LwN\\\u000b\u0002sA\u0019aEO\u0016\n\u0005m:#\u0001E$f]\u0016\u0014\u0018nY\"p[B\fg.[8o\u0011\u0015i\u0004\u0001\"\u0011?\u0003\r\u0019X-]\u000b\u0002_\u001d)\u0001I\u0001E\u0001\u0003\u0006\u00191+\u001a;\u0011\u0005}\u0011e!B\u0001\u0003\u0011\u0003\u00195C\u0001\"E!\r1SiK\u0005\u0003\r\u001e\u0012!bU3u\r\u0006\u001cGo\u001c:z\u0011\u0015A%\t\"\u0001J\u0003\u0019a\u0014N\\5u}Q\t\u0011\tC\u0003L\u0005\u0012\u0005A*\u0001\u0006oK^\u0014U/\u001b7eKJ,\"!T+\u0016\u00039\u0003Ba\u0014*U-6\t\u0001K\u0003\u0002R\u0005\u00059Q.\u001e;bE2,\u0017BA*Q\u0005\u001d\u0011U/\u001b7eKJ\u0004\"!E+\u0005\u000bMQ%\u0019\u0001\u000b\u0011\u0007]SF+D\u0001Y\u0015\tI&!A\u0005j[6,H/\u00192mK&\u0011\u0011\u0001\u0017\u0005\u00069\n#\t%X\u0001\u0006K6\u0004H/_\u000b\u0003=\u0006,\u0012a\u0018\t\u0004?\u0001\u0001\u0007CA\tb\t\u0015\u00192L1\u0001\u0015\u0011\u0015\u0019'\tb\u0001e\u00031\u0019\u0017M\u001c\"vS2$gI]8n+\t)g.F\u0001g!\u00151s-[7p\u0013\tAwE\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0002kW6\t!)\u0003\u0002mu\t!1i\u001c7m!\t\tb\u000eB\u0003\u0014E\n\u0007A\u0003E\u0002 \u00015\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/Set.class */
public interface Set<A> extends Iterable<A>, GenSet<A>, SetLike<A, Set<A>> {

    /* renamed from: scala.collection.Set$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/Set$class.class */
    public abstract class Cclass {
        public static void $init$(Set set) {
        }

        public static GenericCompanion companion(Set set) {
            return Set$.MODULE$;
        }

        public static Set seq(Set set) {
            return set;
        }
    }

    @Override // scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    GenericCompanion<Set> companion();

    @Override // scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Set<A> seq();
}
