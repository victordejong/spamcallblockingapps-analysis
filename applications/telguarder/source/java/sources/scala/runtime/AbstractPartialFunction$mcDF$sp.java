package scala.runtime;

import scala.Function1$mcDF$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcDF$sp.class */
public abstract class AbstractPartialFunction$mcDF$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcDF$sp {
    public AbstractPartialFunction$mcDF$sp() {
        Function1$mcDF$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcDF$sp
    public double apply(float f) {
        return apply$mcDF$sp(f);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToDouble(apply(BoxesRunTime.unboxToFloat(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public double apply$mcDF$sp(float f) {
        return BoxesRunTime.unboxToDouble(applyOrElse(BoxesRunTime.boxToFloat(f), PartialFunction$.MODULE$.empty()));
    }
}
