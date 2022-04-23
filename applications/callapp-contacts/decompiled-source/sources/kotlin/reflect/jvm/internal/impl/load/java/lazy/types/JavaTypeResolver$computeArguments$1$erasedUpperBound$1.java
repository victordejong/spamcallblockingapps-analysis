package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeArguments$1$erasedUpperBound$1.class */
public final class JavaTypeResolver$computeArguments$1$erasedUpperBound$1 extends r implements Function0<KotlinType> {
    final /* synthetic */ JavaTypeAttributes $attr;
    final /* synthetic */ TypeConstructor $constructor;
    final /* synthetic */ TypeParameterDescriptor $parameter;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver$computeArguments$1$erasedUpperBound$1$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeArguments$1$erasedUpperBound$1$1.class */
    public static final class AnonymousClass1 extends r implements Function0<KotlinType> {
        final /* synthetic */ TypeConstructor $constructor;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TypeConstructor typeConstructor) {
            super(0);
            this.$constructor = typeConstructor;
        }

        @Override // kotlin.jvm.functions.Function0
        public final KotlinType invoke() {
            g declarationDescriptor = this.$constructor.getDeclarationDescriptor();
            p.a(declarationDescriptor);
            SimpleType defaultType = declarationDescriptor.getDefaultType();
            p.b(defaultType, "constructor.declarationDescriptor!!.defaultType");
            return TypeUtilsKt.replaceArgumentsWithStarProjections(defaultType);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        p.b(parameter, "parameter");
        return JavaTypeResolverKt.getErasedUpperBound(parameter, this.$attr.getUpperBoundOfTypeParameter(), new AnonymousClass1(this.$constructor));
    }
}
