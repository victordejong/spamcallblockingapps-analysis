package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/UnresolvedType.class */
public final class UnresolvedType extends ErrorType {
    private final String presentableName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnresolvedType(String presentableName, TypeConstructor constructor, AbstractC19834h memberScope, List<? extends TypeProjection> arguments, boolean z) {
        super(constructor, memberScope, arguments, z, null, 16, null);
        C18524p.m3840d(presentableName, "presentableName");
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(memberScope, "memberScope");
        C18524p.m3840d(arguments, "arguments");
        this.presentableName = presentableName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErrorType
    public final String getPresentableName() {
        return this.presentableName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErrorType, kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType makeNullableAsSpecified(boolean z) {
        return new UnresolvedType(getPresentableName(), getConstructor(), getMemberScope(), getArguments(), z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.ErrorType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final UnresolvedType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }
}
