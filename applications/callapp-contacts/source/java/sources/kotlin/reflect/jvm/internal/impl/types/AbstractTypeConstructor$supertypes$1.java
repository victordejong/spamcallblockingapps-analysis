package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$1.class */
public final class AbstractTypeConstructor$supertypes$1 extends AbstractC18526r implements Function0<AbstractTypeConstructor.Supertypes> {
    final /* synthetic */ AbstractTypeConstructor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeConstructor$supertypes$1(AbstractTypeConstructor abstractTypeConstructor) {
        super(0);
        this.this$0 = abstractTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final AbstractTypeConstructor.Supertypes invoke() {
        return new AbstractTypeConstructor.Supertypes(this.this$0.computeSupertypes());
    }
}
