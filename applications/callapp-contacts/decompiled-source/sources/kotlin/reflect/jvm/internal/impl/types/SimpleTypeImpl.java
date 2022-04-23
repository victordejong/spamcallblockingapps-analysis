package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/SimpleTypeImpl.class */
public final class SimpleTypeImpl extends SimpleType {
    private final List<TypeProjection> arguments;
    private final TypeConstructor constructor;
    private final boolean isMarkedNullable;
    private final h memberScope;
    private final Function1<KotlinTypeRefiner, SimpleType> refinedTypeFactory;

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleTypeImpl(TypeConstructor constructor, List<? extends TypeProjection> arguments, boolean z, h memberScope, Function1<? super KotlinTypeRefiner, ? extends SimpleType> refinedTypeFactory) {
        p.d(constructor, "constructor");
        p.d(arguments, "arguments");
        p.d(memberScope, "memberScope");
        p.d(refinedTypeFactory, "refinedTypeFactory");
        this.constructor = constructor;
        this.arguments = arguments;
        this.isMarkedNullable = z;
        this.memberScope = memberScope;
        this.refinedTypeFactory = refinedTypeFactory;
        if (getMemberScope() instanceof ErrorUtils.ErrorScope) {
            throw new IllegalStateException("SimpleTypeImpl should not be created for error type: " + getMemberScope() + '\n' + getConstructor());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final g getAnnotations() {
        g.a aVar = g.f37361a;
        return g.a.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final List<TypeProjection> getArguments() {
        return this.arguments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final TypeConstructor getConstructor() {
        return this.constructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final h getMemberScope() {
        return this.memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType makeNullableAsSpecified(boolean z) {
        return z == isMarkedNullable() ? this : z ? new NullableSimpleType(this) : new NotNullSimpleType(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final SimpleType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        SimpleType invoke = this.refinedTypeFactory.invoke(kotlinTypeRefiner);
        SimpleTypeImpl simpleTypeImpl = invoke;
        if (invoke == null) {
            simpleTypeImpl = this;
        }
        return simpleTypeImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final SimpleType replaceAnnotations(g newAnnotations) {
        p.d(newAnnotations, "newAnnotations");
        return newAnnotations.a() ? this : new AnnotatedSimpleType(this, newAnnotations);
    }
}
