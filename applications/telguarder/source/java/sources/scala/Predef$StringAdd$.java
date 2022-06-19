package scala;

import scala.Predef;
import scala.collection.mutable.StringBuilder;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Predef$StringAdd$.class */
public class Predef$StringAdd$ {
    public static final Predef$StringAdd$ MODULE$ = null;

    static {
        new Predef$StringAdd$();
    }

    public Predef$StringAdd$() {
        MODULE$ = this;
    }

    public final <A> String $plus$extension(A a, String str) {
        return new StringBuilder().append((Object) String.valueOf(a)).append((Object) str).toString();
    }

    public final <A> boolean equals$extension(A a, Object obj) {
        boolean z;
        if (obj instanceof Predef.StringAdd) {
            Object scala$Predef$StringAdd$$self = obj == null ? null : ((Predef.StringAdd) obj).scala$Predef$StringAdd$$self();
            if (a == scala$Predef$StringAdd$$self ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, scala$Predef$StringAdd$$self) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, scala$Predef$StringAdd$$self) : a.equals(scala$Predef$StringAdd$$self)) {
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
