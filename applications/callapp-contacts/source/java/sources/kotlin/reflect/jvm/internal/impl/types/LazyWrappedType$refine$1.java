package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/LazyWrappedType$refine$1.class */
public final class LazyWrappedType$refine$1 extends AbstractC18526r implements Function0<KotlinType> {
    final /* synthetic */ KotlinTypeRefiner $kotlinTypeRefiner;
    final /* synthetic */ LazyWrappedType this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyWrappedType$refine$1(KotlinTypeRefiner kotlinTypeRefiner, LazyWrappedType lazyWrappedType) {
        super(0);
        this.$kotlinTypeRefiner = kotlinTypeRefiner;
        this.this$0 = lazyWrappedType;
    }

    @Override // kotlin.jvm.functions.Function0
    public final KotlinType invoke() {
        Function0 function0;
        KotlinTypeRefiner kotlinTypeRefiner = this.$kotlinTypeRefiner;
        function0 = this.this$0.computation;
        return kotlinTypeRefiner.refineType((KotlinType) function0.invoke());
    }
}
