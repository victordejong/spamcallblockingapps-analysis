package kotlin.reflect.jvm.internal.impl.types;

import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2.class */
final class AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2 extends AbstractC18526r implements Function1<KotlinType, C20128v> {
    final /* synthetic */ AbstractTypeConstructor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2(AbstractTypeConstructor abstractTypeConstructor) {
        super(1);
        this.this$0 = abstractTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ C20128v invoke(KotlinType kotlinType) {
        invoke2(kotlinType);
        return C20128v.f66529a;
    }

    /* renamed from: invoke */
    public final void invoke2(KotlinType it2) {
        C18524p.m3840d(it2, "it");
        this.this$0.reportSupertypeLoopError(it2);
    }
}
