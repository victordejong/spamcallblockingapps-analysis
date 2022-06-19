package scala.runtime;

import scala.Function1$mcIF$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcIF$sp.class */
public abstract class AbstractPartialFunction$mcIF$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcIF$sp {
    public AbstractPartialFunction$mcIF$sp() {
        Function1$mcIF$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcIF$sp
    public int apply(float f) {
        return apply$mcIF$sp(f);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply(BoxesRunTime.unboxToFloat(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public int apply$mcIF$sp(float f) {
        return BoxesRunTime.unboxToInt(applyOrElse(BoxesRunTime.boxToFloat(f), PartialFunction$.MODULE$.empty()));
    }
}
