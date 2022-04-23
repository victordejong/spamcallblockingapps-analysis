package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/ErrorType.class */
public class ErrorType extends SimpleType {
    private final List<TypeProjection> arguments;
    private final TypeConstructor constructor;
    private final boolean isMarkedNullable;
    private final h memberScope;
    private final String presentableName;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorType(TypeConstructor constructor, h memberScope) {
        this(constructor, memberScope, null, false, null, 28, null);
        p.d(constructor, "constructor");
        p.d(memberScope, "memberScope");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ErrorType(TypeConstructor constructor, h memberScope, List<? extends TypeProjection> arguments, boolean z) {
        this(constructor, memberScope, arguments, z, null, 16, null);
        p.d(constructor, "constructor");
        p.d(memberScope, "memberScope");
        p.d(arguments, "arguments");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ErrorType(TypeConstructor constructor, h memberScope, List<? extends TypeProjection> arguments, boolean z, String presentableName) {
        p.d(constructor, "constructor");
        p.d(memberScope, "memberScope");
        p.d(arguments, "arguments");
        p.d(presentableName, "presentableName");
        this.constructor = constructor;
        this.memberScope = memberScope;
        this.arguments = arguments;
        this.isMarkedNullable = z;
        this.presentableName = presentableName;
    }

    public /* synthetic */ ErrorType(TypeConstructor typeConstructor, h hVar, z zVar, boolean z, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeConstructor, hVar, (i & 4) != 0 ? z.f36608a : zVar, (i & 8) != 0 ? false : z, (i & 16) != 0 ? "???" : str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public g getAnnotations() {
        g.a aVar = g.f37361a;
        return g.a.a();
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
    public h getMemberScope() {
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
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public SimpleType replaceAnnotations(g newAnnotations) {
        p.d(newAnnotations, "newAnnotations");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getConstructor());
        sb.append(getArguments().isEmpty() ? "" : n.a(getArguments(), ", ", "<", ">", -1, "...", null));
        return sb.toString();
    }
}
