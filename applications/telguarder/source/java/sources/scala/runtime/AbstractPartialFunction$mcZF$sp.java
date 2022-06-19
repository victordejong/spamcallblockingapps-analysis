package scala.runtime;

import scala.Function1$mcZF$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcZF$sp.class */
public abstract class AbstractPartialFunction$mcZF$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcZF$sp {
    public AbstractPartialFunction$mcZF$sp() {
        Function1$mcZF$sp.Cclass.$init$(this);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToFloat(obj)));
    }

    @Override // scala.Function1$mcZF$sp
    public boolean apply(float f) {
        return apply$mcZF$sp(f);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public boolean apply$mcZF$sp(float f) {
        return BoxesRunTime.unboxToBoolean(applyOrElse(BoxesRunTime.boxToFloat(f), PartialFunction$.MODULE$.empty()));
    }
}
