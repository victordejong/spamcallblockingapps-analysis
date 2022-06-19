package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeArguments$1$erasedUpperBound$1.class */
public final class JavaTypeResolver$computeArguments$1$erasedUpperBound$1 extends AbstractC18526r implements Function0<KotlinType> {
    final /* synthetic */ JavaTypeAttributes $attr;
    final /* synthetic */ TypeConstructor $constructor;
    final /* synthetic */ TypeParameterDescriptor $parameter;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver$computeArguments$1$erasedUpperBound$1$1 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeArguments$1$erasedUpperBound$1$1.class */
    public static final class C195081 extends AbstractC18526r implements Function0<KotlinType> {
        final /* synthetic */ TypeConstructor $constructor;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C195081(TypeConstructor typeConstructor) {
            super(0);
            this.$constructor = typeConstructor;
        }

        @Override // kotlin.jvm.functions.Function0
        public final KotlinType invoke() {
            AbstractC19129g declarationDescriptor = this.$constructor.getDeclarationDescriptor();
            C18524p.m3851a(declarationDescriptor);
            SimpleType defaultType = declarationDescriptor.getDefaultType();
            C18524p.m3843b(defaultType, "constructor.declarationDescriptor!!.defaultType");
            return TypeUtilsKt.replaceArgumentsWithStarProjections(defaultType);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaTypeResolver$computeArguments$1$erasedUpperBound$1(TypeParameterDescriptor typeParameterDescriptor, JavaTypeAttributes javaTypeAttributes, TypeConstructor typeConstructor) {
        super(0);
        this.$parameter = typeParameterDescriptor;
        this.$attr = javaTypeAttributes;
        this.$constructor = typeConstructor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final KotlinType invoke() {
        TypeParameterDescriptor parameter = this.$parameter;
        C18524p.m3843b(parameter, "parameter");
        return JavaTypeResolverKt.getErasedUpperBound(parameter, this.$attr.getUpperBoundOfTypeParameter(), new C195081(this.$constructor));
    }
}
