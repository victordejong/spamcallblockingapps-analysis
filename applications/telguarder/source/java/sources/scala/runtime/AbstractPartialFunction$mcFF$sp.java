package scala.runtime;

import scala.Function1$mcFF$sp;
import scala.PartialFunction$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/AbstractPartialFunction$mcFF$sp.class */
public abstract class AbstractPartialFunction$mcFF$sp extends AbstractPartialFunction<Object, Object> implements Function1$mcFF$sp {
    public AbstractPartialFunction$mcFF$sp() {
        Function1$mcFF$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcFF$sp
    public float apply(float f) {
        return apply$mcFF$sp(f);
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToFloat(apply(BoxesRunTime.unboxToFloat(obj)));
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.Function1
    public float apply$mcFF$sp(float f) {
        return BoxesRunTime.unboxToFloat(applyOrElse(BoxesRunTime.boxToFloat(f), PartialFunction$.MODULE$.empty()));
    }
}
