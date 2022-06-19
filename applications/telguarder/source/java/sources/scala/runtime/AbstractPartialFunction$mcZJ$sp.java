package scala.runtime;

import scala.Function1$mcZJ$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcZJ$sp.class */
public abstract class AbstractPartialFunction$mcZJ$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcZJ$sp {
    public AbstractPartialFunction$mcZJ$sp() {
        Function1$mcZJ$sp.Cclass.$init$(this);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(BoxesRunTime.unboxToLong(obj)));
    }

    @Override // scala.Function1$mcZJ$sp
    public boolean apply(long j) {
        return apply$mcZJ$sp(j);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        return BoxesRunTime.unboxToBoolean(applyOrElse(BoxesRunTime.boxToLong(j), PartialFunction$.MODULE$.empty()));
    }
}
