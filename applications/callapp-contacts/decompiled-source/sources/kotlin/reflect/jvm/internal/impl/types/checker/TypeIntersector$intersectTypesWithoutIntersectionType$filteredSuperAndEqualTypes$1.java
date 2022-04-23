package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1.class */
final /* synthetic */ class TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1 extends m implements Function2<KotlinType, KotlinType, Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1(NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl) {
        super(2, newKotlinTypeCheckerImpl);
    }

    @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
    public final String getName() {
        return "equalTypes";
    }

    @Override // kotlin.jvm.internal.e
    public final KDeclarationContainer getOwner() {
        return ac.b(NewKotlinTypeCheckerImpl.class);
    }

    @Override // kotlin.jvm.internal.e
    public final String getSignature() {
        return "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* synthetic */ Boolean invoke(KotlinType kotlinType, KotlinType kotlinType2) {
        return Boolean.valueOf(invoke2(kotlinType, kotlinType2));
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final boolean invoke2(KotlinType p0, KotlinType p1) {
        p.d(p0, "p0");
        p.d(p1, "p1");
        return ((NewKotlinTypeCheckerImpl) this.receiver).equalTypes(p0, p1);
    }
}
