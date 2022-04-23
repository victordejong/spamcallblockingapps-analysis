package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3$resultWithoutCycles$1.class */
final class AbstractTypeConstructor$supertypes$3$resultWithoutCycles$1 extends r implements Function1<TypeConstructor, Iterable<? extends KotlinType>> {
    final /* synthetic */ AbstractTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeConstructor$supertypes$3$resultWithoutCycles$1(AbstractTypeConstructor abstractTypeConstructor) {
        super(1);
        this.this$0 = abstractTypeConstructor;
    }

    public final Iterable<KotlinType> invoke(TypeConstructor it2) {
        Collection computeNeighbours;
        p.d(it2, "it");
        computeNeighbours = this.this$0.computeNeighbours(it2, false);
        return computeNeighbours;
    }
}
