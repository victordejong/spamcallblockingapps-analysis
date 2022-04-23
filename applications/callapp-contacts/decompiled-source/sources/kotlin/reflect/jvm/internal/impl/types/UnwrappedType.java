package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/UnwrappedType.class */
public abstract class UnwrappedType extends KotlinType {
    private UnwrappedType() {
        super(null);
    }

    public /* synthetic */ UnwrappedType(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract UnwrappedType makeNullableAsSpecified(boolean z);

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public abstract UnwrappedType refine(KotlinTypeRefiner kotlinTypeRefiner);

    public abstract UnwrappedType replaceAnnotations(g gVar);

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final UnwrappedType unwrap() {
        return this;
    }
}
