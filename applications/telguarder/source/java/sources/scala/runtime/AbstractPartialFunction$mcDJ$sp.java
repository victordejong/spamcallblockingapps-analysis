package scala.runtime;

import scala.Function1$mcDJ$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcDJ$sp.class */
public abstract class AbstractPartialFunction$mcDJ$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcDJ$sp {
    public AbstractPartialFunction$mcDJ$sp() {
        Function1$mcDJ$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcDJ$sp
    public double apply(long j) {
        return apply$mcDJ$sp(j);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToDouble(apply(BoxesRunTime.unboxToLong(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public double apply$mcDJ$sp(long j) {
        return BoxesRunTime.unboxToDouble(applyOrElse(BoxesRunTime.boxToLong(j), PartialFunction$.MODULE$.empty()));
    }
}
