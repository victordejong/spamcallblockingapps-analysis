package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$requiresTypeAliasExpansion$1.class */
public final class TypeUtilsKt$requiresTypeAliasExpansion$1 extends r implements Function1<UnwrappedType, Boolean> {
    public static final TypeUtilsKt$requiresTypeAliasExpansion$1 INSTANCE = new TypeUtilsKt$requiresTypeAliasExpansion$1();

    TypeUtilsKt$requiresTypeAliasExpansion$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ Boolean invoke(UnwrappedType unwrappedType) {
        return Boolean.valueOf(invoke2(unwrappedType));
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final boolean invoke2(UnwrappedType it2) {
        p.d(it2, "it");
        g declarationDescriptor = it2.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            return false;
        }
        return (declarationDescriptor instanceof ax) || (declarationDescriptor instanceof TypeParameterDescriptor);
    }
}
