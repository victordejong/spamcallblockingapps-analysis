package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1.class */
public final class KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1 extends AbstractC18526r implements Function1<KotlinTypeRefiner, SimpleType> {
    final /* synthetic */ AbstractC18983g $annotations;
    final /* synthetic */ List<TypeProjection> $arguments;
    final /* synthetic */ TypeConstructor $constructor;
    final /* synthetic */ AbstractC19834h $memberScope;
    final /* synthetic */ boolean $nullable;
    final /* synthetic */ KotlinTypeFactory this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1(KotlinTypeFactory kotlinTypeFactory, TypeConstructor typeConstructor, List<? extends TypeProjection> list, AbstractC18983g abstractC18983g, boolean z, AbstractC19834h abstractC19834h) {
        super(1);
        this.this$0 = kotlinTypeFactory;
        this.$constructor = typeConstructor;
        this.$arguments = list;
        this.$annotations = abstractC18983g;
        this.$nullable = z;
        this.$memberScope = abstractC19834h;
    }

    public final SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
        KotlinTypeFactory.ExpandedTypeOrRefinedConstructor refineConstructor;
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        refineConstructor = this.this$0.refineConstructor(this.$constructor, kotlinTypeRefiner, this.$arguments);
        if (refineConstructor == null) {
            return null;
        }
        SimpleType expandedType = refineConstructor.getExpandedType();
        if (expandedType != null) {
            return expandedType;
        }
        AbstractC18983g abstractC18983g = this.$annotations;
        TypeConstructor refinedConstructor = refineConstructor.getRefinedConstructor();
        C18524p.m3851a(refinedConstructor);
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(abstractC18983g, refinedConstructor, this.$arguments, this.$nullable, this.$memberScope);
    }
}
