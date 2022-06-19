package scala.runtime;

import scala.Function1$mcID$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcID$sp.class */
public abstract class AbstractPartialFunction$mcID$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcID$sp {
    public AbstractPartialFunction$mcID$sp() {
        Function1$mcID$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcID$sp
    public int apply(double d) {
        return apply$mcID$sp(d);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToDouble(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public int apply$mcID$sp(double d) {
        return BoxesRunTime.unboxToInt(applyOrElse(BoxesRunTime.boxToDouble(d), PartialFunction$.MODULE$.empty()));
    }
}
