package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1 */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1.class */
public final /* synthetic */ class C19991x702eebb8 extends C18521m implements Function2<KotlinType, KotlinType, Boolean> {
    public C19991x702eebb8(TypeIntersector typeIntersector) {
        super(2, typeIntersector);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
    public final String getName() {
        return "isStrictSupertype";
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final KDeclarationContainer getOwner() {
        return C18496ac.m3882b(TypeIntersector.class);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final String getSignature() {
        return "isStrictSupertype(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* synthetic */ Boolean invoke(KotlinType kotlinType, KotlinType kotlinType2) {
        return Boolean.valueOf(invoke2(kotlinType, kotlinType2));
    }

    /* renamed from: invoke */
    public final boolean invoke2(KotlinType p0, KotlinType p1) {
        boolean isStrictSupertype;
        C18524p.m3840d(p0, "p0");
        C18524p.m3840d(p1, "p1");
        isStrictSupertype = ((TypeIntersector) this.receiver).isStrictSupertype(p0, p1);
        return isStrictSupertype;
    }
}
