package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AnnotatedSimpleType.class */
public final class AnnotatedSimpleType extends DelegatingSimpleTypeImpl {
    private final AbstractC18983g annotations;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnnotatedSimpleType(SimpleType delegate, AbstractC18983g annotations) {
        super(delegate);
        C18524p.m3840d(delegate, "delegate");
        C18524p.m3840d(annotations, "annotations");
        this.annotations = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public final AbstractC18983g getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final AnnotatedSimpleType replaceDelegate(SimpleType delegate) {
        C18524p.m3840d(delegate, "delegate");
        return new AnnotatedSimpleType(delegate, getAnnotations());
    }
}
