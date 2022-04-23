package kotlin.reflect.jvm.internal.impl.types;

import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$2.class */
final class AbstractTypeConstructor$supertypes$2 extends r implements Function1<Boolean, AbstractTypeConstructor.Supertypes> {
    public static final AbstractTypeConstructor$supertypes$2 INSTANCE = new AbstractTypeConstructor$supertypes$2();

    AbstractTypeConstructor$supertypes$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ AbstractTypeConstructor.Supertypes invoke(Boolean bool) {
        return invoke(bool.booleanValue());
    }

    public final AbstractTypeConstructor.Supertypes invoke(boolean z) {
        return new AbstractTypeConstructor.Supertypes(n.a(ErrorUtils.ERROR_TYPE_FOR_LOOP_IN_SUPERTYPES));
    }
}
