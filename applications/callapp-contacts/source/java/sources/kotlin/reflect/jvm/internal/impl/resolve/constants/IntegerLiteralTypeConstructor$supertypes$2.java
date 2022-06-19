package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$supertypes$2.class */
public final class IntegerLiteralTypeConstructor$supertypes$2 extends AbstractC18526r implements Function0<List<SimpleType>> {
    final /* synthetic */ IntegerLiteralTypeConstructor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntegerLiteralTypeConstructor$supertypes$2(IntegerLiteralTypeConstructor integerLiteralTypeConstructor) {
        super(0);
        this.this$0 = integerLiteralTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<SimpleType> invoke() {
        SimpleType simpleType;
        boolean isContainsOnlyUnsignedTypes;
        SimpleType defaultType = this.this$0.getBuiltIns().m2835a("Comparable").getDefaultType();
        C18524p.m3843b(defaultType, "builtIns.comparable.defaultType");
        Variance variance = Variance.IN_VARIANCE;
        simpleType = this.this$0.type;
        List<SimpleType> c = C18282n.m4166c(TypeSubstitutionKt.replace$default(defaultType, C18282n.m4176a(new TypeProjectionImpl(variance, simpleType)), null, 2, null));
        isContainsOnlyUnsignedTypes = this.this$0.isContainsOnlyUnsignedTypes();
        if (!isContainsOnlyUnsignedTypes) {
            List<SimpleType> list = c;
            SimpleType defaultType2 = this.this$0.getBuiltIns().m2835a("Number").getDefaultType();
            if (defaultType2 == null) {
                AbstractC18940g.m2819b(54);
            }
            list.add(defaultType2);
        }
        return c;
    }
}
