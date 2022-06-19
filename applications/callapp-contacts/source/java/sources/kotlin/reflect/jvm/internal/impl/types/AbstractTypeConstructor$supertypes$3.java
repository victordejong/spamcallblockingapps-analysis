package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3.class */
public final class AbstractTypeConstructor$supertypes$3 extends AbstractC18526r implements Function1<AbstractTypeConstructor.Supertypes, C20128v> {
    final /* synthetic */ AbstractTypeConstructor this$0;

    /* renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3$2 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3$2.class */
    public static final class C199812 extends AbstractC18526r implements Function1<TypeConstructor, Iterable<? extends KotlinType>> {
        final /* synthetic */ AbstractTypeConstructor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C199812(AbstractTypeConstructor abstractTypeConstructor) {
            super(1);
            this.this$0 = abstractTypeConstructor;
        }

        public final Iterable<KotlinType> invoke(TypeConstructor it2) {
            Collection computeNeighbours;
            C18524p.m3840d(it2, "it");
            computeNeighbours = this.this$0.computeNeighbours(it2, true);
            return computeNeighbours;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3$3 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3$3.class */
    public static final class C199823 extends AbstractC18526r implements Function1<KotlinType, C20128v> {
        final /* synthetic */ AbstractTypeConstructor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C199823(AbstractTypeConstructor abstractTypeConstructor) {
            super(1);
            this.this$0 = abstractTypeConstructor;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ C20128v invoke(KotlinType kotlinType) {
            invoke2(kotlinType);
            return C20128v.f66529a;
        }

        /* renamed from: invoke */
        public final void invoke2(KotlinType it2) {
            C18524p.m3840d(it2, "it");
            this.this$0.reportScopesLoopError(it2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeConstructor$supertypes$3(AbstractTypeConstructor abstractTypeConstructor) {
        super(1);
        this.this$0 = abstractTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ C20128v invoke(AbstractTypeConstructor.Supertypes supertypes) {
        invoke2(supertypes);
        return C20128v.f66529a;
    }

    /* renamed from: invoke */
    public final void invoke2(AbstractTypeConstructor.Supertypes supertypes) {
        C18524p.m3840d(supertypes, "supertypes");
        Collection<KotlinType> mo2691a = this.this$0.getSupertypeLoopChecker().mo2691a(this.this$0, supertypes.getAllSupertypes(), new AbstractTypeConstructor$supertypes$3$resultWithoutCycles$1(this.this$0), new AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2(this.this$0));
        if (mo2691a.isEmpty()) {
            KotlinType defaultSupertypeIfEmpty = this.this$0.defaultSupertypeIfEmpty();
            List a = defaultSupertypeIfEmpty == null ? null : C18282n.m4176a(defaultSupertypeIfEmpty);
            List list = a;
            if (a == null) {
                list = C18297z.f63400a;
            }
            mo2691a = list;
        }
        if (this.this$0.getShouldReportCyclicScopeWithCompanionWarning()) {
            AbstractC19031aw supertypeLoopChecker = this.this$0.getSupertypeLoopChecker();
            AbstractTypeConstructor abstractTypeConstructor = this.this$0;
            supertypeLoopChecker.mo2691a(abstractTypeConstructor, mo2691a, new C199812(abstractTypeConstructor), new C199823(this.this$0));
        }
        AbstractTypeConstructor abstractTypeConstructor2 = this.this$0;
        List<KotlinType> list2 = null;
        if (mo2691a instanceof List) {
            list2 = (List) mo2691a;
        }
        List<KotlinType> list3 = list2;
        if (list2 == null) {
            list3 = C18282n.m4118h(mo2691a);
        }
        supertypes.setSupertypesWithoutCycles(abstractTypeConstructor2.processSupertypesWithoutCycles(list3));
    }
}
