package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1.class */
public final class KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1 extends r implements Function1<KotlinTypeRefiner, SimpleType> {
    final /* synthetic */ g $annotations;
    final /* synthetic */ List<TypeProjection> $arguments;
    final /* synthetic */ TypeConstructor $constructor;
    final /* synthetic */ h $memberScope;
    final /* synthetic */ boolean $nullable;
    final /* synthetic */ KotlinTypeFactory this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1(KotlinTypeFactory kotlinTypeFactory, TypeConstructor typeConstructor, List<? extends TypeProjection> list, g gVar, boolean z, h hVar) {
        super(1);
        this.this$0 = kotlinTypeFactory;
        this.$constructor = typeConstructor;
        this.$arguments = list;
        this.$annotations = gVar;
        this.$nullable = z;
        this.$memberScope = hVar;
    }

    public final SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
        KotlinTypeFactory.ExpandedTypeOrRefinedConstructor refineConstructor;
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        refineConstructor = this.this$0.refineConstructor(this.$constructor, kotlinTypeRefiner, this.$arguments);
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
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(gVar, refinedConstructor, this.$arguments, this.$nullable, this.$memberScope);
    }
}
