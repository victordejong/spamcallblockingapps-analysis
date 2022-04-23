package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$supertypes$2.class */
public final class IntegerLiteralTypeConstructor$supertypes$2 extends r implements Function0<List<SimpleType>> {
    final /* synthetic */ IntegerLiteralTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntegerLiteralTypeConstructor$supertypes$2(IntegerLiteralTypeConstructor integerLiteralTypeConstructor) {
        super(0);
        this.this$0 = integerLiteralTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<SimpleType> invoke() {
        SimpleType simpleType;
        boolean isContainsOnlyUnsignedTypes;
        SimpleType defaultType = this.this$0.getBuiltIns().a("Comparable").getDefaultType();
        p.b(defaultType, "builtIns.comparable.defaultType");
        Variance variance = Variance.IN_VARIANCE;
        simpleType = this.this$0.type;
        List<SimpleType> c2 = n.c(TypeSubstitutionKt.replace$default(defaultType, n.a(new TypeProjectionImpl(variance, simpleType)), null, 2, null));
        isContainsOnlyUnsignedTypes = this.this$0.isContainsOnlyUnsignedTypes();
        if (!isContainsOnlyUnsignedTypes) {
            List<SimpleType> list = c2;
            SimpleType defaultType2 = this.this$0.getBuiltIns().a("Number").getDefaultType();
            if (defaultType2 == null) {
                g.b(54);
            }
            list.add(defaultType2);
        }
        return c2;
    }
}
