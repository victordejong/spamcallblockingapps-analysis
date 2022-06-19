package scala.collection;

import scala.Predef$;
import scala.Predef$any2stringadd$;
import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/DebugUtils$$anonfun$buildString$1.class */
public final class DebugUtils$$anonfun$buildString$1 extends AbstractFunction1<Object, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef output$1;

    public DebugUtils$$anonfun$buildString$1(ObjectRef objectRef) {
        this.output$1 = objectRef;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, java.lang.String] */
    @Override // scala.Function1
    public final void apply(Object obj) {
        this.output$1.elem = new StringBuilder().append((Object) ((String) this.output$1.elem)).append((Object) Predef$any2stringadd$.MODULE$.$plus$extension(Predef$.MODULE$.any2stringadd(obj), "\n")).toString();
    }
}
