package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/WrappedType.class */
public abstract class WrappedType extends KotlinType {
    public WrappedType() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public AbstractC18983g getAnnotations() {
        return getDelegate().getAnnotations();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public List<TypeProjection> getArguments() {
        return getDelegate().getArguments();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public TypeConstructor getConstructor() {
        return getDelegate().getConstructor();
    }

    protected abstract KotlinType getDelegate();

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public AbstractC19834h getMemberScope() {
        return getDelegate().getMemberScope();
    }

    public boolean isComputed() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return getDelegate().isMarkedNullable();
    }

    public String toString() {
        return isComputed() ? getDelegate().toString() : "<Not computed yet>";
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final UnwrappedType unwrap() {
        KotlinType delegate = getDelegate();
        while (true) {
            KotlinType kotlinType = delegate;
            if (kotlinType instanceof WrappedType) {
                delegate = ((WrappedType) kotlinType).getDelegate();
            } else {
                return (UnwrappedType) kotlinType;
            }
        }
    }
}
