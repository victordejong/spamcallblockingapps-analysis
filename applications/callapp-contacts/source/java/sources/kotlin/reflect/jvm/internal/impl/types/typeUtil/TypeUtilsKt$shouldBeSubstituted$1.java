package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.types.StubType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariableTypeConstructorMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$shouldBeSubstituted$1.class */
public final class TypeUtilsKt$shouldBeSubstituted$1 extends AbstractC18526r implements Function1<UnwrappedType, Boolean> {
    public static final TypeUtilsKt$shouldBeSubstituted$1 INSTANCE = new TypeUtilsKt$shouldBeSubstituted$1();

    TypeUtilsKt$shouldBeSubstituted$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ Boolean invoke(UnwrappedType unwrappedType) {
        return Boolean.valueOf(invoke2(unwrappedType));
    }

    /* renamed from: invoke */
    public final boolean invoke2(UnwrappedType it2) {
        C18524p.m3840d(it2, "it");
        return (it2 instanceof StubType) || (it2.getConstructor() instanceof TypeVariableTypeConstructorMarker);
    }
}
