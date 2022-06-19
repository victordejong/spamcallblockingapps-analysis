package scala.reflect;

import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/reflect/NoManifest$.class */
public final class NoManifest$ implements OptManifest<Nothing$> {
    public static final NoManifest$ MODULE$ = null;

    static {
        new NoManifest$();
    }

    private NoManifest$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public String toString() {
        return "<?>";
    }
}
