package scala.runtime;

import scala.Function1$mcIJ$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcIJ$sp.class */
public abstract class AbstractPartialFunction$mcIJ$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcIJ$sp {
    public AbstractPartialFunction$mcIJ$sp() {
        Function1$mcIJ$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcIJ$sp
    public int apply(long j) {
        return apply$mcIJ$sp(j);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToLong(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public int apply$mcIJ$sp(long j) {
        return BoxesRunTime.unboxToInt(applyOrElse(BoxesRunTime.boxToLong(j), PartialFunction$.MODULE$.empty()));
    }
}
