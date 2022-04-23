package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType.class */
public final class AnnotatedSimpleType extends DelegatingSimpleTypeImpl {
    private final g annotations;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnnotatedSimpleType(SimpleType delegate, g annotations) {
        super(delegate);
        p.d(delegate, "delegate");
        p.d(annotations, "annotations");
        this.annotations = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final g getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final AnnotatedSimpleType replaceDelegate(SimpleType delegate) {
        p.d(delegate, "delegate");
        return new AnnotatedSimpleType(delegate, getAnnotations());
    }
}
