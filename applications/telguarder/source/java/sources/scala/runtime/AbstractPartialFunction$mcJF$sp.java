package scala.runtime;

import scala.Function1$mcJF$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcJF$sp.class */
public abstract class AbstractPartialFunction$mcJF$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcJF$sp {
    public AbstractPartialFunction$mcJF$sp() {
        Function1$mcJF$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcJF$sp
    public long apply(float f) {
        return apply$mcJF$sp(f);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToLong(apply(BoxesRunTime.unboxToFloat(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public long apply$mcJF$sp(float f) {
        return BoxesRunTime.unboxToLong(applyOrElse(BoxesRunTime.boxToFloat(f), PartialFunction$.MODULE$.empty()));
    }
}
