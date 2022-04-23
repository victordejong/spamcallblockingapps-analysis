package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.a.z;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractStubType.class */
public abstract class AbstractStubType extends SimpleType {
    private final TypeConstructor constructor;
    private final boolean isMarkedNullable;
    private final h memberScope;
    private final TypeConstructor originalTypeVariable;

    public AbstractStubType(TypeConstructor originalTypeVariable, boolean z, TypeConstructor constructor, h memberScope) {
        p.d(originalTypeVariable, "originalTypeVariable");
        p.d(constructor, "constructor");
        p.d(memberScope, "memberScope");
        this.originalTypeVariable = originalTypeVariable;
        this.isMarkedNullable = z;
        this.constructor = constructor;
        this.memberScope = memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public g getAnnotations() {
        g.a aVar = g.f37361a;
        return g.a.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public List<TypeProjection> getArguments() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public TypeConstructor getConstructor() {
        return this.constructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public h getMemberScope() {
        return this.memberScope;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final TypeConstructor getOriginalTypeVariable() {
        return this.originalTypeVariable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.SimpleType, kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public SimpleType makeNullableAsSpecified(boolean z) {
        return z == isMarkedNullable() ? this : materialize(z);
    }

    public abstract AbstractStubType materialize(boolean z);

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public AbstractStubType refine(KotlinTypeRefiner kotlinTypeRefiner) {
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
        return p.a("NonFixed: ", (Object) this.originalTypeVariable);
    }
}
