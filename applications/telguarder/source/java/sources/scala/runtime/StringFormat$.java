package scala.runtime;

import scala.Predef$;
import scala.collection.immutable.StringOps;
/* loaded from: classes3-dex2jar.jar:scala/runtime/StringFormat$.class */
public final class StringFormat$ {
    public static final StringFormat$ MODULE$ = null;

    static {
        new StringFormat$();
    }

    private StringFormat$() {
        MODULE$ = this;
    }

    public final boolean equals$extension(Object obj, Object obj2) {
        boolean z;
        if (obj2 instanceof StringFormat) {
            Object self = obj2 == null ? null : ((StringFormat) obj2).self();
            if (obj == self ? true : obj == null ? false : obj instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj, self) : obj instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj, self) : obj.equals(self)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public final String formatted$extension(Object obj, String str) {
        return new StringOps(Predef$.MODULE$.augmentString(str)).format(Predef$.MODULE$.genericWrapArray(new Object[]{obj}));
    }

    public final int hashCode$extension(Object obj) {
        return obj.hashCode();
    }
}
