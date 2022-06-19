package scala.runtime;

import scala.Function1$mcJJ$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcJJ$sp.class */
public abstract class AbstractPartialFunction$mcJJ$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcJJ$sp {
    public AbstractPartialFunction$mcJJ$sp() {
        Function1$mcJJ$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcJJ$sp
    public long apply(long j) {
        return apply$mcJJ$sp(j);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToLong(apply(BoxesRunTime.unboxToLong(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public long apply$mcJJ$sp(long j) {
        return BoxesRunTime.unboxToLong(applyOrElse(BoxesRunTime.boxToLong(j), PartialFunction$.MODULE$.empty()));
    }
}
