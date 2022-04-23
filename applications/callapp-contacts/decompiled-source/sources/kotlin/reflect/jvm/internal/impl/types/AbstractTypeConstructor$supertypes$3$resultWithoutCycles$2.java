package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2.class */
final class AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2 extends r implements Function1<KotlinType, v> {
    final /* synthetic */ AbstractTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2(AbstractTypeConstructor abstractTypeConstructor) {
        super(1);
        this.this$0 = abstractTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ v invoke(KotlinType kotlinType) {
        invoke2(kotlinType);
        return v.f38654a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(KotlinType it2) {
        p.d(it2, "it");
        this.this$0.reportSupertypeLoopError(it2);
    }
}
