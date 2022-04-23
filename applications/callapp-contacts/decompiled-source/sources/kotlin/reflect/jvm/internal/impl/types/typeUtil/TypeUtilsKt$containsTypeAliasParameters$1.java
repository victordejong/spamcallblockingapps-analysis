package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$containsTypeAliasParameters$1.class */
public final class TypeUtilsKt$containsTypeAliasParameters$1 extends r implements Function1<UnwrappedType, Boolean> {
    public static final TypeUtilsKt$containsTypeAliasParameters$1 INSTANCE = new TypeUtilsKt$containsTypeAliasParameters$1();

    TypeUtilsKt$containsTypeAliasParameters$1() {
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
        return TypeUtilsKt.isTypeAliasParameter(declarationDescriptor);
    }
}
