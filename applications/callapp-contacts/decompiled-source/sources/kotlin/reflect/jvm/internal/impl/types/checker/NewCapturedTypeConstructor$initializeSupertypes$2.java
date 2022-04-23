package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor$initializeSupertypes$2.class */
final class NewCapturedTypeConstructor$initializeSupertypes$2 extends r implements Function0<List<? extends UnwrappedType>> {
    final /* synthetic */ List<UnwrappedType> $supertypes;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NewCapturedTypeConstructor$initializeSupertypes$2(List<? extends UnwrappedType> list) {
        super(0);
        this.$supertypes = list;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends UnwrappedType> invoke() {
        return this.$supertypes;
    }
}
