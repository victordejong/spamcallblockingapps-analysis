package kotlin.reflect.jvm.internal.impl.descriptors;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/e.class */
public enum e {
    CLASS,
    INTERFACE,
    ENUM_CLASS,
    ENUM_ENTRY,
    ANNOTATION_CLASS,
    OBJECT;

    public final boolean isSingleton() {
        return this == OBJECT || this == ENUM_ENTRY;
    }
}
