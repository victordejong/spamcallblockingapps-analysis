package kotlin.reflect.jvm.internal.impl.descriptors.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/b.class */
public class b implements a {
    private final g annotations;

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 1 ? 3 : 2];
        if (i != 1) {
            objArr[0] = "annotations";
        } else {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        }
        if (i != 1) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotatedImpl";
        } else {
            objArr[1] = "getAnnotations";
        }
        if (i != 1) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw (i != 1 ? new IllegalArgumentException(format) : new IllegalStateException(format));
    }

    public b(g gVar) {
        if (gVar == null) {
            $$$reportNull$$$0(0);
        }
        this.annotations = gVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public g getAnnotations() {
        g gVar = this.annotations;
        if (gVar == null) {
            $$$reportNull$$$0(1);
        }
        return gVar;
    }
}
