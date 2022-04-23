package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typesApproximation/TypeArgument.class */
public final class TypeArgument {
    private final KotlinType inProjection;
    private final KotlinType outProjection;
    private final TypeParameterDescriptor typeParameter;

    public TypeArgument(TypeParameterDescriptor typeParameter, KotlinType inProjection, KotlinType outProjection) {
        p.d(typeParameter, "typeParameter");
        p.d(inProjection, "inProjection");
        p.d(outProjection, "outProjection");
        this.typeParameter = typeParameter;
        this.inProjection = inProjection;
        this.outProjection = outProjection;
    }

    public final KotlinType getInProjection() {
        return this.inProjection;
    }

    public final KotlinType getOutProjection() {
        return this.outProjection;
    }

    public final TypeParameterDescriptor getTypeParameter() {
        return this.typeParameter;
    }

    public final boolean isConsistent() {
        return KotlinTypeChecker.DEFAULT.isSubtypeOf(this.inProjection, this.outProjection);
    }
}
