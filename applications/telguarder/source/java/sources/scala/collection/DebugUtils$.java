package scala.collection;

import java.util.NoSuchElementException;
import scala.Array$;
import scala.Function1;
import scala.Predef$;
import scala.reflect.ClassTag$;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/DebugUtils$.class */
public final class DebugUtils$ {
    public static final DebugUtils$ MODULE$ = null;

    static {
        new DebugUtils$();
    }

    private DebugUtils$() {
        MODULE$ = this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> String arrayString(Object obj, int i, int i2) {
        return Predef$.MODULE$.refArrayOps((Object[]) Predef$.MODULE$.genericArrayOps(Predef$.MODULE$.genericArrayOps(obj).slice(i, i2)).map(new DebugUtils$$anonfun$arrayString$1(), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.apply(String.class)))).mkString(" | ");
    }

    public String buildString(Function1<Function1<Object, BoxedUnit>, BoxedUnit> function1) {
        ObjectRef create = ObjectRef.create("");
        function1.apply(new DebugUtils$$anonfun$buildString$1(create));
        return (String) create.elem;
    }

    public Nothing$ illegalArgument(String str) {
        throw new IllegalArgumentException(str);
    }

    public Nothing$ indexOutOfBounds(int i) {
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    public Nothing$ noSuchElement(String str) {
        throw new NoSuchElementException(str);
    }

    public Nothing$ unsupported(String str) {
        throw new UnsupportedOperationException(str);
    }
}
