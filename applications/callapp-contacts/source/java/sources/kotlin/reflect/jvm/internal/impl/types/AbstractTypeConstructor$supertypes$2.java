package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$2.class */
public final class AbstractTypeConstructor$supertypes$2 extends AbstractC18526r implements Function1<Boolean, AbstractTypeConstructor.Supertypes> {
    public static final AbstractTypeConstructor$supertypes$2 INSTANCE = new AbstractTypeConstructor$supertypes$2();

    AbstractTypeConstructor$supertypes$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* synthetic */ AbstractTypeConstructor.Supertypes invoke(Boolean bool) {
        return invoke(bool.booleanValue());
    }

    public final AbstractTypeConstructor.Supertypes invoke(boolean z) {
        return new AbstractTypeConstructor.Supertypes(C18282n.m4176a(ErrorUtils.ERROR_TYPE_FOR_LOOP_IN_SUPERTYPES));
    }
}
