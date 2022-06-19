package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.model.StubTypeMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/StubType.class */
public final class StubType extends AbstractStubType implements StubTypeMarker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StubType(TypeConstructor originalTypeVariable, boolean z, TypeConstructor constructor, AbstractC19834h memberScope) {
        super(originalTypeVariable, z, constructor, memberScope);
        C18524p.m3840d(originalTypeVariable, "originalTypeVariable");
        C18524p.m3840d(constructor, "constructor");
        C18524p.m3840d(memberScope, "memberScope");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractStubType
    public final AbstractStubType materialize(boolean z) {
        return new StubType(getOriginalTypeVariable(), z, getConstructor(), getMemberScope());
    }
}
