package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Set;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1.class */
final class TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1 extends r implements Function0<String> {
    final /* synthetic */ Set<SimpleType> $inputTypes;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1(Set<? extends SimpleType> set) {
        super(0);
        this.$inputTypes = set;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        return p.a("This collections cannot be empty! input types: ", (Object) n.a(this.$inputTypes, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63));
    }
}
