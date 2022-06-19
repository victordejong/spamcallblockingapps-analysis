package scala.runtime;

import scala.Function1$mcDD$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcDD$sp.class */
public abstract class AbstractPartialFunction$mcDD$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcDD$sp {
    public AbstractPartialFunction$mcDD$sp() {
        Function1$mcDD$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcDD$sp
    public double apply(double d) {
        return apply$mcDD$sp(d);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToDouble(apply(BoxesRunTime.unboxToDouble(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public double apply$mcDD$sp(double d) {
        return BoxesRunTime.unboxToDouble(applyOrElse(BoxesRunTime.boxToDouble(d), PartialFunction$.MODULE$.empty()));
    }
}
