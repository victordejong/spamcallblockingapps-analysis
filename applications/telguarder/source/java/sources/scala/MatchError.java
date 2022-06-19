package scala;

import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001!2A!\u0001\u0002\u0003\u000b\tQQ*\u0019;dQ\u0016\u0013(o\u001c:\u000b\u0003\r\tQa]2bY\u0006\u001c\u0001a\u0005\u0002\u0001\rA\u0011qa\u0003\b\u0003\u0011%i\u0011AA\u0005\u0003\u0015\t\tq\u0001]1dW\u0006<W-\u0003\u0002\r\u001b\t\u0001\"+\u001e8uS6,W\t_2faRLwN\u001c\u0006\u0003\u0015\tA\u0001b\u0004\u0001\u0003\u0002\u0003\u0006I\u0001E\u0001\u0004_\nT\u0007C\u0001\u0005\u0012\u0013\t\u0011\"AA\u0002B]fDQ\u0001\u0006\u0001\u0005\u0002U\ta\u0001P5oSRtDC\u0001\f\u0018!\tA\u0001\u0001C\u0003\u0010'\u0001\u0007\u0001\u0003\u0003\u0005\u001a\u0001!\u0015\r\u0011\"\u0003\u001b\u0003%y'M[*ue&tw-F\u0001\u001c!\ta\u0012%D\u0001\u001e\u0015\tqr$\u0001\u0003mC:<'\"\u0001\u0011\u0002\t)\fg/Y\u0005\u0003Eu\u0011aa\u0015;sS:<\u0007\u0002\u0003\u0013\u0001\u0011\u0003\u0005\u000b\u0015B\u000e\u0002\u0015=\u0014'n\u0015;sS:<\u0007\u0005C\u0003'\u0001\u0011\u0005s%\u0001\u0006hKRlUm]:bO\u0016$\u0012a\u0007")
/* loaded from: classes3-dex2jar.jar:scala/MatchError.class */
public final class MatchError extends RuntimeException {
    private volatile boolean bitmap$0;
    private final Object obj;
    private String objString;

    public MatchError(Object obj) {
        this.obj = obj;
    }

    private final String liftedTree1$1() {
        String str;
        try {
            str = new StringBuilder().append((Object) this.obj.toString()).append((Object) " (").append((Object) ofClass$1()).append((Object) ")").toString();
        } catch (Throwable th) {
            str = new StringBuilder().append((Object) "an instance ").append((Object) ofClass$1()).toString();
        }
        return str;
    }

    private String objString() {
        return this.bitmap$0 ? this.objString : objString$lzycompute();
    }

    private String objString$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.objString = this.obj == null ? "null" : liftedTree1$1();
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.objString;
    }

    private final String ofClass$1() {
        return new StringBuilder().append((Object) "of class ").append((Object) this.obj.getClass().getName()).toString();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return objString();
    }
}
