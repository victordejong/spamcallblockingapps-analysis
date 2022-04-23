package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.model.StubTypeMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/StubType.class */
public final class StubType extends AbstractStubType implements StubTypeMarker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StubType(TypeConstructor originalTypeVariable, boolean z, TypeConstructor constructor, h memberScope) {
        super(originalTypeVariable, z, constructor, memberScope);
        p.d(originalTypeVariable, "originalTypeVariable");
        p.d(constructor, "constructor");
        p.d(memberScope, "memberScope");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractStubType
    public final AbstractStubType materialize(boolean z) {
        return new StubType(getOriginalTypeVariable(), z, getConstructor(), getMemberScope());
    }
}
