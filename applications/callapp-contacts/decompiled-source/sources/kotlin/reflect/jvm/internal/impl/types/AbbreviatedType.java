package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbbreviatedType.class */
public final class AbbreviatedType extends DelegatingSimpleType {
    private final SimpleType abbreviation;
    private final SimpleType delegate;

    public AbbreviatedType(SimpleType delegate, SimpleType abbreviation) {
        p.d(delegate, "delegate");
        p.d(abbreviation, "abbreviation");
        this.delegate = delegate;
        this.abbreviation = abbreviation;
    }

    public final SimpleType getAbbreviation() {
        return this.abbreviation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    protected final SimpleType getDelegate() {
        return this.delegate;
    }

    public final SimpleType getExpandedType() {
        return getDelegate();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final AbbreviatedType makeNullableAsSpecified(boolean z) {
        return new AbbreviatedType(getDelegate().makeNullableAsSpecified(z), this.abbreviation.makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final AbbreviatedType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new AbbreviatedType((SimpleType) kotlinTypeRefiner.refineType(getDelegate()), (SimpleType) kotlinTypeRefiner.refineType(this.abbreviation));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final AbbreviatedType replaceAnnotations(g newAnnotations) {
        p.d(newAnnotations, "newAnnotations");
        return new AbbreviatedType(getDelegate().replaceAnnotations(newAnnotations), this.abbreviation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final AbbreviatedType replaceDelegate(SimpleType delegate) {
        p.d(delegate, "delegate");
        return new AbbreviatedType(delegate, this.abbreviation);
    }
}
