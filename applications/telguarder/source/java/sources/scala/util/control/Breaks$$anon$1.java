package scala.util.control;

import java.util.Objects;
import scala.Function0;
import scala.util.control.Breaks;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Breaks$$anon$1.class */
public final class Breaks$$anon$1 implements Breaks.TryBlock<T> {
    public final /* synthetic */ Breaks $outer;
    public final Function0 op$1;

    public Breaks$$anon$1(Breaks breaks, Function0 function0) {
        Objects.requireNonNull(breaks);
        this.$outer = breaks;
        this.op$1 = function0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.util.control.Breaks.TryBlock
    public T catchBreak(Function0<T> function0) {
        Object obj;
        try {
            obj = this.op$1.apply();
        } catch (BreakControl e) {
            if (e != this.$outer.scala$util$control$Breaks$$breakException()) {
                throw e;
            }
            obj = function0.apply();
        }
        return obj;
    }
}
