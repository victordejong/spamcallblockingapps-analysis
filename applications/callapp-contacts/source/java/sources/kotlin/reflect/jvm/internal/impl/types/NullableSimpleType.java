package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/NullableSimpleType.class */
final class NullableSimpleType extends DelegatingSimpleTypeImpl {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NullableSimpleType(SimpleType delegate) {
        super(delegate);
        C18524p.m3840d(delegate, "delegate");
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final boolean isMarkedNullable() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.DelegatingSimpleType
    public final NullableSimpleType replaceDelegate(SimpleType delegate) {
        C18524p.m3840d(delegate, "delegate");
        return new NullableSimpleType(delegate);
    }
}
