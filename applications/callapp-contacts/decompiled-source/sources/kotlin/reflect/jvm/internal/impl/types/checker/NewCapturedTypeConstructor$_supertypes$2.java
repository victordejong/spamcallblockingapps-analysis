package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor$_supertypes$2.class */
public final class NewCapturedTypeConstructor$_supertypes$2 extends r implements Function0<List<? extends UnwrappedType>> {
    final /* synthetic */ NewCapturedTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor$_supertypes$2(NewCapturedTypeConstructor newCapturedTypeConstructor) {
        super(0);
        this.this$0 = newCapturedTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends UnwrappedType> invoke() {
        Function0 function0;
        function0 = this.this$0.supertypesComputation;
        if (function0 == null) {
            return null;
        }
        return (List) function0.invoke();
    }
}
