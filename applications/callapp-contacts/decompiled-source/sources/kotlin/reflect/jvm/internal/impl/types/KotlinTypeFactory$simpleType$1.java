package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$simpleType$1.class */
public final class KotlinTypeFactory$simpleType$1 extends r implements Function1<KotlinTypeRefiner, SimpleType> {
    final /* synthetic */ g $annotations;
    final /* synthetic */ List<TypeProjection> $arguments;
    final /* synthetic */ TypeConstructor $constructor;
    final /* synthetic */ boolean $nullable;
    final /* synthetic */ KotlinTypeFactory this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KotlinTypeFactory$simpleType$1(KotlinTypeFactory kotlinTypeFactory, TypeConstructor typeConstructor, List<? extends TypeProjection> list, g gVar, boolean z) {
        super(1);
        this.this$0 = kotlinTypeFactory;
        this.$constructor = typeConstructor;
        this.$arguments = list;
        this.$annotations = gVar;
        this.$nullable = z;
    }

    public final SimpleType invoke(KotlinTypeRefiner refiner) {
        KotlinTypeFactory.ExpandedTypeOrRefinedConstructor refineConstructor;
        p.d(refiner, "refiner");
        refineConstructor = this.this$0.refineConstructor(this.$constructor, refiner, this.$arguments);
        if (refineConstructor == null) {
            return null;
        }
        SimpleType expandedType = refineConstructor.getExpandedType();
        if (expandedType != null) {
            return expandedType;
        }
        g gVar = this.$annotations;
        TypeConstructor refinedConstructor = refineConstructor.getRefinedConstructor();
        p.a(refinedConstructor);
        return KotlinTypeFactory.simpleType(gVar, refinedConstructor, this.$arguments, this.$nullable, refiner);
    }
}
