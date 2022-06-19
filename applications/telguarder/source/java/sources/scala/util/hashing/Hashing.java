package scala.util.hashing;

import scala.Serializable;
import scala.reflect.ScalaSignature;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u00194q!\u0001\u0002\u0011\u0002G\u0005\u0011BA\u0004ICND\u0017N\\4\u000b\u0005\r!\u0011a\u00025bg\"Lgn\u001a\u0006\u0003\u000b\u0019\tA!\u001e;jY*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)a2c\u0001\u0001\f\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u00051\u0001\u0012BA\t\u0007\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011\u0015\u0019\u0002A\"\u0001\u0015\u0003\u0011A\u0017m\u001d5\u0015\u0005UA\u0002C\u0001\u0007\u0017\u0013\t9bAA\u0002J]RDQ!\u0007\nA\u0002i\t\u0011\u0001\u001f\t\u00037qa\u0001\u0001B\u0003\u001e\u0001\t\u0007aDA\u0001U#\ty\"\u0005\u0005\u0002\rA%\u0011\u0011E\u0002\u0002\b\u001d>$\b.\u001b8h!\ta1%\u0003\u0002%\r\t\u0019\u0011I\\=)\u0007\u00011C\u0006\u0005\u0002(U5\t\u0001F\u0003\u0002*\r\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005-B#\u0001E5na2L7-\u001b;O_R4u.\u001e8eC\u0005i\u0013!\n(pA%l\u0007\u000f\\5dSR\u0004\u0003*Y:iS:<\u0007\u0005Z3gS:,G\r\t4pe\u0002\"3\u0010V?/\u000f\u0015y#\u0001#\u00011\u0003\u001dA\u0015m\u001d5j]\u001e\u0004\"!\r\u001a\u000e\u0003\t1Q!\u0001\u0002\t\u0002M\u001a2AM\u0006\u0010\u0011\u0015)$\u0007\"\u00017\u0003\u0019a\u0014N\\5u}Q\t\u0001G\u0002\u00039e\tI$a\u0002#fM\u0006,H\u000e^\u000b\u0003uu\u001a2aN\u0006<!\r\t\u0004\u0001\u0010\t\u00037u\"Q!H\u001cC\u0002yAQ!N\u001c\u0005\u0002}\"\u0012\u0001\u0011\t\u0004\u0003^bT\"\u0001\u001a\t\u000bM9D\u0011A\"\u0015\u0005U!\u0005\"B\rC\u0001\u0004a\u0004\"\u0002$3\t\u00079\u0015a\u00023fM\u0006,H\u000e^\u000b\u0003\u0011.+\u0012!\u0013\t\u0004\u0003^R\u0005CA\u000eL\t\u0015iRI1\u0001\u001f\u0011\u0015i%\u0007\"\u0001O\u000311'o\\7Gk:\u001cG/[8o+\tyU\u000b\u0006\u0002Q-J\u0019\u0011kC*\u0007\tIc\u0005\u0001\u0015\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004c\u0001!\u0006CA\u000eV\t\u0015iBJ1\u0001\u001f\u0011\u00159F\n1\u0001Y\u0003\u00051\u0007\u0003\u0002\u0007Z)VI!A\u0017\u0004\u0003\u0013\u0019+hn\u0019;j_:\f\u0004b\u0002/3\u0003\u0003%I!X\u0001\fe\u0016\fGMU3t_24X\rF\u0001_!\tyF-D\u0001a\u0015\t\t'-\u0001\u0003mC:<'\"A2\u0002\t)\fg/Y\u0005\u0003K\u0002\u0014aa\u00142kK\u000e$\b")
/* loaded from: classes3-dex2jar.jar:scala/util/hashing/Hashing.class */
public interface Hashing<T> extends Serializable {

    /* loaded from: classes3-dex2jar.jar:scala/util/hashing/Hashing$Default.class */
    public static final class Default<T> implements Hashing<T> {
        @Override // scala.util.hashing.Hashing
        public int hash(T t) {
            return ScalaRunTime$.MODULE$.hash(t);
        }
    }

    int hash(T t);
}
