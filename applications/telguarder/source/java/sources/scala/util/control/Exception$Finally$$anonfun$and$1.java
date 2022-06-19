package scala.util.control;

import java.util.Objects;
import scala.Function0;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.util.control.Exception;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$Finally$$anonfun$and$1.class */
public final class Exception$Finally$$anonfun$and$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Exception.Finally $outer;
    public final Function0 other$1;

    public Exception$Finally$$anonfun$and$1(Exception.Finally r4, Function0 function0) {
        Objects.requireNonNull(r4);
        this.$outer = r4;
        this.other$1 = function0;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.$outer.scala$util$control$Exception$Finally$$body.apply$mcV$sp();
        this.other$1.apply$mcV$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.scala$util$control$Exception$Finally$$body.apply$mcV$sp();
        this.other$1.apply$mcV$sp();
    }
}
