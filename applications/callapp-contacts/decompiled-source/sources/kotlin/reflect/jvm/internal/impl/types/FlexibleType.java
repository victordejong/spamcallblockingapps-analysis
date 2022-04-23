package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.e.f;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.model.FlexibleTypeMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/FlexibleType.class */
public abstract class FlexibleType extends UnwrappedType implements FlexibleTypeMarker {
    private final SimpleType lowerBound;
    private final SimpleType upperBound;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlexibleType(SimpleType lowerBound, SimpleType upperBound) {
        super(null);
        p.d(lowerBound, "lowerBound");
        p.d(upperBound, "upperBound");
        this.lowerBound = lowerBound;
        this.upperBound = upperBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public g getAnnotations() {
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
    public h getMemberScope() {
        return getDelegate().getMemberScope();
    }

    public final SimpleType getUpperBound() {
        return this.upperBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return getDelegate().isMarkedNullable();
    }

    public abstract String render(c cVar, f fVar);

    public String toString() {
        return c.j.a(this);
    }
}
