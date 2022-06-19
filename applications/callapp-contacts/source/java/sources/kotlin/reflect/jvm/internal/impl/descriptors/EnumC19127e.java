package kotlin.reflect.jvm.internal.impl.descriptors;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/e.class */
public enum EnumC19127e {
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
