package scala;
/* loaded from: classes3-dex2jar.jar:scala/Boolean$.class */
public final class Boolean$ implements AnyValCompanion {
    public static final Boolean$ MODULE$ = null;

    static {
        new Boolean$();
    }

    private Boolean$() {
        MODULE$ = this;
    }

    public Boolean box(boolean z) {
        return Boolean.valueOf(z);
    }

    public String toString() {
        return "object scala.Boolean";
    }

    public boolean unbox(Object obj) {
        return ((Boolean) obj).booleanValue();
    }
}
