package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl.class */
public abstract class DelegatingSimpleTypeImpl extends DelegatingSimpleType {
    private final SimpleType delegate;

    public DelegatingSimpleTypeImpl(SimpleType delegate) {
        C18524p.m3840d(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    protected SimpleType getDelegate() {
        return this.delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public SimpleType makeNullableAsSpecified(boolean z) {
        return z == isMarkedNullable() ? this : getDelegate().makeNullableAsSpecified(z).replaceAnnotations(getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public DelegatingSimpleTypeImpl replaceAnnotations(AbstractC18983g newAnnotations) {
        C18524p.m3840d(newAnnotations, "newAnnotations");
        return newAnnotations != getAnnotations() ? new AnnotatedSimpleType(this, newAnnotations) : this;
    }
}
