package scala.runtime;

import scala.Function1$mcFD$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcFD$sp.class */
public abstract class AbstractPartialFunction$mcFD$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcFD$sp {
    public AbstractPartialFunction$mcFD$sp() {
        Function1$mcFD$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcFD$sp
    public float apply(double d) {
        return apply$mcFD$sp(d);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToFloat(apply(BoxesRunTime.unboxToDouble(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public float apply$mcFD$sp(double d) {
        return BoxesRunTime.unboxToFloat(applyOrElse(BoxesRunTime.boxToDouble(d), PartialFunction$.MODULE$.empty()));
    }
}
