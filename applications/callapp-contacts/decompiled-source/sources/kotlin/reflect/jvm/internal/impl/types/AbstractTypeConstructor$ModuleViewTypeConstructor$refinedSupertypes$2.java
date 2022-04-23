package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$ModuleViewTypeConstructor$refinedSupertypes$2.class */
public final class AbstractTypeConstructor$ModuleViewTypeConstructor$refinedSupertypes$2 extends r implements Function0<List<? extends KotlinType>> {
    final /* synthetic */ AbstractTypeConstructor.ModuleViewTypeConstructor this$0;
    final /* synthetic */ AbstractTypeConstructor this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeConstructor$ModuleViewTypeConstructor$refinedSupertypes$2(AbstractTypeConstructor.ModuleViewTypeConstructor moduleViewTypeConstructor, AbstractTypeConstructor abstractTypeConstructor) {
        super(0);
        this.this$0 = moduleViewTypeConstructor;
        this.this$1 = abstractTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends KotlinType> invoke() {
        KotlinTypeRefiner kotlinTypeRefiner;
        kotlinTypeRefiner = this.this$0.kotlinTypeRefiner;
        return KotlinTypeRefinerKt.refineTypes(kotlinTypeRefiner, this.this$1.mo7371getSupertypes());
    }
}
