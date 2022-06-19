package scala;

import scala.Predef;
import scala.collection.mutable.StringBuilder;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Predef$Ensuring$.class */
public class Predef$Ensuring$ {
    public static final Predef$Ensuring$ MODULE$ = null;

    static {
        new Predef$Ensuring$();
    }

    public Predef$Ensuring$() {
        MODULE$ = this;
    }

    public final <A> A ensuring$extension0(A a, boolean z) {
        Predef$.MODULE$.m5971assert(z);
        return a;
    }

    public final <A> A ensuring$extension1(A a, boolean z, Function0<Object> function0) {
        Predef$ predef$ = Predef$.MODULE$;
        if (z) {
            return a;
        }
        throw new AssertionError(new StringBuilder().append((Object) "assertion failed: ").append(function0.apply()).toString());
    }

    public final <A> A ensuring$extension2(A a, Function1<A, Object> function1) {
        Predef$.MODULE$.m5971assert(BoxesRunTime.unboxToBoolean(function1.apply(a)));
        return a;
    }

    public final <A> A ensuring$extension3(A a, Function1<A, Object> function1, Function0<Object> function0) {
        Predef$ predef$ = Predef$.MODULE$;
        if (BoxesRunTime.unboxToBoolean(function1.apply(a))) {
            return a;
        }
        throw new AssertionError(new StringBuilder().append((Object) "assertion failed: ").append(function0.apply()).toString());
    }

    public final <A> boolean equals$extension(A a, Object obj) {
        boolean z;
        if (obj instanceof Predef.Ensuring) {
            Object scala$Predef$Ensuring$$self = obj == null ? null : ((Predef.Ensuring) obj).scala$Predef$Ensuring$$self();
            if (a == scala$Predef$Ensuring$$self ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, scala$Predef$Ensuring$$self) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, scala$Predef$Ensuring$$self) : a.equals(scala$Predef$Ensuring$$self)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public final <A> int hashCode$extension(A a) {
        return a.hashCode();
    }
}
