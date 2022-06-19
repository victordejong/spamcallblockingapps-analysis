package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/StarProjectionImpl$_type$2.class */
public final class StarProjectionImpl$_type$2 extends AbstractC18526r implements Function0<KotlinType> {
    final /* synthetic */ StarProjectionImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StarProjectionImpl$_type$2(StarProjectionImpl starProjectionImpl) {
        super(0);
        this.this$0 = starProjectionImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final KotlinType invoke() {
        TypeParameterDescriptor typeParameterDescriptor;
        typeParameterDescriptor = this.this$0.typeParameter;
        return StarProjectionImplKt.starProjectionType(typeParameterDescriptor);
    }
}
