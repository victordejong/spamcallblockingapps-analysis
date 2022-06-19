package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt$getErasedUpperBound$1.class */
public final class JavaTypeResolverKt$getErasedUpperBound$1 extends AbstractC18526r implements Function0<SimpleType> {
    final /* synthetic */ TypeParameterDescriptor $this_getErasedUpperBound;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaTypeResolverKt$getErasedUpperBound$1(TypeParameterDescriptor typeParameterDescriptor) {
        super(0);
        this.$this_getErasedUpperBound = typeParameterDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final SimpleType invoke() {
        SimpleType createErrorType = ErrorUtils.createErrorType("Can't compute erased upper bound of type parameter `" + this.$this_getErasedUpperBound + '`');
        C18524p.m3843b(createErrorType, "createErrorType(\"Can't compute erased upper bound of type parameter `$this`\")");
        return createErrorType;
    }
}
