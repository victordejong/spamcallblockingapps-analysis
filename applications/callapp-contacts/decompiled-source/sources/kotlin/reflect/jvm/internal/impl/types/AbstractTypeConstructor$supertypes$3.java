package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.v;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3.class */
public final class AbstractTypeConstructor$supertypes$3 extends r implements Function1<AbstractTypeConstructor.Supertypes, v> {
    final /* synthetic */ AbstractTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3$2  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3$2.class */
    public static final class AnonymousClass2 extends r implements Function1<TypeConstructor, Iterable<? extends KotlinType>> {
        final /* synthetic */ AbstractTypeConstructor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AbstractTypeConstructor abstractTypeConstructor) {
            super(1);
            this.this$0 = abstractTypeConstructor;
        }

        public final Iterable<KotlinType> invoke(TypeConstructor it2) {
            Collection computeNeighbours;
            p.d(it2, "it");
            computeNeighbours = this.this$0.computeNeighbours(it2, true);
            return computeNeighbours;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3$3  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3$3.class */
    public static final class AnonymousClass3 extends r implements Function1<KotlinType, v> {
        final /* synthetic */ AbstractTypeConstructor this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(AbstractTypeConstructor abstractTypeConstructor) {
            super(1);
            this.this$0 = abstractTypeConstructor;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ v invoke(KotlinType kotlinType) {
            invoke2(kotlinType);
            return v.f38654a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(KotlinType it2) {
            p.d(it2, "it");
            this.this$0.reportScopesLoopError(it2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeConstructor$supertypes$3(AbstractTypeConstructor abstractTypeConstructor) {
        super(1);
        this.this$0 = abstractTypeConstructor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ v invoke(AbstractTypeConstructor.Supertypes supertypes) {
        invoke2(supertypes);
        return v.f38654a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(AbstractTypeConstructor.Supertypes supertypes) {
        p.d(supertypes, "supertypes");
        List a2 = this.this$0.getSupertypeLoopChecker().a(this.this$0, supertypes.getAllSupertypes(), new AbstractTypeConstructor$supertypes$3$resultWithoutCycles$1(this.this$0), new AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2(this.this$0));
        List<KotlinType> list = null;
        if (a2.isEmpty()) {
            KotlinType defaultSupertypeIfEmpty = this.this$0.defaultSupertypeIfEmpty();
            List a3 = defaultSupertypeIfEmpty == null ? null : n.a(defaultSupertypeIfEmpty);
            z zVar = a3;
            if (a3 == null) {
                zVar = z.f36608a;
            }
            a2 = zVar;
        }
        if (this.this$0.getShouldReportCyclicScopeWithCompanionWarning()) {
            aw supertypeLoopChecker = this.this$0.getSupertypeLoopChecker();
            AbstractTypeConstructor abstractTypeConstructor = this.this$0;
            supertypeLoopChecker.a(abstractTypeConstructor, a2, new AnonymousClass2(abstractTypeConstructor), new AnonymousClass3(this.this$0));
        }
        AbstractTypeConstructor abstractTypeConstructor2 = this.this$0;
        if (a2 instanceof List) {
            list = (List) a2;
        }
        List<KotlinType> list2 = list;
        if (list == null) {
            list2 = n.h(a2);
        }
        supertypes.setSupertypesWithoutCycles(abstractTypeConstructor2.processSupertypesWithoutCycles(list2));
    }
}
