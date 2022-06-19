package kotlin.reflect.jvm.internal.impl.descriptors;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.at */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/at.class */
public interface AbstractC19026at {

    /* renamed from: a */
    public static final AbstractC19026at f64759a = new AbstractC19026at() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.at.1
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at
        /* renamed from: a */
        public final AbstractC19028au mo1859a() {
            AbstractC19028au abstractC19028au = AbstractC19028au.f64760a;
            if (abstractC19028au != null) {
                return abstractC19028au;
            }
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1", "getContainingFile"));
        }

        public final String toString() {
            return "NO_SOURCE";
        }
    };

    /* renamed from: a */
    AbstractC19028au mo1859a();
}
