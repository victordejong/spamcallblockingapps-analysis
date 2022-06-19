package scala.runtime;

import scala.Function1$mcDI$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcDI$sp.class */
public abstract class AbstractPartialFunction$mcDI$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcDI$sp {
    public AbstractPartialFunction$mcDI$sp() {
        Function1$mcDI$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcDI$sp
    public double apply(int i) {
        return apply$mcDI$sp(i);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToDouble(apply(BoxesRunTime.unboxToInt(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public double apply$mcDI$sp(int i) {
        return BoxesRunTime.unboxToDouble(applyOrElse(BoxesRunTime.boxToInteger(i), PartialFunction$.MODULE$.empty()));
    }
}
