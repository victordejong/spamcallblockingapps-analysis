package scala;

import scala.Predef;
import scala.collection.mutable.StringBuilder;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Predef$any2stringadd$.class */
public class Predef$any2stringadd$ {
    public static final Predef$any2stringadd$ MODULE$ = null;

    static {
        new Predef$any2stringadd$();
    }

    public Predef$any2stringadd$() {
        MODULE$ = this;
    }

    public final <A> String $plus$extension(A a, String str) {
        return new StringBuilder().append((Object) String.valueOf(a)).append((Object) str).toString();
    }

    public final <A> boolean equals$extension(A a, Object obj) {
        boolean z;
        if (obj instanceof Predef.any2stringadd) {
            Object scala$Predef$any2stringadd$$self = obj == null ? null : ((Predef.any2stringadd) obj).scala$Predef$any2stringadd$$self();
            if (a == scala$Predef$any2stringadd$$self ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, scala$Predef$any2stringadd$$self) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, scala$Predef$any2stringadd$$self) : a.equals(scala$Predef$any2stringadd$$self)) {
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
