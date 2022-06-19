package scala.runtime;

import scala.Function1$mcFJ$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcFJ$sp.class */
public abstract class AbstractPartialFunction$mcFJ$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcFJ$sp {
    public AbstractPartialFunction$mcFJ$sp() {
        Function1$mcFJ$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcFJ$sp
    public float apply(long j) {
        return apply$mcFJ$sp(j);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToFloat(apply(BoxesRunTime.unboxToLong(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public float apply$mcFJ$sp(long j) {
        return BoxesRunTime.unboxToFloat(applyOrElse(BoxesRunTime.boxToLong(j), PartialFunction$.MODULE$.empty()));
    }
}
