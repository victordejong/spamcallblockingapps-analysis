package scala;

import scala.Predef;
import scala.collection.immutable.StringOps;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Predef$StringFormat$.class */
public class Predef$StringFormat$ {
    public static final Predef$StringFormat$ MODULE$ = null;

    static {
        new Predef$StringFormat$();
    }

    public Predef$StringFormat$() {
        MODULE$ = this;
    }

    public final <A> boolean equals$extension(A a, Object obj) {
        boolean z;
        if (obj instanceof Predef.StringFormat) {
            Object scala$Predef$StringFormat$$self = obj == null ? null : ((Predef.StringFormat) obj).scala$Predef$StringFormat$$self();
            if (a == scala$Predef$StringFormat$$self ? true : a == null ? false : a instanceof Number ? BoxesRunTime.equalsNumObject((Number) a, scala$Predef$StringFormat$$self) : a instanceof Character ? BoxesRunTime.equalsCharObject((Character) a, scala$Predef$StringFormat$$self) : a.equals(scala$Predef$StringFormat$$self)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public final <A> String formatted$extension(A a, String str) {
        return new StringOps(Predef$.MODULE$.augmentString(str)).format(Predef$.MODULE$.genericWrapArray(new Object[]{a}));
    }

    public final <A> int hashCode$extension(A a) {
        return a.hashCode();
    }
}
