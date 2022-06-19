package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/ErrorType.class */
public class ErrorType extends SimpleType {
    private final List<TypeProjection> arguments;
    private final TypeConstructor constructor;
    private final boolean isMarkedNullable;
    private final AbstractC19834h memberScope;
    private final String presentableName;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorType(TypeConstructor constructor, AbstractC19834h memberScope) {
        this(constructor, memberScope, null, false, null, 28, null);
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(memberScope, "memberScope");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorType(TypeConstructor constructor, AbstractC19834h memberScope, List<? extends TypeProjection> arguments, boolean z) {
        this(constructor, memberScope, arguments, z, null, 16, null);
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(memberScope, "memberScope");
        C18524p.m3840d(arguments, "arguments");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ErrorType(TypeConstructor constructor, AbstractC19834h memberScope, List<? extends TypeProjection> arguments, boolean z, String presentableName) {
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(memberScope, "memberScope");
        C18524p.m3840d(arguments, "arguments");
        C18524p.m3840d(presentableName, "presentableName");
        this.constructor = constructor;
        this.memberScope = memberScope;
        this.arguments = arguments;
        this.isMarkedNullable = z;
        this.presentableName = presentableName;
    }

    public /* synthetic */ ErrorType(TypeConstructor typeConstructor, AbstractC19834h abstractC19834h, List list, boolean z, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeConstructor, abstractC19834h, (i & 4) != 0 ? C18297z.f63400a : list, (i & 8) != 0 ? false : z, (i & 16) != 0 ? "???" : str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public AbstractC18983g getAnnotations() {
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        return AbstractC18983g.C18984a.m2705a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public List<TypeProjection> getArguments() {
        return this.arguments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public TypeConstructor getConstructor() {
        return this.constructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public AbstractC19834h getMemberScope() {
        return this.memberScope;
    }

    public String getPresentableName() {
        return this.presentableName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public SimpleType makeNullableAsSpecified(boolean z) {
        return new ErrorType(getConstructor(), getMemberScope(), getArguments(), z, null, 16, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public ErrorType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public SimpleType replaceAnnotations(AbstractC18983g newAnnotations) {
        C18524p.m3840d(newAnnotations, "newAnnotations");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getConstructor());
        sb.append(getArguments().isEmpty() ? "" : C18282n.m4149a(getArguments(), ", ", "<", ">", -1, "...", null));
        return sb.toString();
    }
}
