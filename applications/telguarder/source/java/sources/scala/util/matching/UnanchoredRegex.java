package scala.util.matching;

import java.util.regex.Matcher;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001)2q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\bV]\u0006t7\r[8sK\u0012\u0014VmZ3y\u0015\t\u0019A!\u0001\u0005nCR\u001c\u0007.\u001b8h\u0015\t)a!\u0001\u0003vi&d'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M\u0011\u0001A\u0003\t\u0003\u00171i\u0011AA\u0005\u0003\u001b\t\u0011QAU3hKbDQa\u0004\u0001\u0005\u0002A\ta\u0001J5oSR$C#A\t\u0011\u0005I\u0019R\"\u0001\u0004\n\u0005Q1!\u0001B+oSRDQA\u0006\u0001\u0005R]\t!B];o\u001b\u0006$8\r[3s)\tA2\u0004\u0005\u0002\u00133%\u0011!D\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015aR\u00031\u0001\u001e\u0003\u0005i\u0007C\u0001\u0010%\u001b\u0005y\"B\u0001\u0011\"\u0003\u0015\u0011XmZ3y\u0015\t)!EC\u0001$\u0003\u0011Q\u0017M^1\n\u0005\u0015z\"aB'bi\u000eDWM\u001d\u0005\u0006O\u0001!\t\u0005K\u0001\u000bk:\fgn\u00195pe\u0016$W#A\u0015\u0011\u0005-\u0001\u0001")
/* loaded from: classes3-dex2jar.jar:scala/util/matching/UnanchoredRegex.class */
public interface UnanchoredRegex {

    /* renamed from: scala.util.matching.UnanchoredRegex$class */
    /* loaded from: classes3-dex2jar.jar:scala/util/matching/UnanchoredRegex$class.class */
    public abstract class Cclass {
        public static void $init$(UnanchoredRegex unanchoredRegex) {
        }

        public static boolean runMatcher(UnanchoredRegex unanchoredRegex, Matcher matcher) {
            return matcher.find();
        }

        public static UnanchoredRegex unanchored(UnanchoredRegex unanchoredRegex) {
            return unanchoredRegex;
        }
    }

    boolean runMatcher(Matcher matcher);

    UnanchoredRegex unanchored();
}
