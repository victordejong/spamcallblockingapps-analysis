package scala.runtime;

import scala.collection.mutable.StringBuilder;
/* loaded from: classes3-dex2jar.jar:scala/runtime/StringAdd$.class */
public final class StringAdd$ {
    public static final StringAdd$ MODULE$ = null;

    static {
        new StringAdd$();
    }

    private StringAdd$() {
        MODULE$ = this;
    }

    public final String $plus$extension(Object obj, String str) {
        return new StringBuilder().append((Object) String.valueOf(obj)).append((Object) str).toString();
    }

    public final boolean equals$extension(Object obj, Object obj2) {
        boolean z;
        if (obj2 instanceof StringAdd) {
            Object self = obj2 == null ? null : ((StringAdd) obj2).self();
            if (obj == self ? true : obj == null ? false : obj instanceof Number ? BoxesRunTime.equalsNumObject((Number) obj, self) : obj instanceof Character ? BoxesRunTime.equalsCharObject((Character) obj, self) : obj.equals(self)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public final int hashCode$extension(Object obj) {
        return obj.hashCode();
    }
}
