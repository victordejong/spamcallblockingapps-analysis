package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1 */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1.class */
public final /* synthetic */ class C19992xc97d8c34 extends C18521m implements Function2<KotlinType, KotlinType, Boolean> {
    public C19992xc97d8c34(NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl) {
        super(2, newKotlinTypeCheckerImpl);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
    public final String getName() {
        return "equalTypes";
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final KDeclarationContainer getOwner() {
        return C18496ac.m3882b(NewKotlinTypeCheckerImpl.class);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final String getSignature() {
        return "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* synthetic */ Boolean invoke(KotlinType kotlinType, KotlinType kotlinType2) {
        return Boolean.valueOf(invoke2(kotlinType, kotlinType2));
    }

    /* renamed from: invoke */
    public final boolean invoke2(KotlinType p0, KotlinType p1) {
        C18524p.m3840d(p0, "p0");
        C18524p.m3840d(p1, "p1");
        return ((NewKotlinTypeCheckerImpl) this.receiver).equalTypes(p0, p1);
    }
}
