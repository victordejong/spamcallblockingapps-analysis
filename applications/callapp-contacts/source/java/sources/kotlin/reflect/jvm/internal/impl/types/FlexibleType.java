package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/FlexibleType.class */
public abstract class FlexibleType extends UnwrappedType implements FlexibleTypeMarker {
    private final SimpleType lowerBound;
    private final SimpleType upperBound;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlexibleType(SimpleType lowerBound, SimpleType upperBound) {
        super(null);
        C18524p.m3840d(lowerBound, "lowerBound");
        C18524p.m3840d(upperBound, "upperBound");
        this.lowerBound = lowerBound;
        this.upperBound = upperBound;
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

    public abstract SimpleType getDelegate();

    public final SimpleType getLowerBound() {
        return this.lowerBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public AbstractC19834h getMemberScope() {
        return getDelegate().getMemberScope();
    }

    public final SimpleType getUpperBound() {
        return this.upperBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return getDelegate().isMarkedNullable();
    }

    public abstract String render(AbstractC19230c abstractC19230c, AbstractC19257f abstractC19257f);

    public String toString() {
        return AbstractC19230c.f65033j.mo2425a(this);
    }
}
