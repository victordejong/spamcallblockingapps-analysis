package scala.runtime;

import scala.Function1$mcZD$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcZD$sp.class */
public abstract class AbstractPartialFunction$mcZD$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcZD$sp {
    public AbstractPartialFunction$mcZD$sp() {
        Function1$mcZD$sp.Cclass.$init$(this);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToDouble(obj)));
    }

    @Override // scala.Function1$mcZD$sp
    public boolean apply(double d) {
        return apply$mcZD$sp(d);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public boolean apply$mcZD$sp(double d) {
        return BoxesRunTime.unboxToBoolean(applyOrElse(BoxesRunTime.boxToDouble(d), PartialFunction$.MODULE$.empty()));
    }
}
