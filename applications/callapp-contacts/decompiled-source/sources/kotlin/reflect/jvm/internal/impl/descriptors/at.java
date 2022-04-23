package kotlin.reflect.jvm.internal.impl.descriptors;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/at.class */
public interface at {

    /* renamed from: a  reason: collision with root package name */
    public static final at f37401a = new at() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.at.1
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.at
        public final au a() {
            au auVar = au.f37402a;
            if (auVar != null) {
                return auVar;
            }
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1", "getContainingFile"));
        }

        public final String toString() {
            return "NO_SOURCE";
        }
    };

    au a();
}
