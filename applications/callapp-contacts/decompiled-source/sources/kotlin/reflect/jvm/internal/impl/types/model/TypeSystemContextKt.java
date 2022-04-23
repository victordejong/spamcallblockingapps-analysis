package kotlin.reflect.jvm.internal.impl.types.model;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemContextKt.class */
public final class TypeSystemContextKt {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/model/TypeSystemContextKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Variance.values().length];
            iArr[Variance.INVARIANT.ordinal()] = 1;
            iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final TypeVariance convertVariance(Variance variance) {
        p.d(variance, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
        if (i == 1) {
            return TypeVariance.INV;
        }
        if (i == 2) {
            return TypeVariance.IN;
        }
        if (i == 3) {
            return TypeVariance.OUT;
        }
        throw new NoWhenBranchMatchedException();
    }
}
